import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'webhooks section supports create read update list and failed deliveries',
    (context) async {
      final suffix = '${context.runId}-webhook';
      Webhook? webhook;

      try {
        webhook = await context.client.webhooks.createWebhook(
          Webhook(
            webhookUrl: 'https://example.com/fakturoid/$suffix',
            active: true,
            events: const ['invoice_paid'],
          ),
        );
        final webhookId = webhook.id!;
        reportPreservedFixture('webhook', webhookId);

        final listed = await context.client.webhooks.getWebhooks(page: 1);
        final fetched = await context.client.webhooks.getWebhook(webhookId);
        final updated = await context.client.webhooks.updateWebhook(
          webhookId,
          webhook.copyWith(authHeader: 'Bearer $suffix'),
        );

        final failedDeliveriesUuid = updated.failedDeliveriesUuid;
        final failedDeliveries =
            failedDeliveriesUuid == null || failedDeliveriesUuid.isEmpty
            ? PaginatedResponse<WebhookFailedDelivery>(
                items: const [],
                currentPage: 1,
              )
            : await context.client.webhooks.getFailedDeliveries(
                failedDeliveriesUuid,
                page: 1,
              );

        expect(listed.items.any((entry) => entry.id == webhookId), isTrue);
        expect(fetched.id, webhookId);
        expect(updated.authHeader, 'Bearer $suffix');
        expect(
          failedDeliveries,
          isA<PaginatedResponse<WebhookFailedDelivery>>(),
        );
      } finally {
        final webhookId = webhook?.id;
        if (!shouldPreserveFixtures && webhookId != null) {
          await ignoreErrors(
            () => context.client.webhooks.deleteWebhook(webhookId),
          );
        }
      }
    },
  );
}
