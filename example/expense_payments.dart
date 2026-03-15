import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s platbami nákladů.
Future<void> runExpensePaymentsExample(FakturoidClient client) async {
  print('--- Platby nákladů ---');

  try {
    // 1. Vytvoření platby
    // final newPayment = await client.expensePayments.createPayment(
    //   expenseId,
    //   InvoicePayment(paidOn: DateTime.now()),
    // );
    print('🆕 Metoda createPayment je k dispozici.');

    // 2. Smazání platby
    // await client.expensePayments.deletePayment(expenseId, paymentId);
    print('🗑️ Metoda deletePayment je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s platbami nákladů: $e');
  }
}
