import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/invoice_enums.dart';

part 'invoice_payment.freezed.dart';
part 'invoice_payment.g.dart';

@freezed
abstract class InvoicePayment with _$InvoicePayment {
  const factory InvoicePayment({
    int? id,
    @JsonKey(name: 'paid_on') String? paidOn, // Datum ve formátu YYYY-MM-DD
    String? currency,
    String? amount,
    @JsonKey(name: 'native_amount') String? nativeAmount,
    @JsonKey(name: 'mark_document_as_paid') bool? markDocumentAsPaid,
    @JsonKey(name: 'proforma_followup_document')
    ProformaFollowupDocument? proformaFollowupDocument,
    @JsonKey(name: 'send_thank_you_email') bool? sendThankYouEmail,
    @JsonKey(name: 'variable_symbol') String? variableSymbol,
    @JsonKey(name: 'bank_account_id') int? bankAccountId,
    @JsonKey(name: 'tax_document_id') int? taxDocumentId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _InvoicePayment;

  factory InvoicePayment.fromJson(Map<String, dynamic> json) =>
      _$InvoicePaymentFromJson(json);
}
