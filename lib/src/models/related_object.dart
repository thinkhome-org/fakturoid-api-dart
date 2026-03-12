import 'package:freezed_annotation/freezed_annotation.dart';

part 'related_object.freezed.dart';
part 'related_object.g.dart';

@freezed
abstract class RelatedObject with _$RelatedObject {
  const factory RelatedObject({String? type, int? id}) = _RelatedObject;

  factory RelatedObject.fromJson(Map<String, dynamic> json) =>
      _$RelatedObjectFromJson(json);
}
