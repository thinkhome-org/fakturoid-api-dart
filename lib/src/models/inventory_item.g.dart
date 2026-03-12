// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryItem _$InventoryItemFromJson(
  Map<String, dynamic> json,
) => _InventoryItem(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String,
  sku: json['sku'] as String?,
  articleNumberType: $enumDecodeNullable(
    _$ArticleNumberTypeEnumMap,
    json['article_number_type'],
  ),
  articleNumber: json['article_number'] as String?,
  unitName: json['unit_name'] as String?,
  trackQuantity: json['track_quantity'] as bool?,
  quantity: json['quantity'] as String?,
  minQuantity: json['min_quantity'] as String?,
  maxQuantity: json['max_quantity'] as String?,
  allowBelowZero: json['allow_below_zero'] as bool?,
  lowQuantityDate: json['low_quantity_date'] as String?,
  nativePurchasePrice: json['native_purchase_price'] as String?,
  nativeRetailPrice: json['native_retail_price'] as String?,
  vatRate: $enumDecodeNullable(_$VatRateTypeEnumMap, json['vat_rate']),
  averageNativePurchasePrice: json['average_native_purchase_price'] as String?,
  supplyType: $enumDecodeNullable(_$SupplyTypeEnumMap, json['supply_type']),
  archived: json['archived'] as bool?,
  privateNote: json['private_note'] as String?,
  suggestFor: $enumDecodeNullable(_$ItemSuggestForEnumMap, json['suggest_for']),
  retailPrices: (json['retail_prices'] as List<dynamic>?)
      ?.map((e) => InventoryRetailPrice.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$InventoryItemToJson(
  _InventoryItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'sku': instance.sku,
  'article_number_type': _$ArticleNumberTypeEnumMap[instance.articleNumberType],
  'article_number': instance.articleNumber,
  'unit_name': instance.unitName,
  'track_quantity': instance.trackQuantity,
  'quantity': instance.quantity,
  'min_quantity': instance.minQuantity,
  'max_quantity': instance.maxQuantity,
  'allow_below_zero': instance.allowBelowZero,
  'low_quantity_date': instance.lowQuantityDate,
  'native_purchase_price': instance.nativePurchasePrice,
  'native_retail_price': instance.nativeRetailPrice,
  'vat_rate': _$VatRateTypeEnumMap[instance.vatRate],
  'average_native_purchase_price': instance.averageNativePurchasePrice,
  'supply_type': _$SupplyTypeEnumMap[instance.supplyType],
  'archived': instance.archived,
  'private_note': instance.privateNote,
  'suggest_for': _$ItemSuggestForEnumMap[instance.suggestFor],
  'retail_prices': instance.retailPrices,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

const _$ArticleNumberTypeEnumMap = {
  ArticleNumberType.ian: 'ian',
  ArticleNumberType.ean: 'ean',
  ArticleNumberType.isbn: 'isbn',
};

const _$VatRateTypeEnumMap = {
  VatRateType.standard: 'standard',
  VatRateType.reduced: 'reduced',
  VatRateType.reduced2: 'reduced2',
  VatRateType.zero: 'zero',
};

const _$SupplyTypeEnumMap = {
  SupplyType.goods: 'goods',
  SupplyType.service: 'service',
};

const _$ItemSuggestForEnumMap = {
  ItemSuggestFor.invoices: 'invoices',
  ItemSuggestFor.expenses: 'expenses',
  ItemSuggestFor.both: 'both',
};
