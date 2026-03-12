import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

void main() {
  group('repository request parity', () {
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
  });

  group('model parity', () {
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
