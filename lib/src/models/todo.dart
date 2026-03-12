import 'package:freezed_annotation/freezed_annotation.dart';
import 'related_object.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    int? id,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    String? text,
    @JsonKey(name: 'related_objects') List<RelatedObject>? relatedObjects,
    Map<String, dynamic>? params,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
