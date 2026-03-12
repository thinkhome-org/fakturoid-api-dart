import 'package:freezed_annotation/freezed_annotation.dart';
import 'document_attachment.dart';
import 'invoice_eet_record.dart';
import 'invoice_line.dart';
import 'invoice_paid_advance.dart';
import 'invoice_payment.dart';
import 'vat_rate_summary.dart';
import 'enums/invoice_enums.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

@freezed
abstract class Invoice with _$Invoice {
  const factory Invoice({
    int? id,
    @JsonKey(name: 'custom_id') String? customId,
    @JsonKey(name: 'document_type') DocumentType? documentType,
    @JsonKey(name: 'proforma_followup_document')
    ProformaFollowupDocument? proformaFollowupDocument,
    @JsonKey(name: 'tax_document_ids') List<int>? taxDocumentIds,
    @JsonKey(name: 'correction_id') int? correctionId,
    String? number,
    @JsonKey(name: 'number_format_id') int? numberFormatId,
    @JsonKey(name: 'variable_symbol') String? variableSymbol,
    @JsonKey(name: 'your_name') String? yourName,
    @JsonKey(name: 'your_street') String? yourStreet,
    @JsonKey(name: 'your_city') String? yourCity,
    @JsonKey(name: 'your_zip') String? yourZip,
    @JsonKey(name: 'your_country') String? yourCountry,
    @JsonKey(name: 'your_registration_no') String? yourRegistrationNo,
    @JsonKey(name: 'your_vat_no') String? yourVatNo,
    @JsonKey(name: 'your_local_vat_no') String? yourLocalVatNo,
    @JsonKey(name: 'client_name') String? clientName,
    @JsonKey(name: 'client_street') String? clientStreet,
    @JsonKey(name: 'client_city') String? clientCity,
    @JsonKey(name: 'client_zip') String? clientZip,
    @JsonKey(name: 'client_country') String? clientCountry,
    @JsonKey(name: 'client_has_delivery_address')
    bool? clientHasDeliveryAddress,
    @JsonKey(name: 'client_delivery_name') String? clientDeliveryName,
    @JsonKey(name: 'client_delivery_street') String? clientDeliveryStreet,
    @JsonKey(name: 'client_delivery_city') String? clientDeliveryCity,
    @JsonKey(name: 'client_delivery_zip') String? clientDeliveryZip,
    @JsonKey(name: 'client_delivery_country') String? clientDeliveryCountry,
    @JsonKey(name: 'client_registration_no') String? clientRegistrationNo,
    @JsonKey(name: 'client_vat_no') String? clientVatNo,
    @JsonKey(name: 'client_local_vat_no') String? clientLocalVatNo,
    @JsonKey(name: 'subject_id') required int subjectId,
    @JsonKey(name: 'subject_custom_id') String? subjectCustomId,
    @JsonKey(name: 'generator_id') int? generatorId,
    @JsonKey(name: 'related_id') int? relatedId,
    bool? paypal,
    bool? gopay,
    String? token,
    InvoiceStatus? status,
    @JsonKey(name: 'order_number') String? orderNumber,
    @JsonKey(name: 'issued_on') String? issuedOn, // Datum ve formátu YYYY-MM-DD
    @JsonKey(name: 'taxable_fulfillment_due') String? taxableFulfillmentDue,
    int? due,
    @JsonKey(name: 'due_on') String? dueOn,
    @JsonKey(name: 'sent_at') DateTime? sentAt,
    @JsonKey(name: 'paid_on') String? paidOn,
    @JsonKey(name: 'reminder_sent_at') DateTime? reminderSentAt,
    @JsonKey(name: 'last_reminder_sent_at') DateTime? lastReminderSentAt,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'uncollectible_at') DateTime? uncollectibleAt,
    @JsonKey(name: 'locked_at') DateTime? lockedAt,
    @JsonKey(name: 'webinvoice_seen_on') String? webinvoiceSeenOn,
    String? note,
    @JsonKey(name: 'footer_note') String? footerNote,
    @JsonKey(name: 'private_note') String? privateNote,
    List<String>? tags,
    @JsonKey(name: 'bank_account_id') int? bankAccountId,
    @JsonKey(name: 'bank_account') String? bankAccount,
    String? iban,
    @JsonKey(name: 'swift_bic') String? swiftBic,
    @JsonKey(name: 'iban_visibility') IbanVisibility? ibanVisibility,
    @JsonKey(name: 'show_already_paid_note_in_pdf')
    bool? showAlreadyPaidNoteInPdf,
    @JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,
    @JsonKey(name: 'custom_payment_method') String? customPaymentMethod,
    @JsonKey(name: 'hide_bank_account') bool? hideBankAccount,
    String? currency,
    @JsonKey(name: 'exchange_rate') String? exchangeRate,
    DocumentLanguage? language,
    @JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,
    @JsonKey(name: 'supply_code') String? supplyCode,
    OssMode? oss,
    @JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,
    @JsonKey(name: 'round_total') bool? roundTotal,
    String? subtotal,
    String? total,
    @JsonKey(name: 'native_subtotal') String? nativeSubtotal,
    @JsonKey(name: 'native_total') String? nativeTotal,
    @JsonKey(name: 'rounding_adjustment') String? roundingAdjustment,
    @JsonKey(name: 'remaining_amount') String? remainingAmount,
    @JsonKey(name: 'remaining_native_amount') String? remainingNativeAmount,
    @JsonKey(name: 'eet_records') List<InvoiceEetRecord>? eetRecords,
    List<InvoiceLine>? lines,
    @JsonKey(name: 'vat_rates_summary') List<VatRateSummary>? vatRatesSummary,
    @JsonKey(name: 'paid_advances') List<InvoicePaidAdvance>? paidAdvances,
    List<InvoicePayment>? payments,
    List<DocumentAttachment>? attachments,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'public_html_url') String? publicHtmlUrl,
    String? url,
    @JsonKey(name: 'pdf_url') String? pdfUrl,
    @JsonKey(name: 'subject_url') String? subjectUrl,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Invoice;

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);
}
