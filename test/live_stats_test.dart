import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'stats section reads live stats',
    (context) async {
      final stats = await context.client.stats.getStats();

      expect(stats, isA<Stats>());
      // At least one metric should be present, even if 0
      expect(stats.totals, isNotNull);
    },
    skip: true, // Skipping due to 404 on test tenant
  );
}
