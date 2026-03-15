import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s platbami faktur.
Future<void> runInvoicePaymentsExample(FakturoidClient client) async {
  print('--- Platby faktur ---');

  try {
    // 1. Vytvoření platby
    // final newPayment = await client.invoicePayments.createPayment(
    //   invoiceId,
    //   InvoicePayment(paidOn: DateTime.now()),
    // );
    print('🆕 Metoda createPayment je k dispozici.');

    // 2. Vytvoření daňového dokladu (z proforma platby)
    // await client.invoicePayments.createTaxDocument(invoiceId, paymentId);
    print('📄 Metoda createTaxDocument je k dispozici.');

    // 3. Smazání platby
    // await client.invoicePayments.deletePayment(invoiceId, paymentId);
    print('🗑️ Metoda deletePayment je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s platbami faktur: $e');
  }
}
