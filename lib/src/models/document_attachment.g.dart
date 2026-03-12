// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentAttachment _$DocumentAttachmentFromJson(Map<String, dynamic> json) =>
    _DocumentAttachment(
      id: (json['id'] as num?)?.toInt(),
      filename: json['filename'] as String?,
      dataUrl: json['data_url'] as String?,
      contentType: json['content_type'] as String?,
      downloadUrl: json['download_url'] as String?,
    );

Map<String, dynamic> _$DocumentAttachmentToJson(_DocumentAttachment instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'data_url': instance.dataUrl,
    };
