import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/todo.dart';

class TodosRepository {
  final Dio _dio;

  TodosRepository(this._dio);

  /// Vrací seznam úkolů (Todos).
  ///
  /// * [since] - Úkoly vytvořené po tomto datu.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  Future<PaginatedResponse<Todo>> getTodos({DateTime? since, int? page}) async {
    final response = await _dio.get(
      '/todos.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'page': page,
      }),
    );

    final List<dynamic> data = response.data;
    final items = data.map((json) => Todo.fromJson(json)).toList();

    return PaginatedResponse<Todo>(items: items, currentPage: page ?? 1);
  }

  /// Označí úkol jako splněný nebo jej vrátí do stavu ke splnění.
  Future<Todo> toggleCompletion(int id) async {
    final response = await _dio.post('/todos/$id/toggle_completion.json');
    return Todo.fromJson(response.data);
  }
}
