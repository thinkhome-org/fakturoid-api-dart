import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../models/user.dart';

class UsersRepository {
  final Dio _dio;

  UsersRepository(this._dio);

  /// Získá detail aktuálního přihlášeného uživatele a seznam jeho účtů.
  ///
  /// Poznámka: Tento endpoint není ve specifickém účtu (nepoužívá slug).
  /// Proto voláme `/user.json` přímo na kořenovou URL. K tomu vytvoříme
  /// izolovaného Dio klienta, který zduplikuje options, ale vymaže basePath.
  Future<User> getCurrentUser() async {
    final rootDio = Dio(
      _dio.options.copyWith(baseUrl: 'https://app.fakturoid.cz/api/v3'),
    );
    rootDio.httpClientAdapter = _dio.httpClientAdapter;
    rootDio.interceptors.addAll(_dio.interceptors);

    final response = await rootDio.get('/user.json');
    return User.fromJson(response.data);
  }

  /// Získá seznam uživatelů přiřazených k danému účtu (Account).
  Future<PaginatedResponse<User>> getUsers({int? page}) async {
    final response = await _dio.get(
      '/users.json',
      queryParameters: page != null ? {'page': page} : null,
    );

    return PaginatedResponse<User>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: User.fromJson,
    );
  }
}
