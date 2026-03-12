// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Expense _$ExpenseFromJson(Map<String, dynamic> json) => _Expense(
  id: (json['id'] as num?)?.toInt(),
  customId: json['custom_id'] as String?,
  number: json['number'] as String?,
  originalNumber: json['original_number'] as String?,
  variableSymbol: json['variable_symbol'] as String?,
  supplierName: json['supplier_name'] as String?,
  supplierStreet: json['supplier_street'] as String?,
  supplierCity: json['supplier_city'] as String?,
  supplierZip: json['supplier_zip'] as String?,
  supplierCountry: json['supplier_country'] as String?,
  supplierRegistrationNo: json['supplier_registration_no'] as String?,
  supplierVatNo: json['supplier_vat_no'] as String?,
  supplierLocalVatNo: json['supplier_local_vat_no'] as String?,
  subjectId: (json['subject_id'] as num).toInt(),
  subjectCustomId: json['subject_custom_id'] as String?,
  status: $enumDecodeNullable(_$ExpenseStatusEnumMap, json['status']),
  documentType: $enumDecodeNullable(
    _$ExpenseDocumentTypeEnumMap,
    json['document_type'],
  ),
  issuedOn: json['issued_on'] as String?,
  taxableFulfillmentDue: json['taxable_fulfillment_due'] as String?,
  receivedOn: json['received_on'] as String?,
  dueOn: json['due_on'] as String?,
  remindDueDate: json['remind_due_date'] as bool?,
  paidOn: json['paid_on'] as String?,
  lockedAt: json['locked_at'] == null
      ? null
      : DateTime.parse(json['locked_at'] as String),
  description: json['description'] as String?,
  privateNote: json['private_note'] as String?,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  bankAccount: json['bank_account'] as String?,
  iban: json['iban'] as String?,
  swiftBic: json['swift_bic'] as String?,
  paymentMethod: $enumDecodeNullable(
    _$PaymentMethodEnumMap,
    json['payment_method'],
  ),
  customPaymentMethod: json['custom_payment_method'] as String?,
  currency: json['currency'] as String?,
  exchangeRate: json['exchange_rate'] as String?,
  transferredTaxLiability: json['transferred_tax_liability'] as bool?,
  vatPriceMode: $enumDecodeNullable(
    _$VatPriceModeEnumMap,
    json['vat_price_mode'],
  ),
  supplyCode: json['supply_code'] as String?,
  proportionalVatDeduction: (json['proportional_vat_deduction'] as num?)
      ?.toInt(),
  taxDeductible: json['tax_deductible'] as bool?,
  roundTotal: json['round_total'] as bool?,
  roundingAdjustment: json['rounding_adjustment'] as String?,
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
  payments: (json['payments'] as List<dynamic>?)
      ?.map((e) => InvoicePayment.fromJson(e as Map<String, dynamic>))
      .toList(),
  attachments: (json['attachments'] as List<dynamic>?)
      ?.map((e) => DocumentAttachment.fromJson(e as Map<String, dynamic>))
      .toList(),
  htmlUrl: json['html_url'] as String?,
  url: json['url'] as String?,
  subjectUrl: json['subject_url'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ExpenseToJson(_Expense instance) => <String, dynamic>{
  'id': instance.id,
  'custom_id': instance.customId,
  'number': instance.number,
  'original_number': instance.originalNumber,
  'variable_symbol': instance.variableSymbol,
  'supplier_name': instance.supplierName,
  'supplier_street': instance.supplierStreet,
  'supplier_city': instance.supplierCity,
  'supplier_zip': instance.supplierZip,
  'supplier_country': instance.supplierCountry,
  'supplier_registration_no': instance.supplierRegistrationNo,
  'supplier_vat_no': instance.supplierVatNo,
  'supplier_local_vat_no': instance.supplierLocalVatNo,
  'subject_id': instance.subjectId,
  'subject_custom_id': instance.subjectCustomId,
  'status': _$ExpenseStatusEnumMap[instance.status],
  'document_type': _$ExpenseDocumentTypeEnumMap[instance.documentType],
  'issued_on': instance.issuedOn,
  'taxable_fulfillment_due': instance.taxableFulfillmentDue,
  'received_on': instance.receivedOn,
  'due_on': instance.dueOn,
  'remind_due_date': instance.remindDueDate,
  'paid_on': instance.paidOn,
  'locked_at': instance.lockedAt?.toIso8601String(),
  'description': instance.description,
  'private_note': instance.privateNote,
  'tags': instance.tags,
  'bank_account': instance.bankAccount,
  'iban': instance.iban,
  'swift_bic': instance.swiftBic,
  'payment_method': _$PaymentMethodEnumMap[instance.paymentMethod],
  'custom_payment_method': instance.customPaymentMethod,
  'currency': instance.currency,
  'exchange_rate': instance.exchangeRate,
  'transferred_tax_liability': instance.transferredTaxLiability,
  'vat_price_mode': _$VatPriceModeEnumMap[instance.vatPriceMode],
  'supply_code': instance.supplyCode,
  'proportional_vat_deduction': instance.proportionalVatDeduction,
  'tax_deductible': instance.taxDeductible,
  'round_total': instance.roundTotal,
  'rounding_adjustment': instance.roundingAdjustment,
  'subtotal': instance.subtotal,
  'total': instance.total,
  'native_subtotal': instance.nativeSubtotal,
  'native_total': instance.nativeTotal,
  'lines': instance.lines,
  'vat_rates_summary': instance.vatRatesSummary,
  'payments': instance.payments,
  'attachments': instance.attachments,
  'html_url': instance.htmlUrl,
  'url': instance.url,
  'subject_url': instance.subjectUrl,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

const _$ExpenseStatusEnumMap = {
  ExpenseStatus.open: 'open',
  ExpenseStatus.overdue: 'overdue',
  ExpenseStatus.paid: 'paid',
};

const _$ExpenseDocumentTypeEnumMap = {
  ExpenseDocumentType.invoice: 'invoice',
  ExpenseDocumentType.bill: 'bill',
  ExpenseDocumentType.other: 'other',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.bank: 'bank',
  PaymentMethod.cash: 'cash',
  PaymentMethod.cod: 'cod',
  PaymentMethod.card: 'card',
  PaymentMethod.paypal: 'paypal',
  PaymentMethod.custom: 'custom',
};

const _$VatPriceModeEnumMap = {
  VatPriceMode.withoutVat: 'without_vat',
  VatPriceMode.fromTotalWithVat: 'from_total_with_vat',
};
