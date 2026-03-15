import 'dart:typed_data';
import 'package:dio/dio.dart';
import '../core/exceptions/fakturoid_exceptions.dart';
import '../core/utils/api_utils.dart';
import '../models/estimate.dart';
import '../models/enums/estimate_enums.dart';

/// Nabídky (estimates) sdílejí endpoint s fakturami (/invoices).
///
/// Fakturoid API v3 nepodporuje vytváření ani filtrování nabídek přes API.
/// Nabídky lze vytvářet pouze přes webové rozhraní Fakturoid.
/// Tento repository umožňuje pracovat s existujícími nabídkami (detail, smazání,
/// akce, stažení PDF a odeslání e-mailem).
class EstimatesRepository {
  final Dio _dio;

  EstimatesRepository(this._dio);

  /// Získá detail jedné nabídky podle ID.
  ///
  /// Nabídky sdílejí endpoint s fakturami, takže ID musí být známé
  /// (např. z webového rozhraní nebo z události/webhoku).
  Future<Estimate> getEstimate(int id) async {
    final response = await _dio.get('invoices/$id.json');
    return Estimate.fromJson(response.data);
  }

  /// Smaže nabídku podle ID.
  Future<void> deleteEstimate(int id) async {
    await _dio.delete('invoices/$id.json');
  }

  /// Provede akci s nabídkou (např. označí jako odeslanou, přijme atd.).
  Future<void> fireAction(int id, EstimateFireAction action) async {
    await _dio.post(
      'invoices/$id/fire.json',
      queryParameters: {'event': action.value},
    );
  }

  /// Stáhne PDF nabídky jako pole bajtů.
  Future<Uint8List> downloadEstimatePdf(int id) async {
    final response = await _dio.get(
      'invoices/$id/download.pdf',
      options: Options(responseType: ResponseType.bytes),
    );

    if (response.statusCode == 204 || response.data == null) {
      throw FakturoidDocumentNotReadyException(
        'Estimate PDF is not ready yet. Retry the request later.',
      );
    }

    return ApiUtils.responseBytes(response.data);
  }

  /// Odeslání nabídky e-mailem.
  Future<void> createMessage(
    int estimateId, {
    String? email,
    String? emailCopy,
    String? subject,
    String? message,
  }) async {
    final data = ApiUtils.removeNulls({
      'email': email,
      'email_copy': emailCopy,
      'subject': subject,
      'message': message,
    });

    await _dio.post(
      'invoices/$estimateId/message.json',
      data: data.isEmpty ? null : data,
    );
  }
}
