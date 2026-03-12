import 'package:dio/dio.dart';
import '../core/utils/api_utils.dart';
import '../models/invoice_payment.dart';

class ExpensePaymentsRepository {
  final Dio _dio;

  ExpensePaymentsRepository(this._dio);

  /// Vytvoří novou platbu k nákladu (expense).
  ///
  /// Většina polí (např. amount) je volitelná a Fakturoid je dopočítá.
  Future<InvoicePayment> createPayment(
    int expenseId,
    InvoicePayment payment,
  ) async {
    final response = await _dio.post(
      '/expenses/$expenseId/payments.json',
      data: ApiUtils.removeNulls(payment.toJson()),
    );
    return InvoicePayment.fromJson(response.data);
  }

  /// Smaže existující platbu k nákladu.
  Future<void> deletePayment(int expenseId, int paymentId) async {
    await _dio.delete('/expenses/$expenseId/payments/$paymentId.json');
  }
}
