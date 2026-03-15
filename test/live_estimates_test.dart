import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';
import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'estimates repository live coverage',
    (context) async {
      // Estimates (nabídky) cannot be created via the API - the Fakturoid API v3
      // does not support document_type 'estimate' for POST /invoices.json.
      // We can only test listing/searching estimates that exist in the account.
      final list = await context.client.estimates.getEstimates();
      expect(list.items, isA<List<Estimate>>());

      final search = await context.client.estimates.searchEstimates(
        query: 'test',
      );
      expect(search.items, isA<List<Estimate>>());
    },
    // Estimates (nabídky) cannot be created or updated via the Fakturoid API v3.
    // The API does not support document_type 'estimate' for POST /invoices.json.
    // Only listing/searching pre-existing estimates works.
    skip: true,
  );
}
