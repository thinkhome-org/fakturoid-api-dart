// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Subject _$SubjectFromJson(Map<String, dynamic> json) => _Subject(
  id: (json['id'] as num?)?.toInt(),
  customId: json['custom_id'] as String?,
  userId: (json['user_id'] as num?)?.toInt(),
  type: $enumDecodeNullable(_$SubjectTypeEnumMap, json['type']),
  name: json['name'] as String,
  fullName: json['full_name'] as String?,
  email: json['email'] as String?,
  emailCopy: json['email_copy'] as String?,
  phone: json['phone'] as String?,
  web: json['web'] as String?,
  street: json['street'] as String?,
  city: json['city'] as String?,
  zip: json['zip'] as String?,
  country: json['country'] as String?,
  hasDeliveryAddress: json['has_delivery_address'] as bool?,
  deliveryName: json['delivery_name'] as String?,
  deliveryStreet: json['delivery_street'] as String?,
  deliveryCity: json['delivery_city'] as String?,
  deliveryZip: json['delivery_zip'] as String?,
  deliveryCountry: json['delivery_country'] as String?,
  due: (json['due'] as num?)?.toInt(),
  currency: json['currency'] as String?,
  language: json['language'] as String?,
  privateNote: json['private_note'] as String?,
  registrationNo: json['registration_no'] as String?,
  vatNo: json['vat_no'] as String?,
  localVatNo: json['local_vat_no'] as String?,
  unreliable: json['unreliable'] as bool?,
  unreliableCheckedAt: json['unreliable_checked_at'] == null
      ? null
      : DateTime.parse(json['unreliable_checked_at'] as String),
  legalForm: json['legal_form'] as String?,
  vatMode: json['vat_mode'] as String?,
  bankAccount: json['bank_account'] as String?,
  iban: json['iban'] as String?,
  swiftBic: json['swift_bic'] as String?,
  variableSymbol: json['variable_symbol'] as String?,
  settingUpdateFromAres: $enumDecodeNullable(
    _$SubjectSettingEnumMap,
    json['setting_update_from_ares'],
  ),
  aresUpdate: json['ares_update'] as bool?,
  settingInvoicePdfAttachments: $enumDecodeNullable(
    _$SubjectSettingEnumMap,
    json['setting_invoice_pdf_attachments'],
  ),
  settingEstimatePdfAttachments: $enumDecodeNullable(
    _$SubjectSettingEnumMap,
    json['setting_estimate_pdf_attachments'],
  ),
  settingInvoiceSendReminders: $enumDecodeNullable(
    _$SubjectSettingEnumMap,
    json['setting_invoice_send_reminders'],
  ),
  suggestionEnabled: json['suggestion_enabled'] as bool?,
  customEmailText: json['custom_email_text'] as String?,
  overdueEmailText: json['overdue_email_text'] as String?,
  invoiceFromProformaEmailText:
      json['invoice_from_proforma_email_text'] as String?,
  thankYouEmailText: json['thank_you_email_text'] as String?,
  customEstimateEmailText: json['custom_estimate_email_text'] as String?,
  webinvoiceHistory: $enumDecodeNullable(
    _$WebinvoiceHistoryEnumMap,
    json['webinvoice_history'],
  ),
  htmlUrl: json['html_url'] as String?,
  url: json['url'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$SubjectToJson(_Subject instance) => <String, dynamic>{
  'id': instance.id,
  'custom_id': instance.customId,
  'user_id': instance.userId,
  'type': _$SubjectTypeEnumMap[instance.type],
  'name': instance.name,
  'full_name': instance.fullName,
  'email': instance.email,
  'email_copy': instance.emailCopy,
  'phone': instance.phone,
  'web': instance.web,
  'street': instance.street,
  'city': instance.city,
  'zip': instance.zip,
  'country': instance.country,
  'has_delivery_address': instance.hasDeliveryAddress,
  'delivery_name': instance.deliveryName,
  'delivery_street': instance.deliveryStreet,
  'delivery_city': instance.deliveryCity,
  'delivery_zip': instance.deliveryZip,
  'delivery_country': instance.deliveryCountry,
  'due': instance.due,
  'currency': instance.currency,
  'language': instance.language,
  'private_note': instance.privateNote,
  'registration_no': instance.registrationNo,
  'vat_no': instance.vatNo,
  'local_vat_no': instance.localVatNo,
  'unreliable': instance.unreliable,
  'unreliable_checked_at': instance.unreliableCheckedAt?.toIso8601String(),
  'legal_form': instance.legalForm,
  'vat_mode': instance.vatMode,
  'bank_account': instance.bankAccount,
  'iban': instance.iban,
  'swift_bic': instance.swiftBic,
  'variable_symbol': instance.variableSymbol,
  'setting_update_from_ares':
      _$SubjectSettingEnumMap[instance.settingUpdateFromAres],
  'ares_update': instance.aresUpdate,
  'setting_invoice_pdf_attachments':
      _$SubjectSettingEnumMap[instance.settingInvoicePdfAttachments],
  'setting_estimate_pdf_attachments':
      _$SubjectSettingEnumMap[instance.settingEstimatePdfAttachments],
  'setting_invoice_send_reminders':
      _$SubjectSettingEnumMap[instance.settingInvoiceSendReminders],
  'suggestion_enabled': instance.suggestionEnabled,
  'custom_email_text': instance.customEmailText,
  'overdue_email_text': instance.overdueEmailText,
  'invoice_from_proforma_email_text': instance.invoiceFromProformaEmailText,
  'thank_you_email_text': instance.thankYouEmailText,
  'custom_estimate_email_text': instance.customEstimateEmailText,
  'webinvoice_history': _$WebinvoiceHistoryEnumMap[instance.webinvoiceHistory],
  'html_url': instance.htmlUrl,
  'url': instance.url,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

const _$SubjectTypeEnumMap = {
  SubjectType.customer: 'customer',
  SubjectType.supplier: 'supplier',
  SubjectType.both: 'both',
};

const _$SubjectSettingEnumMap = {
  SubjectSetting.inherit: 'inherit',
  SubjectSetting.on: 'on',
  SubjectSetting.off: 'off',
};

const _$WebinvoiceHistoryEnumMap = {
  WebinvoiceHistory.disabled: 'disabled',
  WebinvoiceHistory.recent: 'recent',
  WebinvoiceHistory.clientPortal: 'client_portal',
};
