// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Generator _$GeneratorFromJson(Map<String, dynamic> json) => _Generator(
  id: (json['id'] as num?)?.toInt(),
  customId: json['custom_id'] as String?,
  name: json['name'] as String,
  proforma: json['proforma'] as bool?,
  paypal: json['paypal'] as bool?,
  gopay: json['gopay'] as bool?,
  taxDateAtEndOfLastMonth: json['tax_date_at_end_of_last_month'] as bool?,
  due: (json['due'] as num?)?.toInt(),
  subjectId: (json['subject_id'] as num).toInt(),
  numberFormatId: (json['number_format_id'] as num?)?.toInt(),
  note: json['note'] as String?,
  footerNote: json['footer_note'] as String?,
  bankAccountId: (json['bank_account_id'] as num?)?.toInt(),
  ibanVisibility: $enumDecodeNullable(
    _$IbanVisibilityEnumMap,
    json['iban_visibility'],
  ),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  orderNumber: json['order_number'] as String?,
  currency: json['currency'] as String?,
  exchangeRate: json['exchange_rate'] as String?,
  paymentMethod: $enumDecodeNullable(
    _$PaymentMethodEnumMap,
    json['payment_method'],
  ),
  customPaymentMethod: json['custom_payment_method'] as String?,
  language: $enumDecodeNullable(_$DocumentLanguageEnumMap, json['language']),
  transferredTaxLiability: json['transferred_tax_liability'] as bool?,
  vatPriceMode: $enumDecodeNullable(
    _$VatPriceModeEnumMap,
    json['vat_price_mode'],
  ),
  roundTotal: json['round_total'] as bool?,
  subtotal: json['subtotal'] as String?,
  total: json['total'] as String?,
  nativeSubtotal: json['native_subtotal'] as String?,
  nativeTotal: json['native_total'] as String?,
  legacyBankDetails: json['legacy_bank_details'] == null
      ? null
      : LegacyBankDetails.fromJson(
          json['legacy_bank_details'] as Map<String, dynamic>,
        ),
  htmlUrl: json['html_url'] as String?,
  url: json['url'] as String?,
  subjectUrl: json['subject_url'] as String?,
  lines: (json['lines'] as List<dynamic>?)
      ?.map((e) => InvoiceLine.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GeneratorToJson(_Generator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'custom_id': instance.customId,
      'name': instance.name,
      'proforma': instance.proforma,
      'paypal': instance.paypal,
      'gopay': instance.gopay,
      'tax_date_at_end_of_last_month': instance.taxDateAtEndOfLastMonth,
      'due': instance.due,
      'subject_id': instance.subjectId,
      'number_format_id': instance.numberFormatId,
      'note': instance.note,
      'footer_note': instance.footerNote,
      'bank_account_id': instance.bankAccountId,
      'iban_visibility': _$IbanVisibilityEnumMap[instance.ibanVisibility],
      'tags': instance.tags,
      'order_number': instance.orderNumber,
      'currency': instance.currency,
      'exchange_rate': instance.exchangeRate,
      'payment_method': _$PaymentMethodEnumMap[instance.paymentMethod],
      'custom_payment_method': instance.customPaymentMethod,
      'language': _$DocumentLanguageEnumMap[instance.language],
      'transferred_tax_liability': instance.transferredTaxLiability,
      'vat_price_mode': _$VatPriceModeEnumMap[instance.vatPriceMode],
      'round_total': instance.roundTotal,
      'subtotal': instance.subtotal,
      'total': instance.total,
      'native_subtotal': instance.nativeSubtotal,
      'native_total': instance.nativeTotal,
      'legacy_bank_details': instance.legacyBankDetails,
      'html_url': instance.htmlUrl,
      'url': instance.url,
      'subject_url': instance.subjectUrl,
      'lines': instance.lines,
    };

const _$IbanVisibilityEnumMap = {
  IbanVisibility.automatically: 'automatically',
  IbanVisibility.always: 'always',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.bank: 'bank',
  PaymentMethod.cash: 'cash',
  PaymentMethod.cod: 'cod',
  PaymentMethod.card: 'card',
  PaymentMethod.paypal: 'paypal',
  PaymentMethod.custom: 'custom',
};

const _$DocumentLanguageEnumMap = {
  DocumentLanguage.cz: 'cz',
  DocumentLanguage.sk: 'sk',
  DocumentLanguage.en: 'en',
  DocumentLanguage.de: 'de',
  DocumentLanguage.fr: 'fr',
  DocumentLanguage.it: 'it',
  DocumentLanguage.es: 'es',
  DocumentLanguage.ru: 'ru',
  DocumentLanguage.pl: 'pl',
  DocumentLanguage.hu: 'hu',
  DocumentLanguage.ro: 'ro',
};

const _$VatPriceModeEnumMap = {
  VatPriceMode.withoutVat: 'without_vat',
  VatPriceMode.fromTotalWithVat: 'from_total_with_vat',
};
