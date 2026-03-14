import 'package:fakturoid_api_dart/fakturoid_api_dart.dart';

/// Ukázka práce s úkoly (Todos).
Future<void> runTodosExample(FakturoidClient client) async {
  print('--- Úkoly ---');

  try {
    // 1. Seznam úkolů
    final todos = await client.todos.getTodos();
    print('✅ Získáno ${todos.items.length} úkolů.');

    if (todos.items.isNotEmpty) {
      final firstTodo = todos.items.first;
      final id = firstTodo.id!;

      // 2. Přepnutí stavu splnění
      final updated = await client.todos.toggleCompletion(id);
      print('📝 Úkol $id byl přepnut (splněno: ${updated.completedAt != null}).');
    }
  } catch (e) {
    print('❌ Chyba při práci s úkoly: $e');
  }
}
