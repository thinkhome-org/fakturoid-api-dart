import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/inbox_file_enums.dart';

part 'inbox_file.freezed.dart';
part 'inbox_file.g.dart';

@freezed
abstract class InboxFile with _$InboxFile {
  const factory InboxFile({
    int? id,
    String? filename,
    int? bytesize,
    @JsonKey(name: 'send_to_ocr') bool? sendToOcr,
    @JsonKey(name: 'sent_to_ocr_at') DateTime? sentToOcrAt,
    @JsonKey(name: 'ocr_status') OcrStatus? ocrStatus,
    @JsonKey(name: 'ocr_completed_at') DateTime? ocrCompletedAt,
    @JsonKey(name: 'download_url') String? downloadUrl,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _InboxFile;

  factory InboxFile.fromJson(Map<String, dynamic> json) =>
      _$InboxFileFromJson(json);
}
