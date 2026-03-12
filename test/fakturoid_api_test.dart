import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';
import 'package:fakturoid_api/src/core/exceptions/fakturoid_error_interceptor.dart';

void main() {
  group('repository request parity', () {
    test(
      'auth repository uses Basic auth for client credentials flow',
      () async {
        final adapter = _RecordingAdapter(
          onFetch: (_) => _jsonResponseBody({
            'access_token': 'access-token',
            'token_type': 'Bearer',
            'expires_in': 7200,
          }),
        );
        final tokenStorage = _InMemoryTokenStorage();
        final repository = AuthRepository(
          dio: _createDio(adapter),
          tokenStorage: tokenStorage,
          clientId: 'client-id',
          clientSecret: 'client-secret',
          redirectUri: 'https://example.com/callback',
          userAgent: 'TestApp (dev@example.com)',
        );

        await repository.loginWithClientCredentials();

        expect(
          adapter.lastRequestOptions?.headers['Authorization'],
          'Basic ${base64UrlEncode(utf8.encode('client-id:client-secret'))}',
        );
        expect(
          adapter.lastRequestOptions?.headers['User-Agent'],
          'TestApp (dev@example.com)',
        );
        expect(await tokenStorage.getRefreshToken(), isNull);
        expect(await tokenStorage.getTokenType(), 'Bearer');
      },
    );

    test('number formats use invoices endpoint', () async {
      final adapter = _RecordingAdapter(
        onFetch: (_) => _jsonResponseBody([
          {'id': 1, 'format': '2026-####', 'preview': '2026-0001'},
        ]),
      );
      final repository = NumberFormatsRepository(_createDio(adapter));

      final formats = await repository.getNumberFormats();

      expect(formats.single.id, 1);
      expect(adapter.lastRequestOptions?.path, '/number_formats/invoices.json');
    });

    test('inbox file create sends send_to_ocr flag', () async {
      final adapter = _RecordingAdapter(
        onFetch: (_) =>
            _jsonResponseBody({'id': 1, 'filename': 'receipt.pdf'}, 201),
      );
      final repository = InboxFilesRepository(_createDio(adapter));

      await repository.createInboxFile(
        'data:application/pdf;base64,ZmFrZQ==',
        filename: 'receipt.pdf',
        sendToOcr: true,
      );

      expect(adapter.lastRequestOptions?.data, {
        'attachment': 'data:application/pdf;base64,ZmFrZQ==',
        'filename': 'receipt.pdf',
        'send_to_ocr': true,
      });
    });

    test('invoice message sends deliver_now flag', () async {
      final adapter = _RecordingAdapter(
        onFetch: (_) => ResponseBody.fromString('', 204),
      );
      final repository = InvoiceMessagesRepository(_createDio(adapter));

      await repository.createMessage(
        42,
        email: 'billing@example.com',
        deliverNow: true,
      );

      expect(adapter.lastRequestOptions?.path, '/invoices/42/message.json');
      expect(adapter.lastRequestOptions?.data, {
        'email': 'billing@example.com',
        'deliver_now': true,
      });
    });

    test('invoice search forwards tags', () async {
      final adapter = _RecordingAdapter(onFetch: (_) => _jsonResponseBody([]));
      final repository = InvoicesRepository(_createDio(adapter));

      await repository.searchInvoices(
        query: 'acme',
        page: 2,
        tags: ['vip', '2026'],
      );

      expect(adapter.lastRequestOptions?.queryParameters, {
        'query': 'acme',
        'page': 2,
        'tags': ['vip', '2026'],
      });
    });

    test('invoice index uses dedicated document type filter values', () async {
      final adapter = _RecordingAdapter(onFetch: (_) => _jsonResponseBody([]));
      final repository = InvoicesRepository(_createDio(adapter));

      await repository.getInvoices(
        documentType: InvoiceListDocumentType.regular,
      );

      expect(
        adapter.lastRequestOptions?.queryParameters['document_type'],
        'regular',
      );
    });

    test('expense search forwards tags', () async {
      final adapter = _RecordingAdapter(onFetch: (_) => _jsonResponseBody([]));
      final repository = ExpensesRepository(_createDio(adapter));

      await repository.searchExpenses(query: 'supplier', tags: ['hardware']);

      expect(adapter.lastRequestOptions?.queryParameters, {
        'query': 'supplier',
        'tags': ['hardware'],
      });
    });

    test('expense index forwards variable_symbol filter', () async {
      final adapter = _RecordingAdapter(onFetch: (_) => _jsonResponseBody([]));
      final repository = ExpensesRepository(_createDio(adapter));

      await repository.getExpenses(variableSymbol: '2026001');

      expect(
        adapter.lastRequestOptions?.queryParameters['variable_symbol'],
        '2026001',
      );
    });

    test('archived inventory items forward documented filters', () async {
      final adapter = _RecordingAdapter(onFetch: (_) => _jsonResponseBody([]));
      final repository = InventoryItemsRepository(_createDio(adapter));
      final updatedUntil = DateTime.utc(2026, 2, 10);

      await repository.getArchivedItems(
        articleNumber: 'EAN-1',
        updatedUntil: updatedUntil,
      );

      expect(
        adapter.lastRequestOptions?.queryParameters['article_number'],
        'EAN-1',
      );
      expect(
        adapter.lastRequestOptions?.queryParameters['updated_until'],
        updatedUntil.toIso8601String(),
      );
    });

    test(
      'inventory move list uses documented global endpoint filters',
      () async {
        final adapter = _RecordingAdapter(
          onFetch: (_) => _jsonResponseBody([]),
        );
        final repository = InventoryMovesRepository(_createDio(adapter));
        final updatedSince = DateTime.utc(2026, 1, 1);

        await repository.getInventoryMoves(15, updatedSince: updatedSince);

        expect(adapter.lastRequestOptions?.path, '/inventory_moves.json');
        expect(
          adapter.lastRequestOptions?.queryParameters['inventory_item_id'],
          15,
        );
        expect(
          adapter.lastRequestOptions?.queryParameters['updated_since'],
          updatedSince.toIso8601String(),
        );
      },
    );

    test('failed deliveries use typed model and documented path', () async {
      final adapter = _RecordingAdapter(
        onFetch: (_) => _jsonResponseBody([
          {
            'id': 7,
            'event_name': 'invoice_paid',
            'idempotency_key': '018f3b0d-1c1d-7f2f-a123-abcdef123456',
            'url': 'https://example.com/webhooks',
            'body': {
              'invoice': {'id': 99},
            },
            'deliveries': [
              {
                'id': 1,
                'request_id': 'req_123',
                'response_status': 'timeout',
                'response_body': 'timed out',
              },
            ],
          },
        ]),
      );
      final repository = WebhooksRepository(_createDio(adapter));

      final deliveries = await repository.getFailedDeliveries('failed-uuid');

      expect(
        adapter.lastRequestOptions?.path,
        '/webhooks/failed-uuid/failed_deliveries.json',
      );
      expect(deliveries.single.idempotencyKey, isNotEmpty);
      expect(deliveries.single.deliveries?.single.responseStatus, 'timeout');
    });

    test('create tax document returns updated payment payload', () async {
      final adapter = _RecordingAdapter(
        onFetch: (_) => _jsonResponseBody({
          'id': 12,
          'tax_document_id': 77,
          'amount': '1000',
        }),
      );
      final repository = InvoicePaymentsRepository(_createDio(adapter));

      final payment = await repository.createTaxDocument(10, 12);

      expect(payment.id, 12);
      expect(payment.taxDocumentId, 77);
    });
  });

  group('model parity', () {
    test(
      'invoice parses attachments, vat summary, advances and eet records',
      () {
        final invoice = Invoice.fromJson({
          'id': 1,
          'subject_id': 5,
          'attachments': [
            {
              'id': 3,
              'filename': 'doc.pdf',
              'content_type': 'application/pdf',
              'download_url': 'https://example.com/doc.pdf',
            },
          ],
          'vat_rates_summary': [
            {'vat_rate': 21, 'base': '100', 'vat': '21', 'currency': 'CZK'},
          ],
          'paid_advances': [
            {
              'id': 4,
              'number': '2026-0001',
              'variable_symbol': '1',
              'paid_on': '2026-01-01',
              'vat_rate': 21,
              'price': '100',
              'vat': '21',
            },
          ],
          'eet_records': [
            {'id': 9, 'number': 'ABC', 'status': 'fik'},
          ],
        });

        expect(invoice.attachments?.single.filename, 'doc.pdf');
        expect(invoice.vatRatesSummary?.single.base, '100');
        expect(invoice.paidAdvances?.single.number, '2026-0001');
        expect(invoice.eetRecords?.single.status, 'fik');
      },
    );

    test('expense parses attachments and vat summary', () {
      final expense = Expense.fromJson({
        'id': 2,
        'subject_id': 6,
        'attachments': [
          {
            'id': 8,
            'filename': 'receipt.pdf',
            'content_type': 'application/pdf',
            'download_url': 'https://example.com/receipt.pdf',
          },
        ],
        'vat_rates_summary': [
          {'vat_rate': 12, 'base': '200', 'vat': '24', 'currency': 'CZK'},
        ],
      });

      expect(expense.attachments?.single.filename, 'receipt.pdf');
      expect(expense.vatRatesSummary?.single.vatRate, 12);
    });

    test('inventory item parses retail prices', () {
      final item = InventoryItem.fromJson({
        'name': 'Disk',
        'retail_prices': [
          {'id': 10, 'amount': '10', 'currency': 'USD'},
        ],
      });

      expect(item.retailPrices?.single.currency, 'USD');
    });

    test('invoice line parses inventory payload and delete flag', () {
      final line = InvoiceLine.fromJson({
        'name': 'Disk',
        'unit_price': '1000',
        '_destroy': true,
        'inventory': {'item_id': 28, 'sku': 'SKU-1', 'move_id': 52},
      });

      expect(line.destroy, isTrue);
      expect(line.inventory?.itemId, 28);
    });

    test('inventory move parses read-only document payload', () {
      final move = InventoryMove.fromJson({
        'id': 3,
        'inventory_item_id': 5,
        'direction': 'in',
        'moved_on': '2026-01-02T00:00:00.000Z',
        'quantity_change': '10.0',
        'document': {'id': 44, 'type': 'Invoice', 'line_id': 12},
      });

      expect(move.document?.id, 44);
      expect(move.document?.lineId, 12);
      expect(move.toJson().containsKey('document'), isFalse);
    });

    test('event user parses avatar field from event payload', () {
      final event = Event.fromJson({
        'name': 'invoice_paid',
        'user': {
          'id': 1,
          'full_name': 'Tester',
          'avatar': 'https://example.com/avatar.png',
        },
      });

      expect(event.user?.avatarUrl, 'https://example.com/avatar.png');
    });
  });

  group('error handling parity', () {
    test(
      'error interceptor uses error_description and 503 exception',
      () async {
        final adapter = _RecordingAdapter(
          onFetch: (_) => _jsonResponseBody({
            'error': 'busy',
            'error_description': 'Search is temporarily unavailable',
          }, 503),
        );
        final dio = _createDio(adapter);
        dio.interceptors.add(FakturoidErrorInterceptor());

        await expectLater(
          () => dio.get('/failing.json'),
          throwsA(
            isA<DioException>().having(
              (error) => error.error,
              'error',
              isA<FakturoidTemporarilyUnavailableException>(),
            ),
          ),
        );
      },
    );
  });
}

Dio _createDio(HttpClientAdapter adapter) {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://app.fakturoid.cz/api/v3/accounts/demo'),
  );
  dio.httpClientAdapter = adapter;
  return dio;
}

final class _RecordingAdapter implements HttpClientAdapter {
  _RecordingAdapter({required this.onFetch});

  final ResponseBody Function(RequestOptions options) onFetch;
  RequestOptions? lastRequestOptions;

  @override
  void close({bool force = false}) {}

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    lastRequestOptions = options;
    return onFetch(options);
  }
}

ResponseBody _jsonResponseBody(Object? data, [int statusCode = 200]) {
  return ResponseBody.fromBytes(
    Uint8List.fromList(utf8.encode(jsonEncode(data))),
    statusCode,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );
}

final class _InMemoryTokenStorage implements TokenStorage {
  String? _accessToken;
  String? _refreshToken;
  String? _tokenType;
  DateTime? _expiresAt;
  String? _pkceVerifier;
  String? _authState;

  @override
  Future<void> clearAll() async {
    _accessToken = null;
    _refreshToken = null;
    _tokenType = null;
    _expiresAt = null;
    _pkceVerifier = null;
    _authState = null;
  }

  @override
  Future<void> clearAuthState() async {
    _authState = null;
  }

  @override
  Future<void> clearPkceVerifier() async {
    _pkceVerifier = null;
  }

  @override
  Future<String?> getAccessToken() async => _accessToken;

  @override
  Future<String?> getAuthState() async => _authState;

  @override
  Future<DateTime?> getExpiresAt() async => _expiresAt;

  @override
  Future<String?> getPkceVerifier() async => _pkceVerifier;

  @override
  Future<String?> getRefreshToken() async => _refreshToken;

  @override
  Future<String?> getTokenType() async => _tokenType;

  @override
  Future<bool> hasValidToken() async =>
      _accessToken != null && _expiresAt?.isAfter(DateTime.now()) == true;

  @override
  Future<void> saveAuthState(String state) async {
    _authState = state;
  }

  @override
  Future<void> savePkceVerifier(String verifier) async {
    _pkceVerifier = verifier;
  }

  @override
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
    required String tokenType,
    required DateTime expiresAt,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _tokenType = tokenType;
    _expiresAt = expiresAt;
  }
}
