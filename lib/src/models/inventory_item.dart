import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/inventory_enums.dart';

part 'inventory_item.freezed.dart';
part 'inventory_item.g.dart';

@freezed
abstract class InventoryItem with _$InventoryItem {
  const factory InventoryItem({
    int? id,
    required String name,
    String? sku,
    @JsonKey(name: 'article_number_type') ArticleNumberType? articleNumberType,
    @JsonKey(name: 'article_number') String? articleNumber,
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'track_quantity') bool? trackQuantity,
    String? quantity,
    @JsonKey(name: 'min_quantity') String? minQuantity,
    @JsonKey(name: 'max_quantity') String? maxQuantity,
    @JsonKey(name: 'allow_below_zero') bool? allowBelowZero,
    @JsonKey(name: 'low_quantity_date') String? lowQuantityDate,
    @JsonKey(name: 'native_purchase_price') String? nativePurchasePrice,
    @JsonKey(name: 'native_retail_price') String? nativeRetailPrice,
    @JsonKey(name: 'vat_rate') VatRateType? vatRate,
    @JsonKey(name: 'average_native_purchase_price')
    String? averageNativePurchasePrice,
    @JsonKey(name: 'supply_type') SupplyType? supplyType,
    bool? archived,
    @JsonKey(name: 'private_note') String? privateNote,
    @JsonKey(name: 'suggest_for') ItemSuggestFor? suggestFor,
    // Note: retail_prices are omitted for simplicity unless heavily needed,
    // but typically they are passed as a List of custom objects.
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _InventoryItem;

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);
}
