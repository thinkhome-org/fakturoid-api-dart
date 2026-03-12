// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_move.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryMove _$InventoryMoveFromJson(Map<String, dynamic> json) =>
    _InventoryMove(
      id: (json['id'] as num?)?.toInt(),
      inventoryItemId: (json['inventory_item_id'] as num).toInt(),
      direction: $enumDecode(
        _$InventoryMoveDirectionEnumMap,
        json['direction'],
      ),
      movedOn: DateTime.parse(json['moved_on'] as String),
      quantityChange: json['quantity_change'] as String,
      purchasePrice: json['purchase_price'] as String?,
      purchaseCurrency: json['purchase_currency'] as String?,
      nativePurchasePrice: json['native_purchase_price'] as String?,
      retailPrice: json['retail_price'] as String?,
      retailCurrency: json['retail_currency'] as String?,
      nativeRetailPrice: json['native_retail_price'] as String?,
      privateNote: json['private_note'] as String?,
      document: json['document'] == null
          ? null
          : InventoryMoveDocument.fromJson(
              json['document'] as Map<String, dynamic>,
            ),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$InventoryMoveToJson(_InventoryMove instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inventory_item_id': instance.inventoryItemId,
      'direction': _$InventoryMoveDirectionEnumMap[instance.direction]!,
      'moved_on': instance.movedOn.toIso8601String(),
      'quantity_change': instance.quantityChange,
      'purchase_price': instance.purchasePrice,
      'purchase_currency': instance.purchaseCurrency,
      'native_purchase_price': instance.nativePurchasePrice,
      'retail_price': instance.retailPrice,
      'retail_currency': instance.retailCurrency,
      'native_retail_price': instance.nativeRetailPrice,
      'private_note': instance.privateNote,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$InventoryMoveDirectionEnumMap = {
  InventoryMoveDirection.moveIn: 'in',
  InventoryMoveDirection.moveOut: 'out',
};

_InventoryMoveDocument _$InventoryMoveDocumentFromJson(
  Map<String, dynamic> json,
) => _InventoryMoveDocument(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  lineId: (json['line_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$InventoryMoveDocumentToJson(
  _InventoryMoveDocument instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'line_id': instance.lineId,
};
