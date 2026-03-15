import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_payment.freezed.dart';
part 'expense_payment.g.dart';

@freezed
abstract class ExpensePayment with _$ExpensePayment {
  const factory ExpensePayment({
    int? id,
    @JsonKey(name: 'paid_on') String? paidOn,
    String? currency,
    String? amount,
    @JsonKey(name: 'native_amount') String? nativeAmount,
    @JsonKey(name: 'mark_document_as_paid') bool? markDocumentAsPaid,
    @JsonKey(name: 'variable_symbol') String? variableSymbol,
    @JsonKey(name: 'bank_account_id') int? bankAccountId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _ExpensePayment;

  factory ExpensePayment.fromJson(Map<String, dynamic> json) =>
      _$ExpensePaymentFromJson(json);
}
