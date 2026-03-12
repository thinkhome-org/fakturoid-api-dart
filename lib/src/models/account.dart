import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/account_enums.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    String? subdomain,
    String? plan,
    @JsonKey(name: 'plan_price') int? planPrice,
    @JsonKey(name: 'plan_paid_users') int? planPaidUsers,
    @JsonKey(name: 'invoice_email') String? invoiceEmail,
    String? phone,
    String? web,
    String? name,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'registration_no') String? registrationNo,
    @JsonKey(name: 'vat_no') String? vatNo,
    @JsonKey(name: 'local_vat_no') String? localVatNo,
    @JsonKey(name: 'vat_mode') AccountVatMode? vatMode,
    @JsonKey(name: 'vat_price_mode') String? vatPriceMode,
    String? street,
    String? city,
    String? zip,
    String? country,
    String? currency,
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'vat_rate') int? vatRate,
    @JsonKey(name: 'displayed_note') String? displayedNote,
    @JsonKey(name: 'invoice_note') String? invoiceNote,
    int? due,
    @JsonKey(name: 'invoice_language') String? invoiceLanguage,
    @JsonKey(name: 'invoice_payment_method') String? invoicePaymentMethod,
    @JsonKey(name: 'invoice_proforma') bool? invoiceProforma,
    @JsonKey(name: 'invoice_hide_bank_account_for_payments')
    List<String>? invoiceHideBankAccountForPayments,
    @JsonKey(name: 'fixed_exchange_rate') bool? fixedExchangeRate,
    @JsonKey(name: 'invoice_selfbilling') bool? invoiceSelfbilling,
    @JsonKey(name: 'default_estimate_type') String? defaultEstimateType,
    @JsonKey(name: 'send_overdue_email') bool? sendOverdueEmail,
    @JsonKey(name: 'overdue_email_days') int? overdueEmailDays,
    @JsonKey(name: 'send_repeated_reminders') bool? sendRepeatedReminders,
    @JsonKey(name: 'send_invoice_from_proforma_email')
    bool? sendInvoiceFromProformaEmail,
    @JsonKey(name: 'send_thank_you_email') bool? sendThankYouEmail,
    @JsonKey(name: 'invoice_paypal') bool? invoicePaypal,
    @JsonKey(name: 'invoice_gopay') bool? invoiceGopay,
    @JsonKey(name: 'digitoo_enabled') bool? digitooEnabled,
    @JsonKey(name: 'digitoo_auto_processing_enabled')
    bool? digitooAutoProcessingEnabled,
    @JsonKey(name: 'digitoo_remaining_extractions')
    int? digitooRemainingExtractions,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
