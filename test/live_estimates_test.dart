import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';
import 'support/live_test_support.dart';

void main() {
  // Fakturoid API v3 nepodporuje vytváření nabídek (estimates) přes API.
  // Nabídky lze vytvářet pouze přes webové rozhraní.
  // API vrací 422: "document_type: není v seznamu povolených hodnot"
  // při pokusu o POST /invoices.json s document_type=estimate.
  //
  // Filtrování nabídek přes GET /invoices.json?document_type=estimate
  // také nefunguje - API vrací 400: "Parameter document_type is invalid".
  //
  // Tento test ověřuje pouze metody, které pracují s existujícími nabídkami
  // (detail, akce, PDF, zprávy), ale ty vyžadují známé ID nabídky.
  // Proto je test přeskočen - nelze automaticky vytvořit testovací data.
  runLiveTest('estimates repository works with existing estimates by ID', (
    context,
  ) async {
    // Without an existing estimate ID, we can only verify the repository exists
    // and the methods are callable. Full integration testing requires
    // an estimate created via the web interface.
    expect(context.client.estimates, isA<EstimatesRepository>());
  }, skip: true);
}
