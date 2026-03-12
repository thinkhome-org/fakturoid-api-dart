// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NumberFormat _$NumberFormatFromJson(Map<String, dynamic> json) =>
    _NumberFormat(
      id: (json['id'] as num?)?.toInt(),
      format: json['format'] as String?,
      preview: json['preview'] as String?,
      isDefault: json['default'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$NumberFormatToJson(_NumberFormat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'format': instance.format,
      'preview': instance.preview,
      'default': instance.isDefault,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
