// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoiceLine _$InvoiceLineFromJson(Map<String, dynamic> json) => _InvoiceLine(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String,
  quantity: json['quantity'] as String?,
  unitName: json['unit_name'] as String?,
  unitPrice: json['unit_price'] as String,
  vatRate: json['vat_rate'] as num?,
  unitPriceWithoutVat: json['unit_price_without_vat'] as String?,
  unitPriceWithVat: json['unit_price_with_vat'] as String?,
  totalPriceWithoutVat: json['total_price_without_vat'] as String?,
  totalPriceWithVat: json['total_price_with_vat'] as String?,
  totalVat: json['total_vat'] as String?,
  nativeTotalPriceWithoutVat: json['native_total_price_without_vat'] as String?,
  nativeTotalPriceWithVat: json['native_total_price_with_vat'] as String?,
  nativeTotalVat: json['native_total_vat'] as String?,
  inventoryItemId: (json['inventory_item_id'] as num?)?.toInt(),
  sku: json['sku'] as String?,
  inventory: json['inventory'] == null
      ? null
      : LineInventory.fromJson(json['inventory'] as Map<String, dynamic>),
  destroy: json['_destroy'] as bool?,
);

Map<String, dynamic> _$InvoiceLineToJson(_InvoiceLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'unit_name': instance.unitName,
      'unit_price': instance.unitPrice,
      'vat_rate': instance.vatRate,
      'unit_price_without_vat': instance.unitPriceWithoutVat,
      'unit_price_with_vat': instance.unitPriceWithVat,
      'total_price_without_vat': instance.totalPriceWithoutVat,
      'total_price_with_vat': instance.totalPriceWithVat,
      'total_vat': instance.totalVat,
      'native_total_price_without_vat': instance.nativeTotalPriceWithoutVat,
      'native_total_price_with_vat': instance.nativeTotalPriceWithVat,
      'native_total_vat': instance.nativeTotalVat,
      'inventory_item_id': instance.inventoryItemId,
      'sku': instance.sku,
      '_destroy': instance.destroy,
    };
