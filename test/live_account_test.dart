import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api_dart/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('account section reads live account detail', (context) async {
    final account = await context.client.account.getAccount();

    expect(account, isA<Account>());
    expect(account.name, isNotEmpty);
  });
}
