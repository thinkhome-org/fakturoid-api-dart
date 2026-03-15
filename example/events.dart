import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s událostmi (Events).
Future<void> runEventsExample(FakturoidClient client) async {
  print('--- Události ---');

  try {
    // 1. Získání seznamu událostí
    final events = await client.events.getEvents();
    print('✅ Získáno ${events.items.length} událostí.');

    // 2. Události o zaplacení
    final paidEvents = await client.events.getEventsPaid();
    print('✅ Získáno ${paidEvents.items.length} událostí o zaplacení.');
  } catch (e) {
    print('❌ Chyba při práci s událostmi: $e');
  }
}
