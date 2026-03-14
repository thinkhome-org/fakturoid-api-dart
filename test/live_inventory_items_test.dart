import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'inventory items section supports create read update search archive flows',
    (context) async {
      final shortId = shortRunId(context.runId);
      final suffix = 'inventory-$shortId';
      InventoryItem? item;

      try {
        item = await context.client.inventoryItems.createItem(
          InventoryItem(
            name: 'OpenCode Item $suffix',
            sku: 'sku-$shortId',
            articleNumber: 'art-$shortId',
            trackQuantity: true,
            quantity: '10.0',
            minQuantity: '1.0',
            nativePurchasePrice: '50.00',
            nativeRetailPrice: '70.00',
            privateNote: 'Item $suffix',
          ),
        );
        final itemId = item.id!;
        reportPreservedFixture('inventory-item', itemId);

        final listed = await context.client.inventoryItems.getInventoryItems(
          sku: item.sku,
          page: 1,
        );
        final searched = await context.client.inventoryItems.searchItems(
          query: suffix,
          page: 1,
        );
        final fetched = await context.client.inventoryItems.getItem(itemId);
        final updated = await context.client.inventoryItems.updateItem(
          itemId,
          item.copyWith(privateNote: 'updated-$suffix'),
        );

        await context.client.inventoryItems.archiveItem(itemId);
        final archived = await context.client.inventoryItems.getArchivedItems(
          sku: item.sku,
          page: 1,
        );
        await context.client.inventoryItems.unarchiveItem(itemId);
        final lowQuantity = await context.client.inventoryItems
            .getLowQuantityItems(page: 1);

        expect(listed.items.any((entry) => entry.id == itemId), isTrue);
        expect(searched.items, isA<List<InventoryItem>>());
        expect(fetched.id, itemId);
        expect(updated.privateNote, 'updated-$suffix');
        expect(archived.items.any((entry) => entry.id == itemId), isTrue);
        expect(lowQuantity.items, isA<List<InventoryItem>>());
      } finally {
        final itemId = item?.id;
        if (!shouldPreserveFixtures && itemId != null) {
          await ignoreErrors(
            () => context.client.inventoryItems.deleteItem(itemId),
          );
        }
      }
    },
  );
}
