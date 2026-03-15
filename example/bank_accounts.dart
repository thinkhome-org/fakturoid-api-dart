import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s bankovními účty.
Future<void> runBankAccountsExample(FakturoidClient client) async {
  print('--- Bankovní účty ---');

  try {
    // 1. Seznam bankovních účtů
    final bankAccounts = await client.bankAccounts.getBankAccounts();
    print('✅ Získáno ${bankAccounts.length} bankovních účtů.');
    for (var ba in bankAccounts) {
      print('- ${ba.name}: ${ba.number}');
    }
  } catch (e) {
    print('❌ Chyba při práci s bankovními účty: $e');
  }
}
