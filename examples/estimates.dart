import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s nabídkami (Estimates).
Future<void> runEstimatesExample(FakturoidClient client) async {
  print('--- Nabídky ---');

  try {
    // 1. Seznam nabídek
    final estimates = await client.estimates.getEstimates();
    print('✅ Získáno ${estimates.items.length} nabídek.');

    // 2. Vyhledávání v nabídkách
    final searchResults = await client.estimates.searchEstimates(query: 'Projekt');
    print('🔍 Nalezeno ${searchResults.items.length} nabídek pro dotaz "Projekt".');

    if (estimates.items.isNotEmpty) {
      final firstEstimate = estimates.items.first;
      final id = firstEstimate.id!;

      // 3. Detail nabídky
      final detail = await client.estimates.getEstimate(id);
      print('ℹ️ Detail nabídky $id: ${detail.number} (${detail.total})');

      // 4. Upravit nabídku
      await client.estimates.updateEstimate(
        id,
        detail.copyWith(note: 'Upravená poznámka'),
      );
      print('📝 Nabídka $id byla upravena.');

      // 5. Fire action (např. označit jako odeslanou)
      // await client.estimates.fireAction(id, EstimateFireAction.send);
      print('⚡ Akce fireAction je k dispozici (např. odeslání).');

      // 6. Stáhnout PDF
      // final pdfBytes = await client.estimates.downloadEstimatePdf(id);
      print('📄 Metoda downloadEstimatePdf je k dispozici.');

      // 7. Vytvořit zprávu (odeslat e-mailem)
      // await client.estimates.createMessage(id, email: 'klient@example.cz', message: 'Posílám nabídku.');
      print('✉️ Metoda createMessage je k dispozici.');
    }

    // 8. Vytvoření nové nabídky (příklad s minimem dat)
    // final newEstimate = await client.estimates.createEstimate(Estimate(...));
    print('🆕 Metoda createEstimate je k dispozici.');

    // 9. Smazání nabídky
    // await client.estimates.deleteEstimate(id);
    print('🗑️ Metoda deleteEstimate je k dispozici.');
  } catch (e) {
    print('❌ Chyba při práci s nabídkami: $e');
  }
}
