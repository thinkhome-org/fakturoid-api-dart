import 'package:dio/dio.dart';
import '../core/utils/api_utils.dart';

class InvoiceMessagesRepository {
  final Dio _dio;

  InvoiceMessagesRepository(this._dio);

  Future<void> createMessage(
    int invoiceId, {
    String? email,
    String? emailCopy,
    String? subject,
    String? message,
    bool? deliverNow,
  }) async {
    final data = ApiUtils.removeNulls({
      'email': email,
      'email_copy': emailCopy,
      'subject': subject,
      'message': message,
      'deliver_now': deliverNow,
    });

    await _dio.post(
      '/invoices/$invoiceId/message.json',
      data: data.isEmpty ? null : data,
    );
  }
}
