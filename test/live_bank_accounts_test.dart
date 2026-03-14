import 'package:test/test.dart';
import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('bank accounts section reads live bank accounts', (
    context,
  ) async {
    final bankAccounts = await context.client.bankAccounts.getBankAccounts();

    expect(bankAccounts, isA<List<BankAccount>>());
  });
}
