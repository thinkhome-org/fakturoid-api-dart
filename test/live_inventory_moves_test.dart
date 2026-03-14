import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest(
    'inventory moves section supports create read update and list flows',
    (context) async {
      final shortId = shortRunId(context.runId);
      final suffix = 'inventory-move-$shortId';
      InventoryItem? item;
      InventoryMove? move;

      try {
        item = await context.client.inventoryItems.createItem(
          InventoryItem(
            name: 'OpenCode Item $suffix',
            sku: 'sku-m-$shortId',
            articleNumber: 'arm-$shortId',
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

        move = await context.client.inventoryMoves.createInventoryMove(
          itemId,
          InventoryMove(
            inventoryItemId: itemId,
            direction: InventoryMoveDirection.moveIn,
            movedOn: DateTime.now().toUtc(),
            quantityChange: '2.0',
            purchasePrice: '50.00',
            privateNote: 'Move $suffix',
          ),
        );
        final moveId = move.id!;
        reportPreservedFixture('inventory-move', moveId);

        final globalMoves = await context.client.inventoryMoves
            .getAllInventoryMoves(inventoryItemId: itemId, page: 1);
        final itemMoves = await context.client.inventoryMoves.getInventoryMoves(
          itemId,
          page: 1,
        );
        final fetchedMove = await context.client.inventoryMoves
            .getInventoryMove(itemId, moveId);
        final updatedMove = await context.client.inventoryMoves
            .updateInventoryMove(
              itemId,
              moveId,
              move.copyWith(quantityChange: '3.0'),
            );

        expect(globalMoves.items.any((entry) => entry.id == moveId), isTrue);
        expect(itemMoves.items.any((entry) => entry.id == moveId), isTrue);
        expect(fetchedMove.id, moveId);
        expect(updatedMove.quantityChange, '3.0');
      } finally {
        final moveId = move?.id;
        final itemId = item?.id;
        if (!shouldPreserveFixtures && moveId != null && itemId != null) {
          await ignoreErrors(
            () => context.client.inventoryMoves.deleteInventoryMove(
              itemId,
              moveId,
            ),
          );
        }
        if (!shouldPreserveFixtures && itemId != null) {
          await ignoreErrors(
            () => context.client.inventoryItems.deleteItem(itemId),
          );
        }
      }
    },
  );
}
