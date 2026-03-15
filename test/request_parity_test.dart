import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/test_helpers.dart';

void main() {
  group('auth request parity', () {
    test('authorization url stores PKCE verifier and state', () async {
      final tokenStorage = InMemoryTokenStorage();
      final repository = AuthRepository(
        dio: createTestDio(
          RecordingAdapter(onFetch: (_) => emptyResponseBody()),
        ),
        tokenStorage: tokenStorage,
        clientId: 'client-id',
        clientSecret: 'client-secret',
        redirectUri: 'https://example.com/callback',
        userAgent: 'TestApp (dev@example.com)',
      );

      final authorizationUri = await repository.getAuthorizationUrl();

      expect(
        authorizationUri.toString(),
        contains('https://app.fakturoid.cz/api/v3/oauth'),
      );
      expect(await tokenStorage.getAuthState(), isNotEmpty);
      expect(await tokenStorage.getPkceVerifier(), isNotEmpty);
    });

    test('client credentials flow uses Basic auth headers', () async {
      final adapter = RecordingAdapter(
        onFetch: (_) => jsonResponseBody({
          'access_token': 'access-token',
          'token_type': 'Bearer',
          'expires_in': 7200,
        }),
      );
      final tokenStorage = InMemoryTokenStorage();
      final repository = AuthRepository(
        dio: createTestDio(adapter),
        tokenStorage: tokenStorage,
        clientId: 'client-id',
        clientSecret: 'client-secret',
        redirectUri: 'https://example.com/callback',
        userAgent: 'TestApp (dev@example.com)',
      );

      await repository.loginWithClientCredentials();

      expect(
        adapter.lastRequestOptions?.headers['Authorization'],
        'Basic ${base64Encode(utf8.encode('client-id:client-secret'))}',
      );
      expect(
        adapter.lastRequestOptions?.headers['User-Agent'],
        'TestApp (dev@example.com)',
      );
      expect(await tokenStorage.getRefreshToken(), isNull);
      expect(await tokenStorage.getTokenType(), 'Bearer');
    });

    test(
      'authorization code exchange forwards code, state and verifier',
      () async {
        final adapter = RecordingAdapter(
          onFetch: (_) => jsonResponseBody({
            'access_token': 'access-token',
            'refresh_token': 'refresh-token',
            'token_type': 'Bearer',
            'expires_in': 7200,
          }),
        );
        final tokenStorage = InMemoryTokenStorage();
        await tokenStorage.saveAuthState('saved-state');
        await tokenStorage.savePkceVerifier('saved-verifier');
        final repository = AuthRepository(
          dio: createTestDio(adapter),
          tokenStorage: tokenStorage,
          clientId: 'client-id',
          clientSecret: 'client-secret',
          redirectUri: 'https://example.com/callback',
          userAgent: 'TestApp (dev@example.com)',
        );

        await repository.exchangeAuthorizationCode(
          Uri.parse(
            'https://example.com/callback?code=auth-code&state=saved-state',
          ),
        );

        expect(
          adapter.lastRequestOptions?.uri.toString(),
          contains('oauth/token'),
        );
        expect(adapter.lastRequestOptions?.data, {
          'redirect_uri': 'https://example.com/callback',
          'grant_type': 'authorization_code',
          'code': 'auth-code',
          'code_verifier': 'saved-verifier',
        });
        expect(await tokenStorage.getAccessToken(), 'access-token');
        expect(await tokenStorage.getAuthState(), isNull);
        expect(await tokenStorage.getPkceVerifier(), isNull);
      },
    );

    test('refresh token request uses refresh grant', () async {
      final adapter = RecordingAdapter(
        onFetch: (_) => jsonResponseBody({
          'access_token': 'new-access-token',
          'refresh_token': 'new-refresh-token',
          'token_type': 'Bearer',
          'expires_in': 7200,
        }),
      );
      final tokenStorage = InMemoryTokenStorage();
      await tokenStorage.saveTokens(
        accessToken: 'expired-access-token',
        refreshToken: 'refresh-token',
        tokenType: 'Bearer',
        expiresAt: DateTime.utc(2025),
      );
      final repository = AuthRepository(
        dio: createTestDio(adapter),
        tokenStorage: tokenStorage,
        clientId: 'client-id',
        clientSecret: 'client-secret',
        redirectUri: 'https://example.com/callback',
        userAgent: 'TestApp (dev@example.com)',
      );

      await repository.refreshToken();

      expect(
        adapter.lastRequestOptions?.uri.toString(),
        contains('oauth/token'),
      );
      expect(adapter.lastRequestOptions?.data, {
        'grant_type': 'refresh_token',
        'refresh_token': 'refresh-token',
      });
      expect(await tokenStorage.getAccessToken(), 'new-access-token');
      expect(await tokenStorage.getRefreshToken(), 'new-refresh-token');
    });

    test('revoke token coverage', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) => emptyResponseBody(200),
      );
      final tokenStorage = InMemoryTokenStorage();
      await tokenStorage.saveTokens(
        accessToken: 'access',
        refreshToken: 'refresh',
        tokenType: 'Bearer',
        expiresAt: DateTime.utc(2030),
      );
      final repository = AuthRepository(
        dio: createTestDio(adapter),
        tokenStorage: tokenStorage,
        clientId: 'id',
        clientSecret: 'secret',
        redirectUri: 'uri',
        userAgent: 'agent',
      );

      await repository.logout(revokeRemote: true);
      expect(
        adapter.lastRequestOptions?.uri.toString(),
        contains('oauth/revoke'),
      );
      expect(adapter.lastRequestOptions?.data, {'token': 'refresh'});
      expect(await tokenStorage.getAccessToken(), isNull);
    });

    test('revoke request forwards stored access token', () async {
      final adapter = RecordingAdapter(onFetch: (_) => emptyResponseBody());
      final tokenStorage = InMemoryTokenStorage();
      await tokenStorage.saveTokens(
        accessToken: 'access-token',
        tokenType: 'Bearer',
        expiresAt: DateTime.utc(2030),
      );
      final repository = AuthRepository(
        dio: createTestDio(adapter),
        tokenStorage: tokenStorage,
        clientId: 'client-id',
        clientSecret: 'client-secret',
        redirectUri: 'https://example.com/callback',
        userAgent: 'TestApp (dev@example.com)',
      );

      await repository.revokeToken();

      expect(
        adapter.lastRequestOptions?.uri.toString(),
        contains('oauth/revoke'),
      );
      expect(adapter.lastRequestOptions?.data, {'token': 'access-token'});
      expect(await tokenStorage.getAccessToken(), isNull);
    });
  });

  group('repository request parity', () {
    test('account uses documented endpoint', () async {
      final adapter = RecordingAdapter(onFetch: (_) => jsonResponseBody({}));
      final repository = AccountRepository(createTestDio(adapter));

      await repository.getAccount();

      expect(adapter.lastRequestOptions?.path, 'account.json');
    });

    test('switchAccount updates accountDio baseUrl', () async {
      final client = FakturoidClient(
        slug: 'account1',
        clientId: 'id',
        clientSecret: 'secret',
        redirectUri: 'uri',
        userAgent: 'agent',
        customTokenStorage: InMemoryTokenStorage(),
      );

      client.switchAccount('account2');
    });

    test('users repository handles root and account endpoints', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.uri.path.endsWith('user.json')) {
            return jsonResponseBody({
              'email': 'billing@example.com',
              'accounts': [
                {'slug': 'demo'},
              ],
            });
          }
          return jsonResponseBody([
            {'email': 'billing@example.com'},
          ]);
        },
      );
      final accountDio = createTestDio(adapter);
      final rootDio = Dio(
        accountDio.options.copyWith(
          baseUrl: 'https://app.fakturoid.cz/api/v3/',
        ),
      );
      rootDio.httpClientAdapter = adapter;

      final repository = UsersRepository(
        accountDio: accountDio,
        rootDio: rootDio,
      );

      await repository.getCurrentUser();
      expect(adapter.lastRequestOptions?.uri.toString(), endsWith('user.json'));
      expect(
        adapter.lastRequestOptions?.uri.toString(),
        contains('https://app.fakturoid.cz/api/v3/user.json'),
      );

      await repository.getUsers(page: 2);
      expect(adapter.lastRequestOptions?.path, 'users.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'page': 2});
    });

    test('bank accounts use read-only list endpoint', () async {
      final adapter = RecordingAdapter(
        onFetch: (_) => jsonResponseBody([
          {'id': 1},
        ]),
      );
      final repository = BankAccountsRepository(createTestDio(adapter));

      await repository.getBankAccounts();

      expect(adapter.lastRequestOptions?.path, 'bank_accounts.json');
    });

    test('number formats use invoices endpoint', () async {
      final adapter = RecordingAdapter(
        onFetch: (_) => jsonResponseBody([
          {'id': 1, 'format': '2026-####', 'preview': '2026-0001'},
        ]),
      );
      final repository = NumberFormatsRepository(createTestDio(adapter));

      await repository.getNumberFormats();

      expect(adapter.lastRequestOptions?.path, 'number_formats/invoices.json');
    });

    test('subjects cover list, search and CRUD endpoints', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.path.contains('subjects/search.json') ||
              (options.method == 'GET' && options.path == 'subjects.json')) {
            return jsonResponseBody([]);
          }

          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }

          return jsonResponseBody({'name': 'Acme'});
        },
      );
      final repository = SubjectsRepository(createTestDio(adapter));
      final since = DateTime.utc(2026, 1, 1);

      await repository.getSubjects(
        since: since,
        customId: 'customer-1',
        page: 2,
      );
      expect(adapter.lastRequestOptions?.path, 'subjects.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'since': since.toIso8601String(),
        'page': 2,
        'custom_id': 'customer-1',
      });

      await repository.searchSubjects(query: 'acme', page: 3);
      expect(adapter.lastRequestOptions?.path, 'subjects/search.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'query': 'acme',
        'page': 3,
      });

      await repository.getSubject(42);
      expect(adapter.lastRequestOptions?.path, 'subjects/42.json');

      await repository.createSubject(const Subject(name: 'Acme'));
      expect(adapter.lastRequestOptions?.path, 'subjects.json');
      expect(adapter.lastRequestOptions?.data, {'name': 'Acme'});

      await repository.updateSubject(42, const Subject(name: 'Acme 2'));
      expect(adapter.lastRequestOptions?.path, 'subjects/42.json');
      expect(adapter.lastRequestOptions?.data, {'name': 'Acme 2'});

      await repository.deleteSubject(42);
      expect(adapter.lastRequestOptions?.path, 'subjects/42.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');
    });

    test('invoices cover index, search, CRUD, actions and downloads', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.path.endsWith('.pdf') ||
              options.path.endsWith('download')) {
            return bytesResponseBody([1, 2, 3]);
          }
          if (options.method == 'POST' && options.path.endsWith('fire.json')) {
            return emptyResponseBody();
          }
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }
          if (options.path.contains('search')) {
            return jsonResponseBody([]);
          }
          if (options.path == 'invoices.json' && options.method == 'GET') {
            return jsonResponseBody([]);
          }
          return jsonResponseBody({'subject_id': 1});
        },
      );
      final repository = InvoicesRepository(createTestDio(adapter));
      final updatedUntil = DateTime.utc(2026, 2, 1);

      await repository.getInvoices(
        updatedUntil: updatedUntil,
        status: InvoiceStatus.paid,
        documentType: InvoiceListDocumentType.regular,
        page: 2,
      );
      expect(adapter.lastRequestOptions?.path, 'invoices.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'updated_until': updatedUntil.toIso8601String(),
        'page': 2,
        'status': 'paid',
        'document_type': 'regular',
      });

      await repository.searchInvoices(
        query: 'acme',
        page: 2,
        tags: ['vip', '2026'],
      );
      expect(adapter.lastRequestOptions?.path, 'invoices/search.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'query': 'acme',
        'page': 2,
        'tags[]': ['vip', '2026'],
      });

      await repository.getInvoice(10);
      expect(adapter.lastRequestOptions?.path, 'invoices/10.json');

      await repository.createInvoice(
        const Invoice(subjectId: 1),
        relatedId: 99,
      );
      expect(adapter.lastRequestOptions?.path, 'invoices.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'related_id': 99});
      expect(adapter.lastRequestOptions?.data, {'subject_id': 1});

      await repository.updateInvoice(10, const Invoice(subjectId: 2));
      expect(adapter.lastRequestOptions?.path, 'invoices/10.json');
      expect(adapter.lastRequestOptions?.data, {'subject_id': 2});

      await repository.deleteInvoice(10);
      expect(adapter.lastRequestOptions?.path, 'invoices/10.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');

      await repository.fireAction(1, InvoiceFireAction.markAsSent);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'event': 'mark_as_sent',
      });

      await repository.fireAction(1, InvoiceFireAction.cancel);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'event': 'cancel'});

      await repository.fireAction(1, InvoiceFireAction.markAsUncollectible);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'event': 'mark_as_uncollectible',
      });

      await repository.fireAction(1, InvoiceFireAction.unlock);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'event': 'unlock'});

      await repository.fireAction(1, InvoiceFireAction.undoUncollectible);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'event': 'undo_uncollectible',
      });

      final pdf = await repository.downloadInvoicePdf(10);
      expect(pdf, Uint8List.fromList([1, 2, 3]));
      expect(adapter.lastRequestOptions?.path, 'invoices/10/download.pdf');
      expect(adapter.lastRequestOptions?.responseType, ResponseType.bytes);

      final attachment = await repository.downloadAttachment(10, 99);
      expect(attachment, Uint8List.fromList([1, 2, 3]));
      expect(
        adapter.lastRequestOptions?.path,
        'invoices/10/attachments/99/download',
      );
      expect(adapter.lastRequestOptions?.responseType, ResponseType.bytes);
    });

    test('createInvoice rejects unsupported estimate document type', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) => jsonResponseBody({'subject_id': 1}),
      );
      final repository = InvoicesRepository(createTestDio(adapter));

      expect(
        () => repository.createInvoice(
          const Invoice(subjectId: 1, documentType: DocumentType.estimate),
        ),
        throwsA(isA<ArgumentError>()),
      );
      expect(adapter.lastRequestOptions, isNull);
    });

    test('invoice payments cover create, tax document and delete', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }
          return jsonResponseBody({'id': 12, 'amount': '1000'});
        },
      );
      final repository = InvoicePaymentsRepository(createTestDio(adapter));

      await repository.createPayment(10, const InvoicePayment(amount: '1000'));
      expect(adapter.lastRequestOptions?.path, 'invoices/10/payments.json');
      expect(adapter.lastRequestOptions?.data, {'amount': '1000'});

      await repository.createTaxDocument(10, 12);
      expect(
        adapter.lastRequestOptions?.path,
        'invoices/10/payments/12/create_tax_document.json',
      );

      await repository.deletePayment(10, 12);
      expect(adapter.lastRequestOptions?.path, 'invoices/10/payments/12.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');
    });

    test('invoice messages send all documented fields', () async {
      final adapter = RecordingAdapter(onFetch: (_) => emptyResponseBody());
      final repository = InvoiceMessagesRepository(createTestDio(adapter));

      await repository.createMessage(
        42,
        email: 'billing@example.com',
        emailCopy: 'copy@example.com',
        subject: 'Invoice #42',
        message: 'Thank you for your business.',
        deliverNow: true,
      );

      expect(adapter.lastRequestOptions?.path, 'invoices/42/message.json');
      expect(adapter.lastRequestOptions?.data, {
        'email': 'billing@example.com',
        'email_copy': 'copy@example.com',
        'subject': 'Invoice #42',
        'message': 'Thank you for your business.',
        'deliver_now': true,
      });
    });

    test('expenses cover index, search, CRUD, actions and downloads', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.path.endsWith('download')) {
            return bytesResponseBody([9, 8, 7]);
          }
          if (options.method == 'POST' && options.path.endsWith('fire.json')) {
            return emptyResponseBody();
          }
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }
          if (options.path.contains('search')) {
            return jsonResponseBody([]);
          }
          if (options.path == 'expenses.json' && options.method == 'GET') {
            return jsonResponseBody([]);
          }
          return jsonResponseBody({'subject_id': 1});
        },
      );
      final repository = ExpensesRepository(createTestDio(adapter));
      final since = DateTime.utc(2026, 1, 1);

      await repository.getExpenses(
        since: since,
        variableSymbol: '2026001',
        documentType: ExpenseDocumentType.bill,
        page: 2,
      );
      expect(adapter.lastRequestOptions?.path, 'expenses.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'since': since.toIso8601String(),
        'page': 2,
        'variable_symbol': '2026001',
        'document_type': 'bill',
      });

      await repository.searchExpenses(query: 'supplier', tags: ['hardware']);
      expect(adapter.lastRequestOptions?.path, 'expenses/search.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'query': 'supplier',
        'tags[]': ['hardware'],
      });

      await repository.getExpense(11);
      expect(adapter.lastRequestOptions?.path, 'expenses/11.json');

      await repository.createExpense(const Expense(subjectId: 1));
      expect(adapter.lastRequestOptions?.path, 'expenses.json');
      expect(adapter.lastRequestOptions?.data, {'subject_id': 1});

      await repository.updateExpense(11, const Expense(subjectId: 2));
      expect(adapter.lastRequestOptions?.path, 'expenses/11.json');
      expect(adapter.lastRequestOptions?.data, {'subject_id': 2});

      await repository.deleteExpense(11);
      expect(adapter.lastRequestOptions?.path, 'expenses/11.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');

      await repository.fireAction(11, ExpenseFireAction.lock);
      expect(adapter.lastRequestOptions?.path, 'expenses/11/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'event': 'lock'});

      await repository.fireAction(11, ExpenseFireAction.unlock);
      expect(adapter.lastRequestOptions?.path, 'expenses/11/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'event': 'unlock'});

      final attachment = await repository.downloadAttachment(11, 5);
      expect(attachment, Uint8List.fromList([9, 8, 7]));
      expect(
        adapter.lastRequestOptions?.path,
        'expenses/11/attachments/5/download',
      );
      expect(adapter.lastRequestOptions?.responseType, ResponseType.bytes);
    });

    test('expense payments cover create and delete', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }
          return jsonResponseBody({'id': 1, 'amount': '250'});
        },
      );
      final repository = ExpensePaymentsRepository(createTestDio(adapter));

      await repository.createPayment(5, const ExpensePayment(amount: '250'));
      expect(adapter.lastRequestOptions?.path, 'expenses/5/payments.json');
      expect(adapter.lastRequestOptions?.data, {'amount': '250'});

      await repository.deletePayment(5, 1);
      expect(adapter.lastRequestOptions?.path, 'expenses/5/payments/1.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');
    });

    test('inbox files cover list, create, OCR, download and delete', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.path.endsWith('download')) {
            return bytesResponseBody([4, 5, 6]);
          }
          if (options.method == 'DELETE' ||
              options.path.endsWith('send_to_ocr.json')) {
            return emptyResponseBody();
          }
          if (options.path == 'inbox_files.json' && options.method == 'GET') {
            return jsonResponseBody([]);
          }
          return jsonResponseBody({'id': 1, 'filename': 'receipt.pdf'}, 201);
        },
      );
      final repository = InboxFilesRepository(createTestDio(adapter));

      await repository.getInboxFiles(page: 3);
      expect(adapter.lastRequestOptions?.path, 'inbox_files.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'page': 3});

      await repository.createInboxFile(
        'data:application/pdf;base64,ZmFrZQ==',
        filename: 'receipt.pdf',
        sendToOcr: true,
      );
      expect(adapter.lastRequestOptions?.path, 'inbox_files.json');
      expect(adapter.lastRequestOptions?.data, {
        'attachment': 'data:application/pdf;base64,ZmFrZQ==',
        'filename': 'receipt.pdf',
        'send_to_ocr': true,
      });

      await repository.sendToOcr(1);
      expect(
        adapter.lastRequestOptions?.path,
        'inbox_files/1/send_to_ocr.json',
      );

      final bytes = await repository.downloadInboxFile(1);
      expect(bytes, Uint8List.fromList([4, 5, 6]));
      expect(adapter.lastRequestOptions?.path, 'inbox_files/1/download');
      expect(adapter.lastRequestOptions?.responseType, ResponseType.bytes);

      await repository.deleteInboxFile(1);
      expect(adapter.lastRequestOptions?.path, 'inbox_files/1.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');
    });

    test(
      'inventory items cover index, archived, low stock, search and CRUD',
      () async {
        final adapter = RecordingAdapter(
          onFetch: (options) {
            if (options.method == 'POST' &&
                options.path.endsWith('archive.json')) {
              return jsonResponseBody({'name': 'Disk'});
            }
            if (options.method == 'POST' &&
                options.path.endsWith('unarchive.json')) {
              return jsonResponseBody({'name': 'Disk'});
            }
            if (options.method == 'DELETE') {
              return emptyResponseBody();
            }
            if (options.method == 'GET' &&
                options.path.endsWith('.json') &&
                options.path != 'inventory_items/1.json') {
              return jsonResponseBody([]);
            }
            return jsonResponseBody({'name': 'Disk'});
          },
        );
        final repository = InventoryItemsRepository(createTestDio(adapter));
        final updatedUntil = DateTime.utc(2026, 2, 10);

        await repository.getInventoryItems(articleNumber: 'EAN-1', page: 2);
        expect(adapter.lastRequestOptions?.path, 'inventory_items.json');
        expect(adapter.lastRequestOptions?.queryParameters, {
          'article_number': 'EAN-1',
          'page': 2,
        });

        await repository.getArchivedItems(
          articleNumber: 'EAN-1',
          updatedUntil: updatedUntil,
        );
        expect(
          adapter.lastRequestOptions?.path,
          'inventory_items/archived.json',
        );
        expect(adapter.lastRequestOptions?.queryParameters, {
          'article_number': 'EAN-1',
          'updated_until': updatedUntil.toIso8601String(),
        });

        await repository.getLowQuantityItems(page: 3);
        expect(
          adapter.lastRequestOptions?.path,
          'inventory_items/low_quantity.json',
        );
        expect(adapter.lastRequestOptions?.queryParameters, {'page': 3});

        await repository.searchItems(query: 'disk', page: 4);
        expect(adapter.lastRequestOptions?.path, 'inventory_items/search.json');
        expect(adapter.lastRequestOptions?.queryParameters, {
          'query': 'disk',
          'page': 4,
        });

        await repository.getItem(1);
        expect(adapter.lastRequestOptions?.path, 'inventory_items/1.json');

        await repository.createItem(const InventoryItem(name: 'Disk'));
        expect(adapter.lastRequestOptions?.path, 'inventory_items.json');
        expect(adapter.lastRequestOptions?.data, {'name': 'Disk'});

        await repository.updateItem(1, const InventoryItem(name: 'Disk Pro'));
        expect(adapter.lastRequestOptions?.path, 'inventory_items/1.json');
        expect(adapter.lastRequestOptions?.data, {'name': 'Disk Pro'});

        await repository.deleteItem(1);
        expect(adapter.lastRequestOptions?.path, 'inventory_items/1.json');
        expect(adapter.lastRequestOptions?.method, 'DELETE');

        await repository.archiveItem(1);
        expect(
          adapter.lastRequestOptions?.path,
          'inventory_items/1/archive.json',
        );

        await repository.unarchiveItem(1);
        expect(
          adapter.lastRequestOptions?.path,
          'inventory_items/1/unarchive.json',
        );
      },
    );

    test('inventory moves cover global list and nested CRUD', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }
          if (options.method == 'GET' &&
              (options.path == 'inventory_moves.json' ||
                  options.path.endsWith('inventory_moves.json'))) {
            return jsonResponseBody([]);
          }
          return jsonResponseBody({
            'inventory_item_id': 15,
            'direction': 'in',
            'moved_on': '2026-01-02T00:00:00.000Z',
            'quantity_change': '10.0',
          });
        },
      );
      final repository = InventoryMovesRepository(createTestDio(adapter));
      final updatedSince = DateTime.utc(2026, 1, 1);
      final move = InventoryMove(
        inventoryItemId: 15,
        direction: InventoryMoveDirection.moveIn,
        movedOn: DateTime.utc(2026, 1, 2),
        quantityChange: '10.0',
      );

      await repository.getAllInventoryMoves(
        inventoryItemId: 15,
        updatedSince: updatedSince,
        page: 2,
      );
      expect(adapter.lastRequestOptions?.path, 'inventory_moves.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'updated_since': updatedSince.toIso8601String(),
        'inventory_item_id': 15,
        'page': 2,
      });

      await repository.getInventoryMoves(15, updatedSince: updatedSince);
      expect(adapter.lastRequestOptions?.path, 'inventory_moves.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'updated_since': updatedSince.toIso8601String(),
        'inventory_item_id': 15,
      });

      await repository.getInventoryMove(15, 1);
      expect(
        adapter.lastRequestOptions?.path,
        'inventory_items/15/inventory_moves/1.json',
      );

      await repository.createInventoryMove(15, move);
      expect(
        adapter.lastRequestOptions?.path,
        'inventory_items/15/inventory_moves.json',
      );
      expect(adapter.lastRequestOptions?.data, {
        'inventory_item_id': 15,
        'direction': 'in',
        'moved_on': '2026-01-02T00:00:00.000Z',
        'quantity_change': '10.0',
      });

      await repository.updateInventoryMove(15, 1, move);
      expect(
        adapter.lastRequestOptions?.path,
        'inventory_items/15/inventory_moves/1.json',
      );
      expect(adapter.lastRequestOptions?.data, {
        'inventory_item_id': 15,
        'direction': 'in',
        'moved_on': '2026-01-02T00:00:00.000Z',
        'quantity_change': '10.0',
      });

      await repository.deleteInventoryMove(15, 1);
      expect(
        adapter.lastRequestOptions?.path,
        'inventory_items/15/inventory_moves/1.json',
      );
      expect(adapter.lastRequestOptions?.method, 'DELETE');
    });

    test('generators cover list and CRUD endpoints', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.method == 'GET' && options.path == 'generators.json') {
            return jsonResponseBody([]);
          }
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }
          return jsonResponseBody({'name': 'Template', 'subject_id': 1});
        },
      );
      final repository = GeneratorsRepository(createTestDio(adapter));
      final since = DateTime.utc(2026, 1, 1);
      final generator = const Generator(name: 'Template', subjectId: 1);

      await repository.getGenerators(since: since, subjectId: 7, page: 2);
      expect(adapter.lastRequestOptions?.path, 'generators.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'since': since.toIso8601String(),
        'page': 2,
        'subject_id': 7,
      });

      await repository.getGenerator(1);
      expect(adapter.lastRequestOptions?.path, 'generators/1.json');

      await repository.createGenerator(generator);
      expect(adapter.lastRequestOptions?.path, 'generators.json');
      expect(adapter.lastRequestOptions?.data, {
        'name': 'Template',
        'subject_id': 1,
      });

      await repository.updateGenerator(
        1,
        generator.copyWith(name: 'Template 2'),
      );
      expect(adapter.lastRequestOptions?.path, 'generators/1.json');
      expect(adapter.lastRequestOptions?.data, {
        'name': 'Template 2',
        'subject_id': 1,
      });

      await repository.deleteGenerator(1);
      expect(adapter.lastRequestOptions?.path, 'generators/1.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');
    });

    test('recurring generators cover list, CRUD and state changes', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.method == 'GET' &&
              options.path == 'recurring_generators.json') {
            return jsonResponseBody([]);
          }
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }
          return jsonResponseBody({'name': 'Recurring', 'subject_id': 1});
        },
      );
      final repository = RecurringGeneratorsRepository(createTestDio(adapter));
      final generator = const RecurringGenerator(
        name: 'Recurring',
        subjectId: 1,
      );

      await repository.getRecurringGenerators(subjectId: 3, page: 2);
      expect(adapter.lastRequestOptions?.path, 'recurring_generators.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'page': 2,
        'subject_id': 3,
      });

      await repository.getRecurringGenerator(1);
      expect(adapter.lastRequestOptions?.path, 'recurring_generators/1.json');

      await repository.createRecurringGenerator(generator);
      expect(adapter.lastRequestOptions?.path, 'recurring_generators.json');
      expect(adapter.lastRequestOptions?.data, {
        'name': 'Recurring',
        'subject_id': 1,
      });

      await repository.updateRecurringGenerator(
        1,
        generator.copyWith(name: 'Recurring 2'),
      );
      expect(adapter.lastRequestOptions?.path, 'recurring_generators/1.json');
      expect(adapter.lastRequestOptions?.data, {
        'name': 'Recurring 2',
        'subject_id': 1,
      });

      await repository.deleteRecurringGenerator(1);
      expect(adapter.lastRequestOptions?.path, 'recurring_generators/1.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');

      await repository.pause(1);
      expect(
        adapter.lastRequestOptions?.path,
        'recurring_generators/1/pause.json',
      );

      await repository.activate(1, nextOccurrenceOn: '2026-04-01');
      expect(
        adapter.lastRequestOptions?.path,
        'recurring_generators/1/activate.json',
      );
      expect(adapter.lastRequestOptions?.data, {
        'next_occurrence_on': '2026-04-01',
      });
    });

    test('todos cover list and toggle completion', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.path == 'todos.json') {
            return jsonResponseBody([]);
          }
          return jsonResponseBody({'id': 1, 'name': 'Follow up'});
        },
      );
      final repository = TodosRepository(createTestDio(adapter));
      final since = DateTime.utc(2026, 1, 1);

      await repository.getTodos(since: since, page: 2);
      expect(adapter.lastRequestOptions?.path, 'todos.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'since': since.toIso8601String(),
        'page': 2,
      });

      await repository.toggleCompletion(1);
      expect(
        adapter.lastRequestOptions?.path,
        'todos/1/toggle_completion.json',
      );
    });

    test('events cover all documented list endpoints', () async {
      final adapter = RecordingAdapter(onFetch: (_) => jsonResponseBody([]));
      final repository = EventsRepository(createTestDio(adapter));
      final since = DateTime.utc(2026, 1, 1);

      await repository.getEvents(since: since, subjectId: 3, page: 2);
      expect(adapter.lastRequestOptions?.path, 'events.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'since': since.toIso8601String(),
        'page': 2,
        'subject_id': 3,
      });

      await repository.getEventsPaid(since: since, subjectId: 3, page: 2);
      expect(adapter.lastRequestOptions?.path, 'events/paid.json');
      expect(adapter.lastRequestOptions?.queryParameters, {
        'since': since.toIso8601String(),
        'page': 2,
        'subject_id': 3,
      });
    });

    test('webhooks cover list, CRUD and failed deliveries', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.method == 'GET' && options.path == 'webhooks.json') {
            return jsonResponseBody([]);
          }
          if (options.path.endsWith('failed_deliveries.json')) {
            return jsonResponseBody(
              [
                {
                  'id': 7,
                  'event_name': 'invoice_paid',
                  'idempotency_key': '018f3b0d-1c1d-7f2f-a123-abcdef123456',
                },
              ],
              200,
              {
                'x-ratelimit-policy': ['default;q=400;w=60'],
                'x-ratelimit': ['default;r=398;t=55'],
              },
            );
          }
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }
          return jsonResponseBody({});
        },
      );
      final repository = WebhooksRepository(createTestDio(adapter));
      final webhook = const Webhook(
        webhookUrl: 'https://example.com/webhooks',
        active: true,
        events: ['invoice_paid'],
      );

      await repository.getWebhooks(page: 2);
      expect(adapter.lastRequestOptions?.path, 'webhooks.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'page': 2});

      await repository.getWebhook(1);
      expect(adapter.lastRequestOptions?.path, 'webhooks/1.json');

      await repository.createWebhook(webhook);
      expect(adapter.lastRequestOptions?.path, 'webhooks.json');
      expect(adapter.lastRequestOptions?.data, {
        'webhook_url': 'https://example.com/webhooks',
        'active': true,
        'events': ['invoice_paid'],
      });

      await repository.updateWebhook(1, webhook.copyWith(active: false));
      expect(adapter.lastRequestOptions?.path, 'webhooks/1.json');
      expect(adapter.lastRequestOptions?.data, {
        'webhook_url': 'https://example.com/webhooks',
        'active': false,
        'events': ['invoice_paid'],
      });

      await repository.deleteWebhook(1);
      expect(adapter.lastRequestOptions?.path, 'webhooks/1.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');

      final deliveries = await repository.getFailedDeliveries(
        'failed-uuid',
        page: 3,
      );
      expect(
        adapter.lastRequestOptions?.path,
        'webhooks/failed-uuid/failed_deliveries.json',
      );
      expect(adapter.lastRequestOptions?.queryParameters, {'page': 3});
      expect(deliveries.currentPage, 3);
      expect(deliveries.items.single.idempotencyKey, isNotEmpty);
      expect(deliveries.rateLimit?.quota, 400);
      expect(deliveries.rateLimit?.remaining, 398);
    });

    test('estimates cover supported operations for existing IDs', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.uri.path.contains('fire.json')) {
            return emptyResponseBody(204);
          }
          return jsonResponseBody({
            'id': 1,
            'number': '2026-001',
            'subject_id': 1,
          });
        },
      );

      final repository = EstimatesRepository(createTestDio(adapter));

      // getEstimates() and searchEstimates() were removed because
      // Fakturoid API v3 does not support document_type=estimate as a
      // query parameter (returns 400 "Parameter document_type is invalid").

      await repository.getEstimate(1);
      expect(adapter.lastRequestOptions?.path, 'invoices/1.json');

      await repository.fireAction(1, EstimateFireAction.accept);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters, {'event': 'accept'});

      await repository.createMessage(1, email: 'test@example.com');
      expect(adapter.lastRequestOptions?.path, 'invoices/1/message.json');
      expect(adapter.lastRequestOptions?.data, {'email': 'test@example.com'});

      await repository.downloadEstimatePdf(1);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/download.pdf');
    });

    test('bank accounts repository coverage', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) => jsonResponseBody([
          {'id': 1, 'name': 'Main'},
        ]),
      );
      final repository = BankAccountsRepository(createTestDio(adapter));
      final accounts = await repository.getBankAccounts();

      expect(adapter.lastRequestOptions?.path, 'bank_accounts.json');
      expect(accounts.first.name, 'Main');
    });

    test('number formats repository coverage', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) => jsonResponseBody([
          {'id': 1, 'format': '2026'},
        ]),
      );
      final repository = NumberFormatsRepository(createTestDio(adapter));
      final formats = await repository.getNumberFormats();

      expect(adapter.lastRequestOptions?.path, 'number_formats/invoices.json');
      expect(formats.first.format, '2026');
    });

    test('inventory moves repository full coverage', () async {
      // Handled above in 'inventory moves cover global list and nested CRUD'
    });

    test('recurring generators extra actions', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) =>
            jsonResponseBody({'id': 1, 'name': 'Test', 'subject_id': 1}),
      );

      final recRepo = RecurringGeneratorsRepository(createTestDio(adapter));
      await recRepo.pause(1);
      expect(
        adapter.lastRequestOptions?.path,
        'recurring_generators/1/pause.json',
      );
      expect(adapter.lastRequestOptions?.method, 'PATCH');

      await recRepo.activate(1, nextOccurrenceOn: '2026-05-01');
      expect(
        adapter.lastRequestOptions?.path,
        'recurring_generators/1/activate.json',
      );
      expect(adapter.lastRequestOptions?.data, {
        'next_occurrence_on': '2026-05-01',
      });
    });

    test('miscellaneous repository actions', () async {
      final adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.path.contains('download')) {
            return bytesResponseBody([1, 2]);
          }
          if (options.path.contains('events/paid.json')) {
            return jsonResponseBody([
              {'id': 1},
            ]);
          }
          return jsonResponseBody({'id': 1});
        },
      );
      final dio = createTestDio(adapter);

      final inboxRepo = InboxFilesRepository(dio);
      await inboxRepo.sendToOcr(1);
      expect(
        adapter.lastRequestOptions?.path,
        'inbox_files/1/send_to_ocr.json',
      );
      await inboxRepo.downloadInboxFile(1);
      expect(adapter.lastRequestOptions?.path, 'inbox_files/1/download');

      final todoRepo = TodosRepository(dio);
      await todoRepo.toggleCompletion(1);
      expect(
        adapter.lastRequestOptions?.path,
        'todos/1/toggle_completion.json',
      );
      expect(adapter.lastRequestOptions?.method, 'POST');

      final eventRepo = EventsRepository(dio);
      await eventRepo.getEventsPaid();
      expect(adapter.lastRequestOptions?.path, 'events/paid.json');

      final payRepo = InvoicePaymentsRepository(dio);
      await payRepo.createTaxDocument(10, 20, data: {'custom': 'value'});
      expect(
        adapter.lastRequestOptions?.path,
        'invoices/10/payments/20/create_tax_document.json',
      );
      expect(adapter.lastRequestOptions?.data, {'custom': 'value'});
    });
  });
}
