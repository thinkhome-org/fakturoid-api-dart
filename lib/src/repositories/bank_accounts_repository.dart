import 'package:dio/dio.dart';
import '../models/bank_account.dart';

class BankAccountsRepository {
  final Dio _dio;

  BankAccountsRepository(this._dio);

  /// Vrací seznam všech bankovních účtů propojených s Fakturoid účtem.
  /// U bankovních účtů se běžně nestránkuje, ale vrací se kompletní seznam.
  Future<List<BankAccount>> getBankAccounts() async {
    final response = await _dio.get('/bank_accounts.json');
    final List<dynamic> data = response.data;
    return data.map((json) => BankAccount.fromJson(json)).toList();
  }
}
