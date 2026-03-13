import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('number formats section reads live invoice number formats', (
    context,
  ) async {
    final numberFormats = await context.client.numberFormats.getNumberFormats();

    expect(numberFormats, isA<List<NumberFormat>>());
    expect(numberFormats, isNotEmpty);
  });
}
