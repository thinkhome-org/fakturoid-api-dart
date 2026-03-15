import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s účtem.
Future<void> runAccountExample(FakturoidClient client) async {
  print('--- Účet ---');

  try {
    // 1. Získání detailu účtu
    final account = await client.account.getAccount();
    print('✅ Detail účtu získán: ${account.name} (Slug: ${account.subdomain})');
  } catch (e) {
    print('❌ Chyba při práci s účtem: $e');
  }
}
