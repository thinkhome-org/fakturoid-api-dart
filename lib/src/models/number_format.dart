import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_format.freezed.dart';
part 'number_format.g.dart';

@freezed
abstract class NumberFormat with _$NumberFormat {
  const factory NumberFormat({
    int? id,
    String? format,
    String? preview,
    @JsonKey(name: 'default') bool? isDefault,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _NumberFormat;

  factory NumberFormat.fromJson(Map<String, dynamic> json) =>
      _$NumberFormatFromJson(json);
}
