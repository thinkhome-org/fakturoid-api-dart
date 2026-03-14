import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s Inbox soubory.
Future<void> runInboxFilesExample(FakturoidClient client) async {
  print('--- Inbox soubory ---');

  try {
    // 1. Seznam souborů v inboxu
    final files = await client.inboxFiles.getInboxFiles();
    print('✅ Získáno ${files.items.length} souborů v inboxu.');

    if (files.items.isNotEmpty) {
      final firstFile = files.items.first;
      final id = firstFile.id!;

      // 2. Poslat do OCR
      // await client.inboxFiles.sendToOcr(id);
      print('⚡ Metoda sendToOcr je k dispozici (ID: $id).');

      // 3. Stáhnout soubor
      // await client.inboxFiles.downloadInboxFile(id);
      print('📄 Metoda downloadInboxFile je k dispozici.');

      // 4. Smazat soubor
      // await client.inboxFiles.deleteInboxFile(id);
      print('🗑️ Metoda deleteInboxFile je k dispozici.');
    }

    // 5. Vytvořit soubor (nahrát)
    // await client.inboxFiles.createInboxFile('BASE64_CONTENT', filename: 'invoice.pdf');
    print('🆕 Metoda createInboxFile je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s Inbox soubory: $e');
  }
}
