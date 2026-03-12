import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/inventory_move_enums.dart';

part 'inventory_move.freezed.dart';
part 'inventory_move.g.dart';

@freezed
abstract class InventoryMove with _$InventoryMove {
  const factory InventoryMove({
    int? id,
    @JsonKey(name: 'inventory_item_id') required int inventoryItemId,
    required InventoryMoveDirection direction,
    @JsonKey(name: 'moved_on') required DateTime movedOn,
    @JsonKey(name: 'quantity_change') required String quantityChange,
    @JsonKey(name: 'purchase_price') String? purchasePrice,
    @JsonKey(name: 'purchase_currency') String? purchaseCurrency,
    @JsonKey(name: 'native_purchase_price') String? nativePurchasePrice,
    @JsonKey(name: 'retail_price') String? retailPrice,
    @JsonKey(name: 'retail_currency') String? retailCurrency,
    @JsonKey(name: 'native_retail_price') String? nativeRetailPrice,
    @JsonKey(name: 'private_note') String? privateNote,
    @JsonKey(includeToJson: false) InventoryMoveDocument? document,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _InventoryMove;

  factory InventoryMove.fromJson(Map<String, dynamic> json) =>
      _$InventoryMoveFromJson(json);
}

@freezed
abstract class InventoryMoveDocument with _$InventoryMoveDocument {
  const factory InventoryMoveDocument({
    int? id,
    String? type,
    @JsonKey(name: 'line_id') int? lineId,
  }) = _InventoryMoveDocument;

  factory InventoryMoveDocument.fromJson(Map<String, dynamic> json) =>
      _$InventoryMoveDocumentFromJson(json);
}
