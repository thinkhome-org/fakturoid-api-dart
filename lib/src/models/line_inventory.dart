import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_inventory.freezed.dart';
part 'line_inventory.g.dart';

@freezed
abstract class LineInventory with _$LineInventory {
  const factory LineInventory({
    @JsonKey(name: 'item_id') int? itemId,
    String? sku,
    @JsonKey(name: 'article_number_type') String? articleNumberType,
    @JsonKey(name: 'article_number') String? articleNumber,
    @JsonKey(name: 'move_id') int? moveId,
  }) = _LineInventory;

  factory LineInventory.fromJson(Map<String, dynamic> json) =>
      _$LineInventoryFromJson(json);
}
