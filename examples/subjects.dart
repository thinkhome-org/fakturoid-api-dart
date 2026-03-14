import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s kontakty (Subjects).
Future<void> runSubjectsExample(FakturoidClient client) async {
  print('--- Kontakty ---');

  try {
    // 1. Seznam kontaktů
    final subjects = await client.subjects.getSubjects();
    print('✅ Získáno ${subjects.items.length} kontaktů.');

    // 2. Vyhledávání v kontaktech
    final search = await client.subjects.searchSubjects(query: 'Firma');
    print('🔍 Nalezeno ${search.items.length} kontaktů pro dotaz "Firma".');

    if (subjects.items.isNotEmpty) {
      final firstSubject = subjects.items.first;
      final id = firstSubject.id!;

      // 3. Detail kontaktu
      final detail = await client.subjects.getSubject(id);
      print('ℹ️ Detail kontaktu $id: ${detail.name}');

      // 4. Upravit kontakt
      await client.subjects.updateSubject(
        id,
        detail.copyWith(privateNote: 'Upravená poznámka'),
      );
      print('📝 Kontakt $id byl upraven.');

      // 5. Fire action (archivace/obnovení)
      // await client.subjects.fireAction(id, SubjectFireAction.archive);
      print('⚡ Akce fireAction je k dispozici.');

      // 6. Archivace
      // await client.subjects.archiveSubject(id);
      print('📦 Metoda archiveSubject je k dispozici.');

      // 7. Obnovení z archivu
      // await client.subjects.unarchiveSubject(id);
      print('📦 Metoda unarchiveSubject je k dispozici.');

      // 8. Smazání kontaktu
      // await client.subjects.deleteSubject(id);
      print('🗑️ Metoda deleteSubject je k dispozici.');
    }

    // 9. Vytvoření kontaktu
    // final newSubject = await client.subjects.createSubject(Subject(name: 'Nová Firma s.r.o.'));
    print('🆕 Metoda createSubject je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s kontakty: $e');
  }
}
