import 'package:dio/dio.dart';
import '../models/account.dart';

class AccountRepository {
  final Dio _dio;

  AccountRepository(this._dio);

  /// Získá detail aktuálního účtu (Account).
  Future<Account> getAccount() async {
    final response = await _dio.get('/account.json');
    return Account.fromJson(response.data);
  }
}
