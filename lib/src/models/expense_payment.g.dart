// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExpensePayment _$ExpensePaymentFromJson(Map<String, dynamic> json) =>
    _ExpensePayment(
      id: (json['id'] as num?)?.toInt(),
      paidOn: json['paid_on'] as String?,
      currency: json['currency'] as String?,
      amount: json['amount'] as String?,
      nativeAmount: json['native_amount'] as String?,
      markDocumentAsPaid: json['mark_document_as_paid'] as bool?,
      variableSymbol: json['variable_symbol'] as String?,
      bankAccountId: (json['bank_account_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ExpensePaymentToJson(_ExpensePayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paid_on': instance.paidOn,
      'currency': instance.currency,
      'amount': instance.amount,
      'native_amount': instance.nativeAmount,
      'mark_document_as_paid': instance.markDocumentAsPaid,
      'variable_symbol': instance.variableSymbol,
      'bank_account_id': instance.bankAccountId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
