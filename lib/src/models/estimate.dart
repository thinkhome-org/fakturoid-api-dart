import 'package:freezed_annotation/freezed_annotation.dart';
import 'document_attachment.dart';
import 'invoice_line.dart';
import 'vat_rate_summary.dart';
import 'enums/estimate_enums.dart';
import 'enums/invoice_enums.dart';

part 'estimate.freezed.dart';
part 'estimate.g.dart';

@freezed
abstract class Estimate with _$Estimate {
  const factory Estimate({
    int? id,
    @JsonKey(name: 'custom_id') String? customId,
    @JsonKey(name: 'document_type') EstimateDocumentType? documentType,
    String? number,
    @JsonKey(name: 'number_format_id') int? numberFormatId,
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
    String? token,
    EstimateStatus? status,
    @JsonKey(name: 'order_number') String? orderNumber,
    @JsonKey(name: 'issued_on') String? issuedOn,
    @JsonKey(name: 'taxable_fulfillment_due') String? taxableFulfillmentDue,
    int? due,
    @JsonKey(name: 'due_on') String? dueOn,
    @JsonKey(name: 'sent_at') DateTime? sentAt,
    @JsonKey(name: 'accepted_at') DateTime? acceptedAt,
    @JsonKey(name: 'rejected_at') DateTime? rejectedAt,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'locked_at') DateTime? lockedAt,
    String? note,
    @JsonKey(name: 'footer_note') String? footerNote,
    @JsonKey(name: 'private_note') String? privateNote,
    List<String>? tags,
    @JsonKey(name: 'bank_account_id') int? bankAccountId,
    @JsonKey(name: 'bank_account') String? bankAccount,
    String? iban,
    @JsonKey(name: 'swift_bic') String? swiftBic,
    @JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,
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
    List<InvoiceLine>? lines,
    @JsonKey(name: 'vat_rates_summary') List<VatRateSummary>? vatRatesSummary,
    List<DocumentAttachment>? attachments,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'public_html_url') String? publicHtmlUrl,
    String? url,
    @JsonKey(name: 'pdf_url') String? pdfUrl,
    @JsonKey(name: 'subject_url') String? subjectUrl,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Estimate;

  factory Estimate.fromJson(Map<String, dynamic> json) =>
      _$EstimateFromJson(json);
}
