import 'package:flutter_test/flutter_test.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

import 'support/live_test_support.dart';

void main() {
  runLiveTest('todos section reads todos and toggles when available', (
    context,
  ) async {
    final todos = await context.client.todos.getTodos(page: 1);

    expect(todos.items, isA<List<Todo>>());

    if (todos.items.isEmpty) {
      expect(todos.items, isEmpty);
      return;
    }

    final todo = todos.items.first;
    final todoId = todo.id;
    expect(todoId, isNotNull);

    final toggled = await context.client.todos.toggleCompletion(todoId!);
    expect(toggled.id, todoId);

    await context.client.todos.toggleCompletion(todoId);
  });
}
