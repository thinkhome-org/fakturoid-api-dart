import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/test_helpers.dart';
import 'support/mock_responses.dart';

void main() {
  group('Comprehensive SDK Coverage', () {
    late RecordingAdapter adapter;
    late FakturoidClient client;

    setUp(() async {
      adapter = RecordingAdapter(
        onFetch: (options) {
          // Binary downloads
          if (options.path.contains('download') ||
              options.path.contains('download.pdf')) {
            return bytesResponseBody([1, 2, 3]);
          }

          // Fire/action endpoints return 204
          if (options.path.contains('/fire.json') ||
              options.path.contains('/message.json') ||
              options.path.contains('/send_to_ocr.json') ||
              options.path.contains('/toggle_completion.json') ||
              options.path.contains('/archive.json') ||
              options.path.contains('/unarchive.json') ||
              options.path.contains('/pause.json') ||
              options.path.contains('/activate.json')) {
            if (options.path.contains('/toggle_completion.json')) {
              return jsonResponseBody(mockTodoResponse());
            }
            return emptyResponseBody();
          }

          // DELETE requests return 204
          if (options.method == 'DELETE') {
            return emptyResponseBody();
          }

          // User root endpoint
          if (options.path == 'user.json') {
            return jsonResponseBody(mockUserResponse());
          }

          // Account endpoint
          if (options.path == 'account.json') {
            return jsonResponseBody(mockAccountResponse());
          }

          // List endpoints with realistic data
          if (options.method == 'GET') {
            if (options.path.endsWith('bank_accounts.json')) {
              return jsonResponseBody([mockBankAccountResponse()]);
            }
            if (options.path.endsWith('number_formats.json') ||
                options.path.endsWith('number_formats/invoices.json')) {
              return jsonResponseBody([mockNumberFormatResponse()]);
            }
            if (options.path.endsWith('users.json')) {
              return jsonResponseBody([mockUserResponse()]);
            }
            if (options.path.endsWith('events.json') ||
                options.path.endsWith('paid.json')) {
              return jsonResponseBody([mockEventResponse()]);
            }
            if (options.path.endsWith('invoices.json') &&
                options.queryParameters['document_type'] == 'estimate') {
              return jsonResponseBody([mockEstimateResponse()]);
            }
            if (options.path.endsWith('invoices.json') ||
                options.path.contains('search.json') &&
                    options.path.contains('invoices')) {
              return jsonResponseBody([mockInvoiceResponse()]);
            }
            if (options.path.endsWith('expenses.json') ||
                options.path.contains('search.json') &&
                    options.path.contains('expenses')) {
              return jsonResponseBody([mockExpenseResponse()]);
            }
            if (options.path.endsWith('subjects.json') ||
                options.path.contains('search.json') &&
                    options.path.contains('subjects')) {
              return jsonResponseBody([mockSubjectResponse()]);
            }
            if (options.path.endsWith('inventory_items.json') ||
                options.path.endsWith('archived.json') ||
                options.path.endsWith('low_quantity.json') ||
                options.path.contains('search.json') &&
                    options.path.contains('inventory_items')) {
              return jsonResponseBody([mockInventoryItemResponse()]);
            }
            if (options.path.endsWith('inventory_moves.json')) {
              return jsonResponseBody([mockInventoryMoveResponse()]);
            }
            if (options.path.endsWith('recurring_generators.json')) {
              return jsonResponseBody([mockRecurringGeneratorResponse()]);
            }
            if (options.path.endsWith('generators.json')) {
              return jsonResponseBody([mockGeneratorResponse()]);
            }
            if (options.path.endsWith('webhooks.json')) {
              return jsonResponseBody([mockWebhookResponse()]);
            }
            if (options.path.endsWith('failed_deliveries.json')) {
              return jsonResponseBody([]);
            }
            if (options.path.endsWith('todos.json')) {
              return jsonResponseBody([mockTodoResponse()]);
            }
            if (options.path.endsWith('inbox_files.json')) {
              return jsonResponseBody([mockInboxFileResponse()]);
            }
          }

          // POST/PATCH on specific resource endpoints
          if (options.method == 'POST' || options.method == 'PATCH') {
            if (options.path.contains('payments')) {
              if (options.path.contains('invoices/')) {
                return jsonResponseBody(mockInvoicePaymentResponse());
              }
              if (options.path.contains('expenses/')) {
                return jsonResponseBody(mockExpensePaymentResponse());
              }
            }
            if (options.path.startsWith('invoices') &&
                !options.path.contains('/')) {
              // POST invoices.json - check if estimate
              final data = options.data as Map<String, dynamic>?;
              if (data?['document_type'] == 'estimate') {
                return jsonResponseBody(mockEstimateResponse());
              }
              return jsonResponseBody(mockInvoiceResponse());
            }
            if (options.path.contains('invoices/')) {
              return jsonResponseBody(mockInvoiceResponse());
            }
            if (options.path.startsWith('expenses') &&
                !options.path.contains('/')) {
              return jsonResponseBody(mockExpenseResponse());
            }
            if (options.path.contains('expenses/')) {
              return jsonResponseBody(mockExpenseResponse());
            }
            if (options.path.contains('subjects')) {
              return jsonResponseBody(mockSubjectResponse());
            }
            if (options.path.contains('recurring_generators')) {
              return jsonResponseBody(mockRecurringGeneratorResponse());
            }
            if (options.path.contains('generators')) {
              return jsonResponseBody(mockGeneratorResponse());
            }
            if (options.path.contains('webhooks')) {
              return jsonResponseBody(mockWebhookResponse());
            }
            if (options.path.contains('inventory_moves')) {
              return jsonResponseBody(mockInventoryMoveResponse());
            }
            if (options.path.contains('inventory_items')) {
              return jsonResponseBody(mockInventoryItemResponse());
            }
            if (options.path.contains('inbox_files')) {
              return jsonResponseBody(mockInboxFileResponse());
            }
          }

          // Single object GET endpoints - route by path
          if (options.path.contains('invoices/') &&
              options.path.contains('payments')) {
            return jsonResponseBody(mockInvoicePaymentResponse());
          }
          if (options.path.contains('expenses/') &&
              options.path.contains('payments')) {
            return jsonResponseBody(mockExpensePaymentResponse());
          }
          if (options.path.contains('inventory_moves/')) {
            return jsonResponseBody(mockInventoryMoveResponse());
          }
          if (options.path.contains('inventory_items/') &&
              !options.path.contains('inventory_moves')) {
            return jsonResponseBody(mockInventoryItemResponse());
          }
          if (options.path.contains('invoices/')) {
            return jsonResponseBody(mockInvoiceResponse());
          }
          if (options.path.contains('expenses/')) {
            return jsonResponseBody(mockExpenseResponse());
          }
          if (options.path.contains('subjects/')) {
            return jsonResponseBody(mockSubjectResponse());
          }
          if (options.path.contains('generators/') &&
              !options.path.contains('recurring')) {
            return jsonResponseBody(mockGeneratorResponse());
          }
          if (options.path.contains('recurring_generators/')) {
            return jsonResponseBody(mockRecurringGeneratorResponse());
          }
          if (options.path.contains('webhooks/')) {
            return jsonResponseBody(mockWebhookResponse());
          }
          if (options.path.contains('inbox_files/')) {
            return jsonResponseBody(mockInboxFileResponse());
          }
          if (options.path.contains('todos/')) {
            return jsonResponseBody(mockTodoResponse());
          }

          // Fallback
          return jsonResponseBody({'id': 1, 'name': 'Test', 'subject_id': 1});
        },
      );

      final tokenStorage = InMemoryTokenStorage();
      await tokenStorage.saveTokens(
        accessToken: 'token',
        tokenType: 'Bearer',
        expiresAt: DateTime.now().add(const Duration(hours: 1)),
      );

      client = FakturoidClient(
        slug: 'original',
        clientId: 'id',
        clientSecret: 'secret',
        redirectUri: 'uri',
        userAgent: 'agent',
        dioOverride: Dio(
          BaseOptions(baseUrl: 'https://app.fakturoid.cz/api/v3/'),
        )..httpClientAdapter = adapter,
        customTokenStorage: tokenStorage,
      );
    });

    test(
      'FakturoidClient switchAccount updates baseUrl across repositories',
      () async {
        final account = await client.account.getAccount();
        expect(
          adapter.lastRequestOptions?.baseUrl,
          contains('/accounts/original/'),
        );
        expect(account.name, 'Test s.r.o.');
        expect(account.subdomain, 'testaccount');

        client.switchAccount('new-slug');
        final invoices = await client.invoices.getInvoices();
        expect(
          adapter.lastRequestOptions?.baseUrl,
          contains('/accounts/new-slug/'),
        );
        expect(invoices.items, isNotEmpty);

        final subjects = await client.subjects.getSubjects();
        expect(
          adapter.lastRequestOptions?.baseUrl,
          contains('/accounts/new-slug/'),
        );
        expect(subjects.items, isNotEmpty);
      },
    );

    test('Invoice CRUD and response data validation', () async {
      // GET list
      final invoiceList = await client.invoices.getInvoices();
      expect(invoiceList.items, hasLength(1));
      final listItem = invoiceList.items.first;
      expect(listItem.id, 201);
      expect(listItem.number, '2026-0001');
      expect(listItem.status, InvoiceStatus.open);
      expect(listItem.lines, isNotNull);
      expect(listItem.lines, hasLength(1));
      expect(listItem.lines!.first.name, 'Webová aplikace');
      expect(listItem.lines!.first.unitPrice, '10000.0');
      expect(listItem.lines!.first.vatRate, 21);
      expect(listItem.attachments, isNotNull);
      expect(listItem.attachments, hasLength(1));
      expect(listItem.attachments!.first.filename, 'smlouva.pdf');
      expect(listItem.vatRatesSummary, isNotNull);
      expect(listItem.vatRatesSummary!.first.base, '10000.0');
      expect(listItem.currency, 'CZK');
      expect(listItem.paymentMethod, PaymentMethod.bank);
      expect(listItem.documentType, DocumentType.invoice);
      expect(listItem.vatPriceMode, VatPriceMode.withoutVat);
      expect(listItem.oss, OssMode.disabled);
      expect(listItem.tags, ['vip', 'q1-2026']);
      expect(listItem.total, '12100.0');

      // GET single
      final invoice = await client.invoices.getInvoice(201);
      expect(invoice.id, 201);
      expect(invoice.subjectId, 101);
      expect(invoice.clientName, 'Zákazník a.s.');
      expect(adapter.lastRequestOptions?.path, 'invoices/201.json');

      // CREATE
      final created = await client.invoices.createInvoice(
        const Invoice(subjectId: 101),
      );
      expect(created.id, 201);
      expect(adapter.lastRequestOptions?.path, 'invoices.json');
      expect(adapter.lastRequestOptions?.method, 'POST');

      // UPDATE
      final updated = await client.invoices.updateInvoice(
        201,
        const Invoice(subjectId: 101, note: 'Updated'),
      );
      expect(updated.id, 201);
      expect(adapter.lastRequestOptions?.path, 'invoices/201.json');
      expect(adapter.lastRequestOptions?.method, 'PATCH');

      // DELETE
      await client.invoices.deleteInvoice(201);
      expect(adapter.lastRequestOptions?.path, 'invoices/201.json');
      expect(adapter.lastRequestOptions?.method, 'DELETE');

      // Search
      final searchResult = await client.invoices.searchInvoices(query: 'test');
      expect(searchResult.items, isNotEmpty);
      expect(adapter.lastRequestOptions?.path, 'invoices/search.json');
    });

    test('Invoice fire actions', () async {
      await client.invoices.fireAction(201, InvoiceFireAction.markAsSent);
      expect(adapter.lastRequestOptions?.path, 'invoices/201/fire.json');
      expect(
        adapter.lastRequestOptions?.queryParameters['event'],
        'mark_as_sent',
      );

      await client.invoices.fireAction(201, InvoiceFireAction.lock);
      expect(adapter.lastRequestOptions?.queryParameters['event'], 'lock');
    });

    test('Invoices and Expenses download methods coverage', () async {
      final pdf = await client.invoices.downloadInvoicePdf(1);
      expect(pdf, isNotEmpty);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/download.pdf');

      final invAttachment = await client.invoices.downloadAttachment(1, 2);
      expect(invAttachment, isNotEmpty);
      expect(
        adapter.lastRequestOptions?.path,
        'invoices/1/attachments/2/download',
      );

      final expAttachment = await client.expenses.downloadAttachment(1, 2);
      expect(expAttachment, isNotEmpty);
      expect(
        adapter.lastRequestOptions?.path,
        'expenses/1/attachments/2/download',
      );
    });

    test('Subject CRUD and response data validation', () async {
      final subjects = await client.subjects.getSubjects();
      expect(subjects.items, hasLength(1));
      final subject = subjects.items.first;
      expect(subject.id, 101);
      expect(subject.name, 'Zákazník a.s.');
      expect(subject.type, SubjectType.customer);
      expect(subject.registrationNo, '98765432');
      expect(subject.hasDeliveryAddress, isTrue);
      expect(subject.deliveryName, 'Sklad Brno');
      expect(subject.settingUpdateFromAres, SubjectSetting.inherit);
      expect(subject.webinvoiceHistory, WebinvoiceHistory.disabled);
      expect(subject.suggestionEnabled, isTrue);
    });

    test(
      'Subjects archive and unarchive correctly use fireAction with query params',
      () async {
        await client.subjects.archiveSubject(1);
        expect(adapter.lastRequestOptions?.path, 'subjects/1/fire.json');
        expect(
          adapter.lastRequestOptions?.queryParameters['event'],
          'archive',
        );

        await client.subjects.unarchiveSubject(1);
        expect(adapter.lastRequestOptions?.path, 'subjects/1/fire.json');
        expect(
          adapter.lastRequestOptions?.queryParameters['event'],
          'unarchive',
        );
      },
    );

    test('Expense CRUD and response data validation', () async {
      final expenses = await client.expenses.getExpenses();
      expect(expenses.items, hasLength(1));
      final expense = expenses.items.first;
      expect(expense.id, 501);
      expect(expense.subjectId, 102);
      expect(expense.originalNumber, 'FAK-12345');
      expect(expense.status, ExpenseStatus.open);
      expect(expense.documentType, ExpenseDocumentType.invoice);
      expect(expense.proportionalVatDeduction, 100);
      expect(expense.taxDeductible, isTrue);
      expect(expense.remindDueDate, isTrue);
      expect(expense.receivedOn, '2026-02-18');
      expect(expense.lines, isNotNull);
      expect(expense.lines!.first.name, 'Server HP DL380');
      expect(expense.attachments, isNotNull);
      expect(expense.attachments!.first.filename, 'faktura-dodavatel.pdf');

      // Search
      final searchResult = await client.expenses.searchExpenses(
        query: 'server',
      );
      expect(searchResult.items, isNotEmpty);

      // Fire action
      await client.expenses.fireAction(501, ExpenseFireAction.lock);
      expect(adapter.lastRequestOptions?.path, 'expenses/501/fire.json');
      expect(adapter.lastRequestOptions?.queryParameters['event'], 'lock');
    });

    test('Estimate response data validation', () async {
      final estimates = await client.estimates.getEstimates();
      expect(estimates.items, hasLength(1));
      final estimate = estimates.items.first;
      expect(estimate.id, 801);
      expect(estimate.documentType, EstimateDocumentType.estimate);
      expect(estimate.status, EstimateStatus.sent);
      expect(estimate.total, '30250.0');
      expect(estimate.lines, isNotNull);
      expect(estimate.lines!.first.name, 'Konzultace');

      expect(adapter.lastRequestOptions?.path, 'invoices.json');
      expect(
        adapter.lastRequestOptions?.queryParameters['document_type'],
        'estimate',
      );

      // getEstimate shares invoices/{id}.json endpoint - tested via request parity
      await client.estimates.createMessage(1, email: 'test@example.com');
      expect(adapter.lastRequestOptions?.path, 'invoices/1/message.json');
    });

    test('Generator response data validation', () async {
      final generators = await client.generators.getGenerators();
      expect(generators.items, hasLength(1));
      final gen = generators.items.first;
      expect(gen.id, 1001);
      expect(gen.name, 'Měsíční fakturace');
      expect(gen.subjectId, 101);
      expect(gen.paymentMethod, PaymentMethod.bank);
      expect(gen.legacyBankDetails, isNotNull);
      expect(gen.lines, isNotNull);
      expect(gen.roundingAdjustment, '0.0');
    });

    test('RecurringGenerator response data validation', () async {
      final recGens = await client.recurringGenerators.getRecurringGenerators();
      expect(recGens.items, hasLength(1));
      final rg = recGens.items.first;
      expect(rg.id, 1201);
      expect(rg.name, 'Měsíční předplatné');
      expect(rg.active, isTrue);
      expect(rg.startDate, '2026-01-01');
      expect(rg.monthsPeriod, 1);
      expect(rg.nextOccurrenceOn, '2026-04-01');
      expect(rg.sendEmail, isTrue);
      expect(rg.tags, ['recurring']);
      expect(rg.lines, isNotNull);
    });

    test('InventoryItem response data validation', () async {
      final items = await client.inventoryItems.getInventoryItems();
      expect(items.items, hasLength(1));
      final item = items.items.first;
      expect(item.id, 1401);
      expect(item.name, 'SSD Disk 1TB');
      expect(item.sku, 'SSD-1TB-001');
      expect(item.articleNumberType, ArticleNumberType.ean);
      expect(item.trackQuantity, isTrue);
      expect(item.quantity, '25.0');
      expect(item.minQuantity, '5.0');
      expect(item.maxQuantity, '100.0');
      expect(item.allowBelowZero, isFalse);
      expect(item.supplyType, SupplyType.goods);
      expect(item.suggestFor, ItemSuggestFor.both);
      expect(item.retailPrices, isNotNull);
      expect(item.retailPrices!.first.currency, 'EUR');
    });

    test('InventoryItems specialized lists coverage', () async {
      await client.inventoryItems.getArchivedItems();
      expect(adapter.lastRequestOptions?.path, 'inventory_items/archived.json');

      await client.inventoryItems.getLowQuantityItems();
      expect(
        adapter.lastRequestOptions?.path,
        'inventory_items/low_quantity.json',
      );
    });

    test('InventoryMove response data validation', () async {
      final moves = await client.inventoryMoves.getAllInventoryMoves();
      expect(moves.items, hasLength(1));
      final move = moves.items.first;
      expect(move.id, 1601);
      expect(move.inventoryItemId, 1401);
      expect(move.direction, InventoryMoveDirection.moveIn);
      expect(move.quantityChange, '10.0');
      expect(move.purchasePrice, '1500.0');
      expect(move.purchaseCurrency, 'CZK');
      expect(move.retailPrice, '2500.0');
      expect(adapter.lastRequestOptions?.path, 'inventory_moves.json');

      await client.inventoryMoves.getInventoryMove(1, 1);
      expect(
        adapter.lastRequestOptions?.path,
        'inventory_items/1/inventory_moves/1.json',
      );

      await client.inventoryMoves.updateInventoryMove(
        1,
        1,
        InventoryMove(
          inventoryItemId: 1,
          direction: InventoryMoveDirection.moveIn,
          movedOn: DateTime(2026, 1, 1),
          quantityChange: '1.0',
        ),
      );
      expect(
        adapter.lastRequestOptions?.path,
        'inventory_items/1/inventory_moves/1.json',
      );

      await client.inventoryMoves.deleteInventoryMove(1, 1);
      expect(
        adapter.lastRequestOptions?.path,
        'inventory_items/1/inventory_moves/1.json',
      );
    });

    test('Webhook response data validation', () async {
      final webhooks = await client.webhooks.getWebhooks();
      expect(webhooks.items, hasLength(1));
      final wh = webhooks.items.first;
      expect(wh.id, 1701);
      expect(wh.webhookUrl, 'https://example.com/webhooks/fakturoid');
      expect(wh.active, isTrue);
      expect(wh.events, hasLength(3));
      expect(wh.failedDeliveriesUuid, isNotNull);
      expect(wh.authHeader, 'Bearer secret-token');
    });

    test('Webhooks failed deliveries coverage', () async {
      await client.webhooks.getFailedDeliveries('uuid');
      expect(
        adapter.lastRequestOptions?.path,
        'webhooks/uuid/failed_deliveries.json',
      );
    });

    test('Event response data validation', () async {
      final events = await client.events.getEvents();
      expect(events.items, hasLength(1));
      final event = events.items.first;
      expect(event.name, 'invoice_paid');
      expect(event.text, isNotNull);
      expect(event.relatedObjects, isNotNull);
      expect(event.relatedObjects, hasLength(2));
      expect(event.relatedObjects!.first.type, 'Invoice');
      expect(event.relatedObjects!.first.id, 201);
      expect(event.user, isNotNull);
      expect(event.user!.fullName, 'Jan Novák');
      expect(event.user!.avatarUrl, isNotNull);
      expect(event.params, isNotNull);
    });

    test('Todo response data validation', () async {
      final todos = await client.todos.getTodos();
      expect(todos.items, hasLength(1));
      final todo = todos.items.first;
      expect(todo.id, 1801);
      expect(todo.name, 'unpaired_payment');
      expect(todo.completedAt, isNull);
      expect(todo.relatedObjects, isNotNull);
      expect(todo.params, isNotNull);
    });

    test('Todos toggle coverage', () async {
      await client.todos.toggleCompletion(1);
      expect(
        adapter.lastRequestOptions?.path,
        'todos/1/toggle_completion.json',
      );
    });

    test('BankAccount response data validation', () async {
      final accounts = await client.bankAccounts.getBankAccounts();
      expect(accounts, hasLength(1));
      final ba = accounts.first;
      expect(ba.id, 1);
      expect(ba.name, 'Hlavní účet');
      expect(ba.number, '123456789/0100');
      expect(ba.pairing, isTrue);
      expect(ba.expensePairing, isTrue);
      expect(ba.paymentAdjustment, isTrue);
      expect(ba.isDefault, isTrue);
      expect(ba.iban, 'CZ6508000000192000145399');
    });

    test('NumberFormat response data validation', () async {
      final formats = await client.numberFormats.getNumberFormats();
      expect(formats, hasLength(1));
      final nf = formats.first;
      expect(nf.id, 1);
      expect(nf.format, '#YYYY#-####');
      expect(nf.preview, '2026-0001, 2026-0002');
      expect(nf.isDefault, isTrue);
    });

    test('InboxFile response data validation', () async {
      final files = await client.inboxFiles.getInboxFiles();
      expect(files.items, hasLength(1));
      final file = files.items.first;
      expect(file.id, 1901);
      expect(file.filename, 'scan-faktura.pdf');
      expect(file.bytesize, 245760);
      expect(file.sendToOcr, isTrue);
      expect(file.ocrStatus, OcrStatus.processed);
      expect(file.downloadUrl, isNotNull);
    });

    test('Users root vs account coverage', () async {
      final user = await client.users.getCurrentUser();
      expect(user.email, 'jan@testaccount.cz');
      expect(user.fullName, 'Jan Novák');
      expect(user.id, 42);
      expect(adapter.lastRequestOptions?.path, 'user.json');
      expect(
        adapter.lastRequestOptions?.baseUrl,
        'https://app.fakturoid.cz/api/v3/',
      );

      await client.users.getUsers();
      expect(adapter.lastRequestOptions?.path, 'users.json');
      expect(adapter.lastRequestOptions?.baseUrl, contains('/accounts/'));
    });

    test('InvoicePayments coverage with response validation', () async {
      final payment = await client.invoicePayments.createPayment(
        1,
        const InvoicePayment(amount: '12100.0'),
      );
      expect(payment.id, 2001);
      expect(payment.amount, '12100.0');
      expect(payment.currency, 'CZK');
      expect(payment.paidOn, '2026-03-15');
      expect(payment.bankAccountId, 1);
      expect(adapter.lastRequestOptions?.path, 'invoices/1/payments.json');
    });

    test('ExpensePayments coverage with response validation', () async {
      final payment = await client.expensePayments.createPayment(
        1,
        const ExpensePayment(amount: '60500.0'),
      );
      expect(payment.id, 2101);
      expect(payment.amount, '60500.0');
      expect(payment.currency, 'CZK');
      expect(payment.paidOn, '2026-03-10');
      expect(payment.bankAccountId, 1);
      expect(adapter.lastRequestOptions?.path, 'expenses/1/payments.json');
    });

    test('Account response data validation', () async {
      final account = await client.account.getAccount();
      expect(account.name, 'Test s.r.o.');
      expect(account.subdomain, 'testaccount');
      expect(account.plan, 'Na plno');
      expect(account.planPrice, 999);
      expect(account.vatMode, AccountVatMode.vatPayer);
      expect(account.currency, 'CZK');
      expect(account.vatRate, 21);
      expect(account.due, 14);
      expect(account.sendOverdueEmail, isTrue);
      expect(account.sendThankYouEmail, isTrue);
    });
  });
}
