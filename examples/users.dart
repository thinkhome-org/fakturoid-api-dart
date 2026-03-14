import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s uživateli.
Future<void> runUsersExample(FakturoidClient client) async {
  print('--- Uživatelé ---');

  try {
    // 1. Detail aktuálního uživatele (globální endpoint)
    final currentUser = await client.users.getCurrentUser();
    print(
      '✅ Aktuální uživatel: ${currentUser.fullName} (${currentUser.email})',
    );

    // 2. Seznam uživatelů u daného účtu
    final accountUsers = await client.users.getUsers();
    print(
      '✅ Získáno ${accountUsers.items.length} uživatelů u aktuálního účtu.',
    );
    for (var user in accountUsers.items) {
      print('- ${user.fullName} (${user.email})');
    }
  } catch (e) {
    print('❌ Chyba při práci s uživateli: $e');
  }
}
