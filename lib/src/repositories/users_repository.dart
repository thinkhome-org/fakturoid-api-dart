import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../models/user.dart';

class UsersRepository {
  final Dio _accountDio;
  final Dio _rootDio;

  UsersRepository({required Dio accountDio, required Dio rootDio})
    : _accountDio = accountDio,
      _rootDio = rootDio;

  /// Získá detail aktuálního přihlášeného uživatele a seznam jeho účtů.
  ///
  /// Tento endpoint není ve specifickém účtu (nepoužívá slug).
  Future<User> getCurrentUser() async {
    final response = await _rootDio.get('user.json');
    return User.fromJson(response.data);
  }

  /// Získá seznam uživatelů přiřazených k danému účtu (Account).
  Future<PaginatedResponse<User>> getUsers({int? page}) async {
    final response = await _accountDio.get(
      'users.json',
      queryParameters: page != null ? {'page': page} : null,
    );

    return PaginatedResponse<User>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: User.fromJson,
    );
  }
}
