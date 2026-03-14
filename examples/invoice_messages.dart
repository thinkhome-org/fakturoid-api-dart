import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce se zprávami k fakturám.
Future<void> runInvoiceMessagesExample(FakturoidClient client) async {
  print('--- Zprávy k fakturám ---');

  try {
    // 1. Vytvoření zprávy (odeslání e-mailu)
    // await client.invoiceMessages.createMessage(
    //   invoiceId,
    //   email: 'klient@example.cz',
    //   subject: 'Faktura za služby',
    //   message: 'Dobrý den, v příloze zasíláme fakturu.',
    //   deliverNow: true,
    // );
    print('🆕 Metoda createMessage je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci se zprávami k fakturám: $e');
  }
}
