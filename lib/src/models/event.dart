import 'package:freezed_annotation/freezed_annotation.dart';
import 'related_object.dart';
import 'user.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
abstract class Event with _$Event {
  const factory Event({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    String? text,
    @JsonKey(name: 'related_objects') List<RelatedObject>? relatedObjects,
    User? user,
    Map<String, dynamic>? params,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
