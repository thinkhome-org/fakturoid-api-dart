import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s nabídkami (Estimates).
///
/// Fakturoid API v3 nepodporuje vytváření ani listování nabídek přes API.
/// Nabídky lze vytvářet pouze přes webové rozhraní Fakturoid.
/// Přes API lze pracovat s existujícími nabídkami (detail, smazání, akce, PDF, zprávy).
Future<void> runEstimatesExample(FakturoidClient client) async {
  print('--- Nabídky ---');

  try {
    // Pro práci s nabídkami potřebujete znát ID nabídky
    // (např. z webového rozhraní nebo z události/webhoku).

    // 1. Detail nabídky (vyžaduje známé ID)
    // final detail = await client.estimates.getEstimate(id);
    // print('Detail nabídky: ${detail.number} (${detail.total})');

    // 2. Fire action (např. označit jako odeslanou, přijmout)
    // await client.estimates.fireAction(id, EstimateFireAction.markAsSent);

    // 3. Stáhnout PDF
    // final pdfBytes = await client.estimates.downloadEstimatePdf(id);

    // 4. Odeslat e-mailem
    // await client.estimates.createMessage(id, email: 'klient@example.cz');

    // 5. Smazat nabídku
    // await client.estimates.deleteEstimate(id);

    print(
      'Nabídky: metody pro detail, akce, PDF, zprávy a smazání jsou k dispozici.',
    );
    print('Poznámka: Listování a vytváření nabídek přes API není podporováno.');
  } catch (e) {
    print('Chyba při práci s nabídkami: $e');
  }
}
