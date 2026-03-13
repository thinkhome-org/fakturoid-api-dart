import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';
import 'package:fakturoid_api/src/core/exceptions/fakturoid_error_interceptor.dart';

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
