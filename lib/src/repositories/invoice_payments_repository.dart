import 'package:dio/dio.dart';
import '../core/utils/api_utils.dart';
import '../models/invoice_payment.dart';

class InvoicePaymentsRepository {
  final Dio _dio;

  InvoicePaymentsRepository(this._dio);

  /// Vytvoří novou platbu k faktuře.
  ///
  /// Většina polí je volitelná a Fakturoid je automaticky odvodí (např. částku z celkové zbývající částky).
  Future<InvoicePayment> createPayment(
    int invoiceId,
    InvoicePayment payment,
  ) async {
    final response = await _dio.post(
      'invoices/$invoiceId/payments.json',
      data: ApiUtils.removeNulls(payment.toJson()),
    );
    return InvoicePayment.fromJson(response.data);
  }

  /// Vytvoří daňový doklad k platbě.
  /// Použitelné typicky pro platby z proforma faktur.
  Future<InvoicePayment> createTaxDocument(
    int invoiceId,
    int paymentId, {
    Map<String, dynamic>? data,
  }) async {
    final response = await _dio.post(
      'invoices/$invoiceId/payments/$paymentId/create_tax_document.json',
      data: data,
    );

    return InvoicePayment.fromJson(response.data);
  }

  /// Smaže existující platbu k faktuře.
  Future<void> deletePayment(int invoiceId, int paymentId) async {
    await _dio.delete('invoices/$invoiceId/payments/$paymentId.json');
  }
}
