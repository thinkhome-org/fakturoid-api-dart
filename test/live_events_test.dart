import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('events section reads live events and paid events', (
    context,
  ) async {
    final events = await context.client.events.getEvents(page: 1);
    final paidEvents = await context.client.events.getEventsPaid(page: 1);

    expect(events.items, isA<List<Event>>());
    expect(paidEvents.items, isA<List<Event>>());
  });
}
