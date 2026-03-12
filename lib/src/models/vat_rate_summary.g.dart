// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vat_rate_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VatRateSummary _$VatRateSummaryFromJson(Map<String, dynamic> json) =>
    _VatRateSummary(
      vatRate: json['vat_rate'] as num?,
      base: json['base'] as String?,
      vat: json['vat'] as String?,
      currency: json['currency'] as String?,
      nativeBase: json['native_base'] as String?,
      nativeVat: json['native_vat'] as String?,
      nativeCurrency: json['native_currency'] as String?,
    );

Map<String, dynamic> _$VatRateSummaryToJson(_VatRateSummary instance) =>
    <String, dynamic>{
      'vat_rate': instance.vatRate,
      'base': instance.base,
      'vat': instance.vat,
      'currency': instance.currency,
      'native_base': instance.nativeBase,
      'native_vat': instance.nativeVat,
      'native_currency': instance.nativeCurrency,
    };
