import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce se skladovými pohyby (Inventory Moves).
Future<void> runInventoryMovesExample(FakturoidClient client) async {
  print('--- Skladové pohyby ---');

  try {
    // 1. Všechny skladové pohyby
    final allMoves = await client.inventoryMoves.getAllInventoryMoves();
    print('✅ Získáno ${allMoves.items.length} skladových pohybů celkem.');

    // 2. Pohyby pro konkrétní položku
    // final moves = await client.inventoryMoves.getInventoryMoves(inventoryItemId);
    print('ℹ️ Metoda getInventoryMoves pro konkrétní položku je k dispozici.');

    // 3. Detail pohybu
    // final move = await client.inventoryMoves.getInventoryMove(inventoryItemId, moveId);
    print('ℹ️ Metoda getInventoryMove je k dispozici.');

    // 4. Vytvoření pohybu
    // await client.inventoryMoves.createInventoryMove(inventoryItemId, InventoryMove(...));
    print('🆕 Metoda createInventoryMove je k dispozici.');

    // 5. Uprava pohybu
    // await client.inventoryMoves.updateInventoryMove(inventoryItemId, moveId, InventoryMove(...));
    print('📝 Metoda updateInventoryMove je k dispozici.');

    // 6. Smazání pohybu
    // await client.inventoryMoves.deleteInventoryMove(inventoryItemId, moveId);
    print('🗑️ Metoda deleteInventoryMove je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci se skladovými pohyby: $e');
  }
}
