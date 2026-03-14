import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s číselnými formáty.
Future<void> runNumberFormatsExample(FakturoidClient client) async {
  print('--- Číselné formáty ---');

  try {
    // 1. Seznam číselných formátů
    final formats = await client.numberFormats.getNumberFormats();
    print('✅ Získáno ${formats.length} číselných formátů.');
    for (var fmt in formats) {
      print('- Formát: ${fmt.format}');
    }
  } catch (e) {
    print('❌ Chyba při práci s číselnými formáty: $e');
  }
}
