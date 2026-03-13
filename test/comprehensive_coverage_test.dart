import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/test_helpers.dart';

void main() {
  group('Comprehensive SDK Coverage', () {
    late RecordingAdapter adapter;
    late FakturoidClient client;

    setUp(() async {
      adapter = RecordingAdapter(
        onFetch: (options) {
          if (options.path.contains('/download') || options.path.contains('/download.pdf')) {
            return bytesResponseBody([1, 2, 3]);
          }
          
          // User root endpoint
          if (options.path == '/user.json') {
            return jsonResponseBody({
              'id': 1,
              'email': 'test@example.com',
              'accounts': [{'slug': 'original'}]
            });
          }

          // Stats endpoint
          if (options.path == '/stats.json') {
            return jsonResponseBody({
              'totals': {
                'all_time': {'paid': '100.0'}
              }
            });
          }

          // List endpoints (must return List)
          if (options.method == 'GET' && (
              options.path.contains('bank_accounts') || 
              options.path.contains('number_formats') || 
              options.path.contains('/users.json') || 
              options.path.contains('events') ||
              options.path.contains('invoices.json') ||
              options.path.contains('expenses.json') ||
              options.path.contains('estimates.json') ||
              options.path.contains('subjects.json') ||
              options.path.contains('inventory_items') ||
              options.path.contains('inventory_moves.json') ||
              options.path.contains('generators.json') ||
              options.path.contains('recurring_generators.json') ||
              options.path.contains('webhooks.json') ||
              options.path.contains('todos.json')
          )) {
            return jsonResponseBody([]);
          }

          // Single object endpoints
          return jsonResponseBody({
            'id': 1, 
            'name': 'Test', 
            'subject_id': 1, 
            'inventory_item_id': 1,
            'quantity_change': '1.0',
            'moved_on': '2026-01-01T00:00:00Z',
            'direction': 'in'
          });
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
        dioOverride: Dio(BaseOptions(baseUrl: 'https://app.fakturoid.cz/api/v3'))
          ..httpClientAdapter = adapter,
        customTokenStorage: tokenStorage,
      );
    });

    test('FakturoidClient switchAccount updates baseUrl across repositories', () async {
      await client.account.getAccount();
      expect(adapter.lastRequestOptions?.baseUrl, contains('/accounts/original'));

      client.switchAccount('new-slug');
      await client.invoices.getInvoices();
      expect(adapter.lastRequestOptions?.baseUrl, contains('/accounts/new-slug'));
      
      await client.subjects.getSubjects();
      expect(adapter.lastRequestOptions?.baseUrl, contains('/accounts/new-slug'));
    });

    test('Invoices and Expenses download methods coverage', () async {
      final pdf = await client.invoices.downloadInvoicePdf(1);
      expect(pdf, isNotEmpty);
      expect(adapter.lastRequestOptions?.path, '/invoices/1/download.pdf');

      final invAttachment = await client.invoices.downloadAttachment(1, 2);
      expect(invAttachment, isNotEmpty);
      expect(adapter.lastRequestOptions?.path, '/invoices/1/attachments/2/download');

      final expAttachment = await client.expenses.downloadAttachment(1, 2);
      expect(expAttachment, isNotEmpty);
      expect(adapter.lastRequestOptions?.path, '/expenses/1/attachments/2/download');
    });

    test('Subjects archive and unarchive correctly use fireAction with body', () async {
      await client.subjects.archiveSubject(1);
      expect(adapter.lastRequestOptions?.path, '/subjects/1/fire.json');
      expect(adapter.lastRequestOptions?.data, {'event': 'archive'});

      await client.subjects.unarchiveSubject(1);
      expect(adapter.lastRequestOptions?.path, '/subjects/1/fire.json');
      expect(adapter.lastRequestOptions?.data, {'event': 'unarchive'});
    });

    test('InventoryItems specialized lists coverage', () async {
      await client.inventoryItems.getArchivedItems();
      expect(adapter.lastRequestOptions?.path, '/inventory_items/archived.json');

      await client.inventoryItems.getLowQuantityItems();
      expect(adapter.lastRequestOptions?.path, '/inventory_items/low_quantity.json');
    });

    test('Webhooks failed deliveries coverage', () async {
      await client.webhooks.getFailedDeliveries('uuid');
      expect(adapter.lastRequestOptions?.path, '/webhooks/uuid/failed_deliveries.json');
    });

    test('Stats coverage', () async {
      await client.stats.getStats();
      expect(adapter.lastRequestOptions?.path, '/stats.json');
    });

    test('Todos toggle coverage', () async {
      await client.todos.toggleCompletion(1);
      expect(adapter.lastRequestOptions?.path, '/todos/1/toggle_completion.json');
    });

    test('Users root vs account coverage', () async {
      final user = await client.users.getCurrentUser();
      expect(user.email, 'test@example.com');
      expect(adapter.lastRequestOptions?.path, '/user.json');
      expect(adapter.lastRequestOptions?.baseUrl, 'https://app.fakturoid.cz/api/v3');

      await client.users.getUsers();
      expect(adapter.lastRequestOptions?.path, '/users.json');
      expect(adapter.lastRequestOptions?.baseUrl, contains('/accounts/'));
    });

    test('InvoicePayments and ExpensePayments coverage', () async {
      await client.invoicePayments.createPayment(1, const InvoicePayment(amount: '100'));
      expect(adapter.lastRequestOptions?.path, '/invoices/1/payments.json');

      await client.expensePayments.createPayment(1, const InvoicePayment(amount: '100'));
      expect(adapter.lastRequestOptions?.path, '/expenses/1/payments.json');
    });
  });
}
