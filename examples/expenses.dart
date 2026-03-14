import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s náklady (Expenses).
Future<void> runExpensesExample(FakturoidClient client) async {
  print('--- Náklady ---');

  try {
    // 1. Seznam nákladů
    final expenses = await client.expenses.getExpenses();
    print('✅ Získáno ${expenses.items.length} nákladů.');

    // 2. Vyhledávání v nákladech
    final searchResults = await client.expenses.searchExpenses(query: 'Server');
    print('🔍 Nalezeno ${searchResults.items.length} nákladů pro dotaz "Server".');

    if (expenses.items.isNotEmpty) {
      final firstExpense = expenses.items.first;
      final id = firstExpense.id!;

      // 3. Detail nákladu
      final detail = await client.expenses.getExpense(id);
      print('ℹ️ Detail nákladu $id: ${detail.number} (${detail.total})');

      // 4. Upravit náklad
      await client.expenses.updateExpense(
        id,
        detail.copyWith(variableSymbol: '99887766'),
      );
      print('📝 Náklad $id byl upraven.');

      // 5. Fire action
      // await client.expenses.fireAction(id, ExpenseFireAction.lock);
      print('⚡ Akce fireAction je k dispozici.');

      // 6. Stáhnout přílohu
      // if (detail.attachments?.isNotEmpty ?? false) {
      //   await client.expenses.downloadAttachment(id, detail.attachments!.first.id!);
      // }
      print('📄 Metoda downloadAttachment je k dispozici.');
    }

    // 7. Vytvořit náklad
    // final newExpense = await client.expenses.createExpense(Expense(...));
    print('🆕 Metoda createExpense je k dispozici.');

    // 8. Smazání nákladu
    // await client.expenses.deleteExpense(id);
    print('🗑️ Metoda deleteExpense je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s náklady: $e');
  }
}
