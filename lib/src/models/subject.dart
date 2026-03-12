import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/subject_enums.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
abstract class Subject with _$Subject {
  const factory Subject({
    int? id,
    @JsonKey(name: 'custom_id') String? customId,
    @JsonKey(name: 'user_id') int? userId,
    SubjectType? type,
    required String name,
    @JsonKey(name: 'full_name') String? fullName,
    String? email,
    @JsonKey(name: 'email_copy') String? emailCopy,
    String? phone,
    String? web,
    String? street,
    String? city,
    String? zip,
    String? country,
    @JsonKey(name: 'has_delivery_address') bool? hasDeliveryAddress,
    @JsonKey(name: 'delivery_name') String? deliveryName,
    @JsonKey(name: 'delivery_street') String? deliveryStreet,
    @JsonKey(name: 'delivery_city') String? deliveryCity,
    @JsonKey(name: 'delivery_zip') String? deliveryZip,
    @JsonKey(name: 'delivery_country') String? deliveryCountry,
    int? due,
    String? currency,
    String? language,
    @JsonKey(name: 'private_note') String? privateNote,
    @JsonKey(name: 'registration_no') String? registrationNo,
    @JsonKey(name: 'vat_no') String? vatNo,
    @JsonKey(name: 'local_vat_no') String? localVatNo,
    bool? unreliable,
    @JsonKey(name: 'unreliable_checked_at') DateTime? unreliableCheckedAt,
    @JsonKey(name: 'legal_form') String? legalForm,
    @JsonKey(name: 'vat_mode') String? vatMode,
    @JsonKey(name: 'bank_account') String? bankAccount,
    String? iban,
    @JsonKey(name: 'swift_bic') String? swiftBic,
    @JsonKey(name: 'variable_symbol') String? variableSymbol,
    @JsonKey(name: 'setting_update_from_ares')
    SubjectSetting? settingUpdateFromAres,
    @JsonKey(name: 'ares_update') bool? aresUpdate,
    @JsonKey(name: 'setting_invoice_pdf_attachments')
    SubjectSetting? settingInvoicePdfAttachments,
    @JsonKey(name: 'setting_estimate_pdf_attachments')
    SubjectSetting? settingEstimatePdfAttachments,
    @JsonKey(name: 'setting_invoice_send_reminders')
    SubjectSetting? settingInvoiceSendReminders,
    @JsonKey(name: 'suggestion_enabled') bool? suggestionEnabled,
    @JsonKey(name: 'custom_email_text') String? customEmailText,
    @JsonKey(name: 'overdue_email_text') String? overdueEmailText,
    @JsonKey(name: 'invoice_from_proforma_email_text')
    String? invoiceFromProformaEmailText,
    @JsonKey(name: 'thank_you_email_text') String? thankYouEmailText,
    @JsonKey(name: 'custom_estimate_email_text')
    String? customEstimateEmailText,
    @JsonKey(name: 'webinvoice_history') WebinvoiceHistory? webinvoiceHistory,
    @JsonKey(name: 'html_url') String? htmlUrl,
    String? url,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
