// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_retail_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryRetailPrice _$InventoryRetailPriceFromJson(
  Map<String, dynamic> json,
) => _InventoryRetailPrice(
  id: (json['id'] as num?)?.toInt(),
  amount: json['amount'] as String,
  currency: json['currency'] as String,
  destroy: json['_destroy'] as bool?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$InventoryRetailPriceToJson(
  _InventoryRetailPrice instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'currency': instance.currency,
  '_destroy': instance.destroy,
};
