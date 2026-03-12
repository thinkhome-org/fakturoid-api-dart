import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_retail_price.freezed.dart';
part 'inventory_retail_price.g.dart';

@freezed
abstract class InventoryRetailPrice with _$InventoryRetailPrice {
  const factory InventoryRetailPrice({
    int? id,
    required String amount,
    required String currency,
    @JsonKey(name: '_destroy') bool? destroy,
    @JsonKey(name: 'created_at', includeToJson: false) DateTime? createdAt,
    @JsonKey(name: 'updated_at', includeToJson: false) DateTime? updatedAt,
  }) = _InventoryRetailPrice;

  factory InventoryRetailPrice.fromJson(Map<String, dynamic> json) =>
      _$InventoryRetailPriceFromJson(json);
}
