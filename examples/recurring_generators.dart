import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s pravidelnými fakturami (Recurring Generators).
Future<void> runRecurringGeneratorsExample(FakturoidClient client) async {
  print('--- Pravidelné faktury ---');

  try {
    // 1. Seznam pravidelných faktur
    final generators = await client.recurringGenerators
        .getRecurringGenerators();
    print('✅ Získáno ${generators.items.length} pravidelných faktur.');

    if (generators.items.isNotEmpty) {
      final firstGen = generators.items.first;
      final id = firstGen.id!;

      // 2. Detail
      final detail = await client.recurringGenerators.getRecurringGenerator(id);
      print('ℹ️ Detail pravidelné faktury $id: ${detail.name}');

      // 3. Upravit
      await client.recurringGenerators.updateRecurringGenerator(
        id,
        detail.copyWith(name: 'Upravená prav. faktura'),
      );
      print('📝 Pravidelná faktura $id byla upravena.');

      // 4. Pozastavit a aktivovat
      // await client.recurringGenerators.pause(id);
      // await client.recurringGenerators.activate(id);
      print('⚡ Metody pause a activate jsou k dispozici.');

      // 5. Smazat
      // await client.recurringGenerators.deleteRecurringGenerator(id);
      print('🗑️ Metoda deleteRecurringGenerator je k dispozici.');
    }

    // 6. Vytvořit
    // await client.recurringGenerators.createRecurringGenerator(RecurringGenerator(...));
    print('🆕 Metoda createRecurringGenerator je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s pravidelnými fakturami: $e');
  }
}
