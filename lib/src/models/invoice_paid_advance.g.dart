// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_paid_advance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoicePaidAdvance _$InvoicePaidAdvanceFromJson(Map<String, dynamic> json) =>
    _InvoicePaidAdvance(
      id: (json['id'] as num?)?.toInt(),
      number: json['number'] as String?,
      variableSymbol: json['variable_symbol'] as String?,
      paidOn: json['paid_on'] as String?,
      vatRate: json['vat_rate'] as num?,
      price: json['price'] as String?,
      vat: json['vat'] as String?,
    );

Map<String, dynamic> _$InvoicePaidAdvanceToJson(_InvoicePaidAdvance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'variable_symbol': instance.variableSymbol,
      'paid_on': instance.paidOn,
      'vat_rate': instance.vatRate,
      'price': instance.price,
      'vat': instance.vat,
    };
