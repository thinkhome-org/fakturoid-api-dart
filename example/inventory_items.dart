import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s položkami ceníku (Inventory Items).
Future<void> runInventoryItemsExample(FakturoidClient client) async {
  print('--- Položky ceníku ---');

  try {
    // 1. Seznam položek
    final items = await client.inventoryItems.getInventoryItems();
    print('✅ Získáno ${items.items.length} položek.');

    // 2. Archivované položky
    final archived = await client.inventoryItems.getArchivedItems();
    print('📦 Získáno ${archived.items.length} archivovaných položek.');

    // 3. Položky s nízkým stavem
    final lowQuantity = await client.inventoryItems.getLowQuantityItems();
    print('⚠️ Získáno ${lowQuantity.items.length} položek s nízkým stavem.');

    // 4. Vyhledávání
    final search = await client.inventoryItems.searchItems(query: 'Produkt');
    print('🔍 Nalezeno ${search.items.length} položek pro dotaz "Produkt".');

    if (items.items.isNotEmpty) {
      final firstItem = items.items.first;
      final id = firstItem.id!;

      // 5. Detail položky
      final detail = await client.inventoryItems.getItem(id);
      print('ℹ️ Detail položky $id: ${detail.name}');

      // 6. Upravit položku
      await client.inventoryItems.updateItem(
        id,
        detail.copyWith(name: 'Upravený produkt'),
      );
      print('📝 Položka $id byla upravena.');

      // 7. Archivace a obnovení
      // await client.inventoryItems.archiveItem(id);
      // await client.inventoryItems.unarchiveItem(id);
      print('📦 Metody archiveItem a unarchiveItem jsou k dispozici.');

      // 8. Smazání
      // await client.inventoryItems.deleteItem(id);
      print('🗑️ Metoda deleteItem je k dispozici.');
    }

    // 9. Vytvoření položky
    // await client.inventoryItems.createItem(InventoryItem(...));
    print('🆕 Metoda createItem je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s položkami ceníku: $e');
  }
}
