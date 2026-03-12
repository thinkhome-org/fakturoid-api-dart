// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RelatedObject _$RelatedObjectFromJson(Map<String, dynamic> json) =>
    _RelatedObject(
      type: json['type'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RelatedObjectToJson(_RelatedObject instance) =>
    <String, dynamic>{'type': instance.type, 'id': instance.id};
