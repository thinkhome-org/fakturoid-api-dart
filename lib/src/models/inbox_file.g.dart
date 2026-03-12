// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InboxFile _$InboxFileFromJson(Map<String, dynamic> json) => _InboxFile(
  id: (json['id'] as num?)?.toInt(),
  filename: json['filename'] as String?,
  bytesize: (json['bytesize'] as num?)?.toInt(),
  sendToOcr: json['send_to_ocr'] as bool?,
  sentToOcrAt: json['sent_to_ocr_at'] == null
      ? null
      : DateTime.parse(json['sent_to_ocr_at'] as String),
  ocrStatus: $enumDecodeNullable(_$OcrStatusEnumMap, json['ocr_status']),
  ocrCompletedAt: json['ocr_completed_at'] == null
      ? null
      : DateTime.parse(json['ocr_completed_at'] as String),
  downloadUrl: json['download_url'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$InboxFileToJson(_InboxFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'bytesize': instance.bytesize,
      'send_to_ocr': instance.sendToOcr,
      'sent_to_ocr_at': instance.sentToOcrAt?.toIso8601String(),
      'ocr_status': _$OcrStatusEnumMap[instance.ocrStatus],
      'ocr_completed_at': instance.ocrCompletedAt?.toIso8601String(),
      'download_url': instance.downloadUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$OcrStatusEnumMap = {
  OcrStatus.created: 'created',
  OcrStatus.processing: 'processing',
  OcrStatus.processingFailed: 'processing_failed',
  OcrStatus.processingRejected: 'processing_rejected',
  OcrStatus.processed: 'processed',
};
