import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s fakturami (Invoices).
Future<void> runInvoicesExample(FakturoidClient client) async {
  print('--- Faktury ---');

  try {
    // 1. Seznam faktur
    final invoices = await client.invoices.getInvoices();
    print('✅ Získáno ${invoices.items.length} faktur.');

    // 2. Vyhledávání ve fakturách
    final searchResults = await client.invoices.searchInvoices(query: 'Test');
    print('🔍 Nalezeno ${searchResults.items.length} faktur pro dotaz "Test".');

    if (invoices.items.isNotEmpty) {
      final firstInvoice = invoices.items.first;
      final id = firstInvoice.id!;

      // 3. Detail faktury
      final detail = await client.invoices.getInvoice(id);
      print('ℹ️ Detail faktury $id: ${detail.number} (${detail.total})');

      // 4. Upravit fakturu
      await client.invoices.updateInvoice(
        id,
        detail.copyWith(note: 'Poznámka upravena'),
      );
      print('📝 Faktura $id byla upravena.');

      // 5. Fire action
      // await client.invoices.fireAction(id, InvoiceFireAction.pay);
      print('⚡ Akce fireAction je k dispozici.');

      // 6. Stáhnout PDF
      // await client.invoices.downloadInvoicePdf(id);
      print('📄 Metoda downloadInvoicePdf je k dispozici.');

      // 7. Stáhnout přílohu
      // if (detail.attachments?.isNotEmpty ?? false) {
      //   await client.invoices.downloadAttachment(id, detail.attachments!.first.id!);
      // }
      print('📄 Metoda downloadAttachment je k dispozici.');
    }

    // 8. Vytvoření faktury
    // final newInvoice = await client.invoices.createInvoice(Invoice(...));
    print('🆕 Metoda createInvoice je k dispozici.');

    // 9. Smazání faktury
    // await client.invoices.deleteInvoice(id);
    print('🗑️ Metoda deleteInvoice je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s fakturami: $e');
  }
}
