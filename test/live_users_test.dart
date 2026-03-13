import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('users section reads current user and users list', (
    context,
  ) async {
    final currentUser = await context.client.users.getCurrentUser();
    final users = await context.client.users.getUsers(page: 1);

    expect(currentUser, isA<User>());
    expect(currentUser.email, isNotEmpty);
    expect(users.items, isA<List<User>>());
  });
}
