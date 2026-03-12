// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LineInventory _$LineInventoryFromJson(Map<String, dynamic> json) =>
    _LineInventory(
      itemId: (json['item_id'] as num?)?.toInt(),
      sku: json['sku'] as String?,
      articleNumberType: json['article_number_type'] as String?,
      articleNumber: json['article_number'] as String?,
      moveId: (json['move_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LineInventoryToJson(_LineInventory instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'sku': instance.sku,
      'article_number_type': instance.articleNumberType,
      'article_number': instance.articleNumber,
      'move_id': instance.moveId,
    };
