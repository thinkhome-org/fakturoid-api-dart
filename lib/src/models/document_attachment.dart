import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_attachment.freezed.dart';
part 'document_attachment.g.dart';

@freezed
abstract class DocumentAttachment with _$DocumentAttachment {
  const factory DocumentAttachment({
    @JsonKey(includeToJson: false) int? id,
    String? filename,
    @JsonKey(name: 'data_url') String? dataUrl,
    @JsonKey(name: 'content_type', includeToJson: false) String? contentType,
    @JsonKey(name: 'download_url', includeToJson: false) String? downloadUrl,
  }) = _DocumentAttachment;

  factory DocumentAttachment.fromJson(Map<String, dynamic> json) =>
      _$DocumentAttachmentFromJson(json);
}
