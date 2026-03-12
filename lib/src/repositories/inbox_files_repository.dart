import 'dart:typed_data';
import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/inbox_file.dart';

class InboxFilesRepository {
  final Dio _dio;

  InboxFilesRepository(this._dio);

  /// Vrací seznam Inbox souborů.
  Future<PaginatedResponse<InboxFile>> getInboxFiles({int? page}) async {
    final response = await _dio.get(
      '/inbox_files.json',
      queryParameters: ApiUtils.removeNulls({'page': page}),
    );

    final List<dynamic> data = response.data;
    final items = data.map((json) => InboxFile.fromJson(json)).toList();

    return PaginatedResponse<InboxFile>(items: items, currentPage: page ?? 1);
  }

  Future<InboxFile> createInboxFile(
    String attachmentBase64, {
    String? filename,
    bool? sendToOcr,
  }) async {
    final response = await _dio.post(
      '/inbox_files.json',
      data: ApiUtils.removeNulls({
        'attachment': attachmentBase64,
        'filename': filename,
        'send_to_ocr': sendToOcr,
      }),
    );
    return InboxFile.fromJson(response.data);
  }

  /// Pošle existující soubor do OCR pro zpracování.
  Future<void> sendToOcr(int id) async {
    await _dio.post('/inbox_files/$id/send_to_ocr.json');
  }

  /// Stáhne obsah souboru jako pole bajtů.
  Future<Uint8List> downloadInboxFile(int id) async {
    final response = await _dio.get(
      '/inbox_files/$id/download',
      options: Options(responseType: ResponseType.bytes),
    );
    return Uint8List.fromList(response.data);
  }

  /// Smaže Inbox soubor.
  Future<void> deleteInboxFile(int id) async {
    await _dio.delete('/inbox_files/$id.json');
  }
}
