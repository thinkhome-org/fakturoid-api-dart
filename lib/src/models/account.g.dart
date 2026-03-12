// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
  subdomain: json['subdomain'] as String?,
  plan: json['plan'] as String?,
  planPrice: (json['plan_price'] as num?)?.toInt(),
  planPaidUsers: (json['plan_paid_users'] as num?)?.toInt(),
  invoiceEmail: json['invoice_email'] as String?,
  phone: json['phone'] as String?,
  web: json['web'] as String?,
  name: json['name'] as String?,
  fullName: json['full_name'] as String?,
  registrationNo: json['registration_no'] as String?,
  vatNo: json['vat_no'] as String?,
  localVatNo: json['local_vat_no'] as String?,
  vatMode: $enumDecodeNullable(_$AccountVatModeEnumMap, json['vat_mode']),
  vatPriceMode: json['vat_price_mode'] as String?,
  street: json['street'] as String?,
  city: json['city'] as String?,
  zip: json['zip'] as String?,
  country: json['country'] as String?,
  currency: json['currency'] as String?,
  unitName: json['unit_name'] as String?,
  vatRate: (json['vat_rate'] as num?)?.toInt(),
  displayedNote: json['displayed_note'] as String?,
  invoiceNote: json['invoice_note'] as String?,
  due: (json['due'] as num?)?.toInt(),
  invoiceLanguage: json['invoice_language'] as String?,
  invoicePaymentMethod: json['invoice_payment_method'] as String?,
  invoiceProforma: json['invoice_proforma'] as bool?,
  invoiceHideBankAccountForPayments:
      (json['invoice_hide_bank_account_for_payments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  fixedExchangeRate: json['fixed_exchange_rate'] as bool?,
  invoiceSelfbilling: json['invoice_selfbilling'] as bool?,
  defaultEstimateType: json['default_estimate_type'] as String?,
  sendOverdueEmail: json['send_overdue_email'] as bool?,
  overdueEmailDays: (json['overdue_email_days'] as num?)?.toInt(),
  sendRepeatedReminders: json['send_repeated_reminders'] as bool?,
  sendInvoiceFromProformaEmail:
      json['send_invoice_from_proforma_email'] as bool?,
  sendThankYouEmail: json['send_thank_you_email'] as bool?,
  invoicePaypal: json['invoice_paypal'] as bool?,
  invoiceGopay: json['invoice_gopay'] as bool?,
  digitooEnabled: json['digitoo_enabled'] as bool?,
  digitooAutoProcessingEnabled:
      json['digitoo_auto_processing_enabled'] as bool?,
  digitooRemainingExtractions: (json['digitoo_remaining_extractions'] as num?)
      ?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
  'subdomain': instance.subdomain,
  'plan': instance.plan,
  'plan_price': instance.planPrice,
  'plan_paid_users': instance.planPaidUsers,
  'invoice_email': instance.invoiceEmail,
  'phone': instance.phone,
  'web': instance.web,
  'name': instance.name,
  'full_name': instance.fullName,
  'registration_no': instance.registrationNo,
  'vat_no': instance.vatNo,
  'local_vat_no': instance.localVatNo,
  'vat_mode': _$AccountVatModeEnumMap[instance.vatMode],
  'vat_price_mode': instance.vatPriceMode,
  'street': instance.street,
  'city': instance.city,
  'zip': instance.zip,
  'country': instance.country,
  'currency': instance.currency,
  'unit_name': instance.unitName,
  'vat_rate': instance.vatRate,
  'displayed_note': instance.displayedNote,
  'invoice_note': instance.invoiceNote,
  'due': instance.due,
  'invoice_language': instance.invoiceLanguage,
  'invoice_payment_method': instance.invoicePaymentMethod,
  'invoice_proforma': instance.invoiceProforma,
  'invoice_hide_bank_account_for_payments':
      instance.invoiceHideBankAccountForPayments,
  'fixed_exchange_rate': instance.fixedExchangeRate,
  'invoice_selfbilling': instance.invoiceSelfbilling,
  'default_estimate_type': instance.defaultEstimateType,
  'send_overdue_email': instance.sendOverdueEmail,
  'overdue_email_days': instance.overdueEmailDays,
  'send_repeated_reminders': instance.sendRepeatedReminders,
  'send_invoice_from_proforma_email': instance.sendInvoiceFromProformaEmail,
  'send_thank_you_email': instance.sendThankYouEmail,
  'invoice_paypal': instance.invoicePaypal,
  'invoice_gopay': instance.invoiceGopay,
  'digitoo_enabled': instance.digitooEnabled,
  'digitoo_auto_processing_enabled': instance.digitooAutoProcessingEnabled,
  'digitoo_remaining_extractions': instance.digitooRemainingExtractions,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

const _$AccountVatModeEnumMap = {
  AccountVatMode.vatPayer: 'vat_payer',
  AccountVatMode.nonVatPayer: 'non_vat_payer',
  AccountVatMode.identifiedPerson: 'identified_person',
};
