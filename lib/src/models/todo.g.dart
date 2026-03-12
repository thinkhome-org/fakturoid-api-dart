// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
  text: json['text'] as String?,
  relatedObjects: (json['related_objects'] as List<dynamic>?)
      ?.map((e) => RelatedObject.fromJson(e as Map<String, dynamic>))
      .toList(),
  params: json['params'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'created_at': instance.createdAt?.toIso8601String(),
  'completed_at': instance.completedAt?.toIso8601String(),
  'text': instance.text,
  'related_objects': instance.relatedObjects,
  'params': instance.params,
};
