// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Invoice _$InvoiceFromJson(Map<String, dynamic> json) => _Invoice(
  id: (json['id'] as num?)?.toInt(),
  customId: json['custom_id'] as String?,
  documentType: $enumDecodeNullable(
    _$DocumentTypeEnumMap,
    json['document_type'],
  ),
  proformaFollowupDocument: $enumDecodeNullable(
    _$ProformaFollowupDocumentEnumMap,
    json['proforma_followup_document'],
  ),
  taxDocumentIds: (json['tax_document_ids'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  correctionId: (json['correction_id'] as num?)?.toInt(),
  number: json['number'] as String?,
  numberFormatId: (json['number_format_id'] as num?)?.toInt(),
  variableSymbol: json['variable_symbol'] as String?,
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
  generatorId: (json['generator_id'] as num?)?.toInt(),
  relatedId: (json['related_id'] as num?)?.toInt(),
  paypal: json['paypal'] as bool?,
  gopay: json['gopay'] as bool?,
  token: json['token'] as String?,
  status: $enumDecodeNullable(_$InvoiceStatusEnumMap, json['status']),
  orderNumber: json['order_number'] as String?,
  issuedOn: json['issued_on'] as String?,
  taxableFulfillmentDue: json['taxable_fulfillment_due'] as String?,
  due: (json['due'] as num?)?.toInt(),
  dueOn: json['due_on'] as String?,
  sentAt: json['sent_at'] == null
      ? null
      : DateTime.parse(json['sent_at'] as String),
  paidOn: json['paid_on'] as String?,
  reminderSentAt: json['reminder_sent_at'] == null
      ? null
      : DateTime.parse(json['reminder_sent_at'] as String),
  lastReminderSentAt: json['last_reminder_sent_at'] == null
      ? null
      : DateTime.parse(json['last_reminder_sent_at'] as String),
  cancelledAt: json['cancelled_at'] == null
      ? null
      : DateTime.parse(json['cancelled_at'] as String),
  uncollectibleAt: json['uncollectible_at'] == null
      ? null
      : DateTime.parse(json['uncollectible_at'] as String),
  lockedAt: json['locked_at'] == null
      ? null
      : DateTime.parse(json['locked_at'] as String),
  webinvoiceSeenOn: json['webinvoice_seen_on'] as String?,
  note: json['note'] as String?,
  footerNote: json['footer_note'] as String?,
  privateNote: json['private_note'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  bankAccountId: (json['bank_account_id'] as num?)?.toInt(),
  bankAccount: json['bank_account'] as String?,
  iban: json['iban'] as String?,
  swiftBic: json['swift_bic'] as String?,
  ibanVisibility: $enumDecodeNullable(
    _$IbanVisibilityEnumMap,
    json['iban_visibility'],
  ),
  showAlreadyPaidNoteInPdf: json['show_already_paid_note_in_pdf'] as bool?,
  paymentMethod: $enumDecodeNullable(
    _$PaymentMethodEnumMap,
    json['payment_method'],
  ),
  customPaymentMethod: json['custom_payment_method'] as String?,
  hideBankAccount: json['hide_bank_account'] as bool?,
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
  roundingAdjustment: json['rounding_adjustment'] as String?,
  remainingAmount: json['remaining_amount'] as String?,
  remainingNativeAmount: json['remaining_native_amount'] as String?,
  eetRecords: (json['eet_records'] as List<dynamic>?)
      ?.map((e) => InvoiceEetRecord.fromJson(e as Map<String, dynamic>))
      .toList(),
  lines: (json['lines'] as List<dynamic>?)
      ?.map((e) => InvoiceLine.fromJson(e as Map<String, dynamic>))
      .toList(),
  vatRatesSummary: (json['vat_rates_summary'] as List<dynamic>?)
      ?.map((e) => VatRateSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
  paidAdvances: (json['paid_advances'] as List<dynamic>?)
      ?.map((e) => InvoicePaidAdvance.fromJson(e as Map<String, dynamic>))
      .toList(),
  payments: (json['payments'] as List<dynamic>?)
      ?.map((e) => InvoicePayment.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$InvoiceToJson(_Invoice instance) => <String, dynamic>{
  'id': instance.id,
  'custom_id': instance.customId,
  'document_type': _$DocumentTypeEnumMap[instance.documentType],
  'proforma_followup_document':
      _$ProformaFollowupDocumentEnumMap[instance.proformaFollowupDocument],
  'tax_document_ids': instance.taxDocumentIds,
  'correction_id': instance.correctionId,
  'number': instance.number,
  'number_format_id': instance.numberFormatId,
  'variable_symbol': instance.variableSymbol,
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
  'generator_id': instance.generatorId,
  'related_id': instance.relatedId,
  'paypal': instance.paypal,
  'gopay': instance.gopay,
  'token': instance.token,
  'status': _$InvoiceStatusEnumMap[instance.status],
  'order_number': instance.orderNumber,
  'issued_on': instance.issuedOn,
  'taxable_fulfillment_due': instance.taxableFulfillmentDue,
  'due': instance.due,
  'due_on': instance.dueOn,
  'sent_at': instance.sentAt?.toIso8601String(),
  'paid_on': instance.paidOn,
  'reminder_sent_at': instance.reminderSentAt?.toIso8601String(),
  'last_reminder_sent_at': instance.lastReminderSentAt?.toIso8601String(),
  'cancelled_at': instance.cancelledAt?.toIso8601String(),
  'uncollectible_at': instance.uncollectibleAt?.toIso8601String(),
  'locked_at': instance.lockedAt?.toIso8601String(),
  'webinvoice_seen_on': instance.webinvoiceSeenOn,
  'note': instance.note,
  'footer_note': instance.footerNote,
  'private_note': instance.privateNote,
  'tags': instance.tags,
  'bank_account_id': instance.bankAccountId,
  'bank_account': instance.bankAccount,
  'iban': instance.iban,
  'swift_bic': instance.swiftBic,
  'iban_visibility': _$IbanVisibilityEnumMap[instance.ibanVisibility],
  'show_already_paid_note_in_pdf': instance.showAlreadyPaidNoteInPdf,
  'payment_method': _$PaymentMethodEnumMap[instance.paymentMethod],
  'custom_payment_method': instance.customPaymentMethod,
  'hide_bank_account': instance.hideBankAccount,
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
  'rounding_adjustment': instance.roundingAdjustment,
  'remaining_amount': instance.remainingAmount,
  'remaining_native_amount': instance.remainingNativeAmount,
  'eet_records': instance.eetRecords,
  'lines': instance.lines,
  'vat_rates_summary': instance.vatRatesSummary,
  'paid_advances': instance.paidAdvances,
  'payments': instance.payments,
  'attachments': instance.attachments,
  'html_url': instance.htmlUrl,
  'public_html_url': instance.publicHtmlUrl,
  'url': instance.url,
  'pdf_url': instance.pdfUrl,
  'subject_url': instance.subjectUrl,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

const _$DocumentTypeEnumMap = {
  DocumentType.invoice: 'invoice',
  DocumentType.proforma: 'proforma',
  DocumentType.partialProforma: 'partial_proforma',
  DocumentType.correction: 'correction',
  DocumentType.taxDocument: 'tax_document',
  DocumentType.finalInvoice: 'final_invoice',
  DocumentType.estimate: 'estimate',
};

const _$ProformaFollowupDocumentEnumMap = {
  ProformaFollowupDocument.finalInvoicePaid: 'final_invoice_paid',
  ProformaFollowupDocument.finalInvoice: 'final_invoice',
  ProformaFollowupDocument.taxDocument: 'tax_document',
  ProformaFollowupDocument.none: 'none',
};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.open: 'open',
  InvoiceStatus.sent: 'sent',
  InvoiceStatus.overdue: 'overdue',
  InvoiceStatus.paid: 'paid',
  InvoiceStatus.cancelled: 'cancelled',
  InvoiceStatus.uncollectible: 'uncollectible',
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

const _$OssModeEnumMap = {
  OssMode.disabled: 'disabled',
  OssMode.service: 'service',
  OssMode.goods: 'goods',
};

const _$VatPriceModeEnumMap = {
  VatPriceMode.withoutVat: 'without_vat',
  VatPriceMode.fromTotalWithVat: 'from_total_with_vat',
};
