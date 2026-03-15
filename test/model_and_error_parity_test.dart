import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';
import 'package:fakturoid_api_dart/src/core/exceptions/fakturoid_error_interceptor.dart';

import 'support/test_helpers.dart';

void main() {
  group('model parity', () {
    test(
      'invoice parses attachments, vat summary, advances and EET records',
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

    test('invoice parses new changelog fields', () {
      final invoice = Invoice.fromJson({
        'subject_id': 1,
        'last_reminder_sent_at': '2026-02-01T10:00:00.000Z',
        'rounding_adjustment': '0.50',
      });

      expect(
        invoice.lastReminderSentAt,
        DateTime.parse('2026-02-01T10:00:00.000Z'),
      );
      expect(invoice.roundingAdjustment, '0.50');
    });

    test(
      'invoice keeps legacy partial proforma document type round-trippable',
      () {
        final invoice = Invoice.fromJson({
          'subject_id': 1,
          'document_type': 'partial_proforma',
        });

        expect(invoice.documentType, DocumentType.partialProforma);
        expect(invoice.toJson()['document_type'], 'partial_proforma');
      },
    );

    test('expense parses attachments, vat summary and new fields', () {
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
        'remind_due_date': true,
        'rounding_adjustment': '0.25',
      });

      expect(expense.attachments?.single.filename, 'receipt.pdf');
      expect(expense.vatRatesSummary?.single.vatRate, 12);
      expect(expense.remindDueDate, isTrue);
      expect(expense.roundingAdjustment, '0.25');
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

    test('inventory move keeps document read-only on serialization', () {
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

    test('generator and recurring generator parse rounding adjustment', () {
      final generator = Generator.fromJson({
        'name': 'Template',
        'subject_id': 1,
        'rounding_adjustment': '0.10',
      });
      final recurringGenerator = RecurringGenerator.fromJson({
        'name': 'Recurring',
        'subject_id': 1,
        'rounding_adjustment': '0.15',
      });

      expect(generator.roundingAdjustment, '0.10');
      expect(recurringGenerator.roundingAdjustment, '0.15');
    });

    test('estimate parses accepted_at and rejected_at', () {
      final estimate = Estimate.fromJson({
        'id': 1,
        'subject_id': 1,
        'accepted_at': '2026-03-01T12:00:00.000Z',
        'rejected_at': '2026-03-02T12:00:00.000Z',
      });

      expect(estimate.acceptedAt, DateTime.parse('2026-03-01T12:00:00.000Z'));
      expect(estimate.rejectedAt, DateTime.parse('2026-03-02T12:00:00.000Z'));
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

    test('subject parses ARES setting enum', () {
      final subject = Subject.fromJson({
        'name': 'Acme',
        'setting_update_from_ares': 'on',
      });

      expect(subject.settingUpdateFromAres, SubjectSetting.on);
    });

    test('webhook parses failed deliveries UUID from latest docs', () {
      final webhook = Webhook.fromJson({
        'failed_deliveries_uuid': 'failed-uuid',
      });

      expect(webhook.failedDeliveriesUuid, 'failed-uuid');
    });

    test('expense payment round-trip serialization', () {
      final payment = ExpensePayment.fromJson({
        'id': 100,
        'paid_on': '2026-03-15',
        'currency': 'CZK',
        'amount': '5000.0',
        'native_amount': '5000.0',
        'mark_document_as_paid': true,
        'variable_symbol': '12345',
        'bank_account_id': 1,
        'created_at': '2026-03-15T12:00:00.000Z',
        'updated_at': '2026-03-15T12:00:00.000Z',
      });

      expect(payment.id, 100);
      expect(payment.paidOn, '2026-03-15');
      expect(payment.amount, '5000.0');
      expect(payment.currency, 'CZK');
      expect(payment.markDocumentAsPaid, isTrue);
      expect(payment.variableSymbol, '12345');
      expect(payment.bankAccountId, 1);

      final json = payment.toJson();
      expect(json['paid_on'], '2026-03-15');
      expect(json['amount'], '5000.0');
      expect(json['mark_document_as_paid'], isTrue);
      expect(json['variable_symbol'], '12345');
      expect(json.containsKey('proforma_followup_document'), isFalse);
      expect(json.containsKey('send_thank_you_email'), isFalse);
      expect(json.containsKey('tax_document_id'), isFalse);
    });

    test('account parses all fields', () {
      final account = Account.fromJson({
        'subdomain': 'test',
        'plan': 'Na plno',
        'plan_price': 999,
        'plan_paid_users': 3,
        'vat_mode': 'vat_payer',
        'currency': 'CZK',
        'vat_rate': 21,
        'due': 14,
        'send_overdue_email': true,
        'digitoo_enabled': false,
        'digitoo_remaining_extractions': 5,
        'invoice_paypal': false,
        'invoice_gopay': false,
      });

      expect(account.subdomain, 'test');
      expect(account.planPrice, 999);
      expect(account.vatMode, AccountVatMode.vatPayer);
      expect(account.currency, 'CZK');
      expect(account.vatRate, 21);
      expect(account.digitooRemainingExtractions, 5);
    });

    test('bank account parses default field via isDefault', () {
      final ba = BankAccount.fromJson({
        'id': 1,
        'name': 'Main',
        'number': '123/0100',
        'default': true,
        'pairing': true,
        'expense_pairing': false,
        'payment_adjustment': true,
      });

      expect(ba.isDefault, isTrue);
      expect(ba.pairing, isTrue);
      expect(ba.expensePairing, isFalse);
      expect(ba.paymentAdjustment, isTrue);
    });

    test('number format parses default field via isDefault', () {
      final nf = NumberFormat.fromJson({
        'id': 1,
        'format': '#YYYY#-####',
        'preview': '2026-0001',
        'default': true,
      });

      expect(nf.isDefault, isTrue);
      expect(nf.format, '#YYYY#-####');
      expect(nf.preview, '2026-0001');
    });

    test('inbox file parses OCR status fields', () {
      final file = InboxFile.fromJson({
        'id': 50,
        'filename': 'scan.pdf',
        'bytesize': 245760,
        'send_to_ocr': true,
        'sent_to_ocr_at': '2026-03-10T11:00:00.000Z',
        'ocr_status': 'processed',
        'ocr_completed_at': '2026-03-10T11:02:00.000Z',
        'download_url': 'https://example.com/download',
      });

      expect(file.bytesize, 245760);
      expect(file.sendToOcr, isTrue);
      expect(file.ocrStatus, OcrStatus.processed);
      expect(file.sentToOcrAt, isNotNull);
      expect(file.ocrCompletedAt, isNotNull);
      expect(file.downloadUrl, 'https://example.com/download');
    });

    test('todo parses completed_at and related objects', () {
      final todo = Todo.fromJson({
        'id': 10,
        'name': 'unpaired_payment',
        'completed_at': '2026-03-10T12:00:00.000Z',
        'text': 'Test todo',
        'related_objects': [
          {'type': 'Invoice', 'id': 201},
        ],
        'params': {'amount': '5000'},
      });

      expect(todo.completedAt, isNotNull);
      expect(todo.relatedObjects, hasLength(1));
      expect(todo.relatedObjects!.first.type, 'Invoice');
      expect(todo.params?['amount'], '5000');
    });

    test('webhook failed delivery and delivery attempt parsing', () {
      final delivery = WebhookFailedDelivery.fromJson({
        'id': 1,
        'event_name': 'invoice_paid',
        'idempotency_key': 'abc-123',
        'url': 'https://example.com/webhook',
        'body': {'webhook_id': 1, 'event_name': 'invoice_paid'},
        'deliveries': [
          {
            'id': 1,
            'request_id': 'req-456',
            'response_status': 500,
            'response_content_type': 'text/html',
            'response_body': 'Internal Server Error',
            'started_at': '2026-03-10T10:00:00.000Z',
            'finished_at': '2026-03-10T10:00:30.000Z',
          },
        ],
      });

      expect(delivery.eventName, 'invoice_paid');
      expect(delivery.idempotencyKey, 'abc-123');
      expect(delivery.body, isNotNull);
      expect(delivery.deliveries, hasLength(1));
      expect(delivery.deliveries!.first.responseStatus, 500);
      expect(delivery.deliveries!.first.responseBody, 'Internal Server Error');
    });

    test('paginated responses parse rate limit headers from docs', () {
      final response = Response<dynamic>(
        data: [
          {'failed_deliveries_uuid': 'failed-uuid'},
        ],
        headers: Headers.fromMap({
          'x-ratelimit-policy': ['default;q=400;w=60'],
          'x-ratelimit': ['default;r=398;t=55'],
        }),
        requestOptions: RequestOptions(path: '/webhooks.json'),
      );

      final paginated = PaginatedResponse<Webhook>.fromResponse(
        response,
        currentPage: 2,
        fromJson: Webhook.fromJson,
      );

      expect(paginated.currentPage, 2);
      expect(paginated.rateLimit?.policyName, 'default');
      expect(paginated.rateLimit?.quota, 400);
      expect(paginated.rateLimit?.windowSeconds, 60);
      expect(paginated.rateLimit?.remaining, 398);
      expect(paginated.rateLimit?.resetInSeconds, 55);
    });
  });

  group('error handling parity', () {
    test('error interceptor uses error_description for 503', () async {
      final adapter = RecordingAdapter(
        onFetch: (_) => jsonResponseBody({
          'error': 'busy',
          'error_description': 'Search is temporarily unavailable',
        }, 503),
      );
      final dio = createTestDio(adapter);
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
    });

    test('error interceptor maps 402 payment required', () async {
      final adapter = RecordingAdapter(
        onFetch: (_) => jsonResponseBody({'error': 'payment_required'}, 402),
      );
      final dio = createTestDio(adapter);
      dio.interceptors.add(FakturoidErrorInterceptor());

      await expectLater(
        () => dio.get('/payment-required.json'),
        throwsA(
          isA<DioException>().having(
            (error) => error.error,
            'error',
            isA<FakturoidPaymentRequiredException>(),
          ),
        ),
      );
    });

    test('error interceptor maps 429 rate limit', () async {
      final adapter = RecordingAdapter(
        onFetch: (_) => jsonResponseBody(
          {'error': 'too_many_requests'},
          429,
          {
            'x-ratelimit-policy': ['default;q=400;w=60'],
            'x-ratelimit': ['default;r=0;t=12'],
          },
        ),
      );
      final dio = createTestDio(adapter);
      dio.interceptors.add(FakturoidErrorInterceptor());

      await expectLater(
        () => dio.get('/rate-limited.json'),
        throwsA(
          isA<DioException>().having(
            (error) => error.error,
            'error',
            isA<FakturoidRateLimitException>()
                .having((error) => error.rateLimit?.quota, 'quota', 400)
                .having((error) => error.rateLimit?.remaining, 'remaining', 0)
                .having(
                  (error) => error.rateLimit?.resetInSeconds,
                  'resetInSeconds',
                  12,
                ),
          ),
        ),
      );
    });
  });

  group('invoice PDF readiness', () {
    test(
      'downloadInvoicePdf throws a typed exception for 204 responses',
      () async {
        final adapter = RecordingAdapter(
          onFetch: (_) => bytesResponseBody([], 204),
        );
        final repository = InvoicesRepository(createTestDio(adapter));

        await expectLater(
          () => repository.downloadInvoicePdf(42),
          throwsA(isA<FakturoidDocumentNotReadyException>()),
        );
      },
    );
  });
}
