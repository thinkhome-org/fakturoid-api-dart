import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s webhooky.
Future<void> runWebhooksExample(FakturoidClient client) async {
  print('--- Webhooky ---');

  try {
    // 1. Seznam webhooků
    final webhooks = await client.webhooks.getWebhooks();
    print('✅ Získáno ${webhooks.items.length} webhooků.');

    if (webhooks.items.isNotEmpty) {
      final firstWebhook = webhooks.items.first;
      final id = firstWebhook.id!;

      // 2. Detail
      final detail = await client.webhooks.getWebhook(id);
      print('ℹ️ Detail webhooku $id: ${detail.url}');

      // 3. Upravit
      await client.webhooks.updateWebhook(
        id,
        detail.copyWith(events: ['invoice_paid']),
      );
      print('📝 Webhook $id byl upraven.');

      // 4. Nedoručené zprávy
      // if (detail.failedDeliveriesUuid != null) {
      //   await client.webhooks.getFailedDeliveries(detail.failedDeliveriesUuid!);
      // }
      print('ℹ️ Metoda getFailedDeliveries je k dispozici.');

      // 5. Smazat
      // await client.webhooks.deleteWebhook(id);
      print('🗑️ Metoda deleteWebhook je k dispozici.');
    }

    // 6. Vytvořit
    // await client.webhooks.createWebhook(Webhook(url: 'https://moje.app/webhook', webhookEvents: ['invoice_created']));
    print('🆕 Metoda createWebhook je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s webhooky: $e');
  }
}
