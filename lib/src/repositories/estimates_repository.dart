import 'dart:typed_data';
import 'package:dio/dio.dart';
import '../core/exceptions/fakturoid_exceptions.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/estimate.dart';
import '../models/enums/estimate_enums.dart';

class EstimatesRepository {
  final Dio _dio;

  EstimatesRepository(this._dio);

  /// Seznam všech nabídek.
  Future<PaginatedResponse<Estimate>> getEstimates({
    DateTime? since,
    DateTime? until,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    int? page,
    int? subjectId,
    String? customId,
    String? number,
    EstimateStatus? status,
  }) async {
    final response = await _dio.get(
      'invoices.json',
      queryParameters: ApiUtils.removeNulls({
        'document_type': 'estimate',
        'since': since?.toIso8601String(),
        'until': until?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'updated_until': updatedUntil?.toIso8601String(),
        'page': page,
        'subject_id': subjectId,
        'custom_id': customId,
        'number': number,
        'status': status?.name,
      }),
    );

    return PaginatedResponse<Estimate>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: Estimate.fromJson,
    );
  }

  /// Vyhledává v nabídkách pomocí fulltextu.
  Future<PaginatedResponse<Estimate>> searchEstimates({
    required String query,
    int? page,
    List<String>? tags,
  }) async {
    final response = await _dio.get(
      'invoices/search.json',
      queryParameters: ApiUtils.removeNulls({
        'document_type': 'estimate',
        'query': query,
        'page': page,
        'tags[]': tags,
      }),
    );

    return PaginatedResponse<Estimate>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: Estimate.fromJson,
    );
  }

  /// Získá detail jedné nabídky podle ID.
  Future<Estimate> getEstimate(int id) async {
    final response = await _dio.get('invoices/$id.json');
    return Estimate.fromJson(response.data);
  }

  /// Vytvoří novou nabídku.
  Future<Estimate> createEstimate(Estimate estimate) async {
    final data = ApiUtils.removeNulls(estimate.toJson());
    data['document_type'] = 'estimate';

    final response = await _dio.post('invoices.json', data: data);
    return Estimate.fromJson(response.data);
  }

  /// Upraví existující nabídku.
  Future<Estimate> updateEstimate(int id, Estimate estimate) async {
    final response = await _dio.patch(
      'invoices/$id.json',
      data: ApiUtils.removeNulls(estimate.toJson()),
    );
    return Estimate.fromJson(response.data);
  }

  /// Smaže nabídku podle ID.
  Future<void> deleteEstimate(int id) async {
    await _dio.delete('invoices/$id.json');
  }

  /// Provede akci s nabídkou (např. označí jako odeslanou, přijme atd.).
  Future<void> fireAction(int id, EstimateFireAction action) async {
    await _dio.post('invoices/$id/fire.json', data: {'event': action.value});
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

    return _responseBytes(response.data);
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

Uint8List _responseBytes(Object? data) {
  if (data is Uint8List) {
    return data;
  }

  if (data is List<int>) {
    return Uint8List.fromList(data);
  }

  throw StateError('Expected binary response data.');
}
