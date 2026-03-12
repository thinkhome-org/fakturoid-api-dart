import 'package:freezed_annotation/freezed_annotation.dart';
import 'document_attachment.dart';
import 'invoice_line.dart';
import 'invoice_payment.dart';
import 'vat_rate_summary.dart';
import 'enums/invoice_enums.dart';
import 'enums/expense_enums.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

@freezed
abstract class Expense with _$Expense {
  const factory Expense({
    int? id,
    @JsonKey(name: 'custom_id') String? customId,
    String? number,
    @JsonKey(name: 'original_number') String? originalNumber,
    @JsonKey(name: 'variable_symbol') String? variableSymbol,
    @JsonKey(name: 'supplier_name') String? supplierName,
    @JsonKey(name: 'supplier_street') String? supplierStreet,
    @JsonKey(name: 'supplier_city') String? supplierCity,
    @JsonKey(name: 'supplier_zip') String? supplierZip,
    @JsonKey(name: 'supplier_country') String? supplierCountry,
    @JsonKey(name: 'supplier_registration_no') String? supplierRegistrationNo,
    @JsonKey(name: 'supplier_vat_no') String? supplierVatNo,
    @JsonKey(name: 'supplier_local_vat_no') String? supplierLocalVatNo,
    @JsonKey(name: 'subject_id') required int subjectId,
    @JsonKey(name: 'subject_custom_id') String? subjectCustomId,
    ExpenseStatus? status,
    @JsonKey(name: 'document_type') ExpenseDocumentType? documentType,
    @JsonKey(name: 'issued_on') String? issuedOn,
    @JsonKey(name: 'taxable_fulfillment_due') String? taxableFulfillmentDue,
    @JsonKey(name: 'received_on') String? receivedOn,
    @JsonKey(name: 'due_on') String? dueOn,
    @JsonKey(name: 'remind_due_date') bool? remindDueDate,
    @JsonKey(name: 'paid_on') String? paidOn,
    @JsonKey(name: 'locked_at') DateTime? lockedAt,
    String? description,
    @JsonKey(name: 'private_note') String? privateNote,
    List<String>? tags,
    @JsonKey(name: 'bank_account') String? bankAccount,
    String? iban,
    @JsonKey(name: 'swift_bic') String? swiftBic,
    @JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,
    @JsonKey(name: 'custom_payment_method') String? customPaymentMethod,
    String? currency,
    @JsonKey(name: 'exchange_rate') String? exchangeRate,
    @JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,
    @JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,
    @JsonKey(name: 'supply_code') String? supplyCode,
    @JsonKey(name: 'proportional_vat_deduction') int? proportionalVatDeduction,
    @JsonKey(name: 'tax_deductible') bool? taxDeductible,
    @JsonKey(name: 'round_total') bool? roundTotal,
    @JsonKey(name: 'rounding_adjustment') String? roundingAdjustment,
    String? subtotal,
    String? total,
    @JsonKey(name: 'native_subtotal') String? nativeSubtotal,
    @JsonKey(name: 'native_total') String? nativeTotal,
    List<InvoiceLine>? lines,
    @JsonKey(name: 'vat_rates_summary') List<VatRateSummary>? vatRatesSummary,
    List<InvoicePayment>? payments,
    List<DocumentAttachment>? attachments,
    @JsonKey(name: 'html_url') String? htmlUrl,
    String? url,
    @JsonKey(name: 'subject_url') String? subjectUrl,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Expense;

  factory Expense.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFromJson(json);
}
