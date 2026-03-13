// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Estimate _$EstimateFromJson(Map<String, dynamic> json) => _Estimate(
  id: (json['id'] as num?)?.toInt(),
  customId: json['custom_id'] as String?,
  documentType: $enumDecodeNullable(
    _$EstimateDocumentTypeEnumMap,
    json['document_type'],
  ),
  number: json['number'] as String?,
  numberFormatId: (json['number_format_id'] as num?)?.toInt(),
  yourName: json['your_name'] as String?,
  yourStreet: json['your_street'] as String?,
  yourCity: json['your_city'] as String?,
  yourZip: json['your_zip'] as String?,
  yourCountry: json['your_country'] as String?,
  yourRegistrationNo: json['your_registration_no'] as String?,
  yourVatNo: json['your_vat_no'] as String?,
  yourLocalVatNo: json['your_local_vat_no'] as String?,
  clientName: json['client_name'] as String?,
  clientStreet: json['client_street'] as String?,
  clientCity: json['client_city'] as String?,
  clientZip: json['client_zip'] as String?,
  clientCountry: json['client_country'] as String?,
  clientHasDeliveryAddress: json['client_has_delivery_address'] as bool?,
  clientDeliveryName: json['client_delivery_name'] as String?,
  clientDeliveryStreet: json['client_delivery_street'] as String?,
  clientDeliveryCity: json['client_delivery_city'] as String?,
  clientDeliveryZip: json['client_delivery_zip'] as String?,
  clientDeliveryCountry: json['client_delivery_country'] as String?,
  clientRegistrationNo: json['client_registration_no'] as String?,
  clientVatNo: json['client_vat_no'] as String?,
  clientLocalVatNo: json['client_local_vat_no'] as String?,
  subjectId: (json['subject_id'] as num).toInt(),
  subjectCustomId: json['subject_custom_id'] as String?,
  token: json['token'] as String?,
  status: $enumDecodeNullable(_$EstimateStatusEnumMap, json['status']),
  orderNumber: json['order_number'] as String?,
  issuedOn: json['issued_on'] as String?,
  taxableFulfillmentDue: json['taxable_fulfillment_due'] as String?,
  due: (json['due'] as num?)?.toInt(),
  dueOn: json['due_on'] as String?,
  sentAt: json['sent_at'] == null
      ? null
      : DateTime.parse(json['sent_at'] as String),
  acceptedAt: json['accepted_at'] == null
      ? null
      : DateTime.parse(json['accepted_at'] as String),
  rejectedAt: json['rejected_at'] == null
      ? null
      : DateTime.parse(json['rejected_at'] as String),
  cancelledAt: json['cancelled_at'] == null
      ? null
      : DateTime.parse(json['cancelled_at'] as String),
  lockedAt: json['locked_at'] == null
      ? null
      : DateTime.parse(json['locked_at'] as String),
  note: json['note'] as String?,
  footerNote: json['footer_note'] as String?,
  privateNote: json['private_note'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  bankAccountId: (json['bank_account_id'] as num?)?.toInt(),
  bankAccount: json['bank_account'] as String?,
  iban: json['iban'] as String?,
  swiftBic: json['swift_bic'] as String?,
  paymentMethod: $enumDecodeNullable(
    _$PaymentMethodEnumMap,
    json['payment_method'],
  ),
  currency: json['currency'] as String?,
  exchangeRate: json['exchange_rate'] as String?,
  language: $enumDecodeNullable(_$DocumentLanguageEnumMap, json['language']),
  transferredTaxLiability: json['transferred_tax_liability'] as bool?,
  supplyCode: json['supply_code'] as String?,
  oss: $enumDecodeNullable(_$OssModeEnumMap, json['oss']),
  vatPriceMode: $enumDecodeNullable(
    _$VatPriceModeEnumMap,
    json['vat_price_mode'],
  ),
  roundTotal: json['round_total'] as bool?,
  subtotal: json['subtotal'] as String?,
  total: json['total'] as String?,
  nativeSubtotal: json['native_subtotal'] as String?,
  nativeTotal: json['native_total'] as String?,
  lines: (json['lines'] as List<dynamic>?)
      ?.map((e) => InvoiceLine.fromJson(e as Map<String, dynamic>))
      .toList(),
  vatRatesSummary: (json['vat_rates_summary'] as List<dynamic>?)
      ?.map((e) => VatRateSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
  attachments: (json['attachments'] as List<dynamic>?)
      ?.map((e) => DocumentAttachment.fromJson(e as Map<String, dynamic>))
      .toList(),
  htmlUrl: json['html_url'] as String?,
  publicHtmlUrl: json['public_html_url'] as String?,
  url: json['url'] as String?,
  pdfUrl: json['pdf_url'] as String?,
  subjectUrl: json['subject_url'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$EstimateToJson(_Estimate instance) => <String, dynamic>{
  'id': instance.id,
  'custom_id': instance.customId,
  'document_type': _$EstimateDocumentTypeEnumMap[instance.documentType],
  'number': instance.number,
  'number_format_id': instance.numberFormatId,
  'your_name': instance.yourName,
  'your_street': instance.yourStreet,
  'your_city': instance.yourCity,
  'your_zip': instance.yourZip,
  'your_country': instance.yourCountry,
  'your_registration_no': instance.yourRegistrationNo,
  'your_vat_no': instance.yourVatNo,
  'your_local_vat_no': instance.yourLocalVatNo,
  'client_name': instance.clientName,
  'client_street': instance.clientStreet,
  'client_city': instance.clientCity,
  'client_zip': instance.clientZip,
  'client_country': instance.clientCountry,
  'client_has_delivery_address': instance.clientHasDeliveryAddress,
  'client_delivery_name': instance.clientDeliveryName,
  'client_delivery_street': instance.clientDeliveryStreet,
  'client_delivery_city': instance.clientDeliveryCity,
  'client_delivery_zip': instance.clientDeliveryZip,
  'client_delivery_country': instance.clientDeliveryCountry,
  'client_registration_no': instance.clientRegistrationNo,
  'client_vat_no': instance.clientVatNo,
  'client_local_vat_no': instance.clientLocalVatNo,
  'subject_id': instance.subjectId,
  'subject_custom_id': instance.subjectCustomId,
  'token': instance.token,
  'status': _$EstimateStatusEnumMap[instance.status],
  'order_number': instance.orderNumber,
  'issued_on': instance.issuedOn,
  'taxable_fulfillment_due': instance.taxableFulfillmentDue,
  'due': instance.due,
  'due_on': instance.dueOn,
  'sent_at': instance.sentAt?.toIso8601String(),
  'accepted_at': instance.acceptedAt?.toIso8601String(),
  'rejected_at': instance.rejectedAt?.toIso8601String(),
  'cancelled_at': instance.cancelledAt?.toIso8601String(),
  'locked_at': instance.lockedAt?.toIso8601String(),
  'note': instance.note,
  'footer_note': instance.footerNote,
  'private_note': instance.privateNote,
  'tags': instance.tags,
  'bank_account_id': instance.bankAccountId,
  'bank_account': instance.bankAccount,
  'iban': instance.iban,
  'swift_bic': instance.swiftBic,
  'payment_method': _$PaymentMethodEnumMap[instance.paymentMethod],
  'currency': instance.currency,
  'exchange_rate': instance.exchangeRate,
  'language': _$DocumentLanguageEnumMap[instance.language],
  'transferred_tax_liability': instance.transferredTaxLiability,
  'supply_code': instance.supplyCode,
  'oss': _$OssModeEnumMap[instance.oss],
  'vat_price_mode': _$VatPriceModeEnumMap[instance.vatPriceMode],
  'round_total': instance.roundTotal,
  'subtotal': instance.subtotal,
  'total': instance.total,
  'native_subtotal': instance.nativeSubtotal,
  'native_total': instance.nativeTotal,
  'lines': instance.lines,
  'vat_rates_summary': instance.vatRatesSummary,
  'attachments': instance.attachments,
  'html_url': instance.htmlUrl,
  'public_html_url': instance.publicHtmlUrl,
  'url': instance.url,
  'pdf_url': instance.pdfUrl,
  'subject_url': instance.subjectUrl,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

const _$EstimateDocumentTypeEnumMap = {
  EstimateDocumentType.estimate: 'estimate',
  EstimateDocumentType.quote: 'quote',
};

const _$EstimateStatusEnumMap = {
  EstimateStatus.open: 'open',
  EstimateStatus.sent: 'sent',
  EstimateStatus.accepted: 'accepted',
  EstimateStatus.rejected: 'rejected',
  EstimateStatus.cancelled: 'cancelled',
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

const _$OssModeEnumMap = {
  OssMode.disabled: 'disabled',
  OssMode.service: 'service',
  OssMode.goods: 'goods',
};

const _$VatPriceModeEnumMap = {
  VatPriceMode.withoutVat: 'without_vat',
  VatPriceMode.fromTotalWithVat: 'from_total_with_vat',
};
