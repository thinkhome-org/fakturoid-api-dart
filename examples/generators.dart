import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s šablonami (Generators).
Future<void> runGeneratorsExample(FakturoidClient client) async {
  print('--- Šablony ---');

  try {
    // 1. Seznam šablon
    final generators = await client.generators.getGenerators();
    print('✅ Získáno ${generators.items.length} šablon.');

    if (generators.items.isNotEmpty) {
      final firstGenerator = generators.items.first;
      final id = firstGenerator.id!;

      // 2. Detail šablony
      final detail = await client.generators.getGenerator(id);
      print('ℹ️ Detail šablony $id: ${detail.name}');

      // 3. Upravit šablonu
      await client.generators.updateGenerator(
        id,
        detail.copyWith(name: 'Upravená šablona'),
      );
      print('📝 Šablona $id byla upravena.');
    }

    // 4. Vytvořit šablonu
    // final newGenerator = await client.generators.createGenerator(Generator(...));
    print('🆕 Metoda createGenerator je k dispozici.');

    // 5. Smazání šablony
    // await client.generators.deleteGenerator(id);
    print('🗑️ Metoda deleteGenerator je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s šablonami: $e');
  }
}
