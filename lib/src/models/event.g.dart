// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Event _$EventFromJson(Map<String, dynamic> json) => _Event(
  name: json['name'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  text: json['text'] as String?,
  relatedObjects: (json['related_objects'] as List<dynamic>?)
      ?.map((e) => RelatedObject.fromJson(e as Map<String, dynamic>))
      .toList(),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  params: json['params'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$EventToJson(_Event instance) => <String, dynamic>{
  'name': instance.name,
  'created_at': instance.createdAt?.toIso8601String(),
  'text': instance.text,
  'related_objects': instance.relatedObjects,
  'user': instance.user,
  'params': instance.params,
};
