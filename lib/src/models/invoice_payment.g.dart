// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoicePayment _$InvoicePaymentFromJson(Map<String, dynamic> json) =>
    _InvoicePayment(
      id: (json['id'] as num?)?.toInt(),
      paidOn: json['paid_on'] as String?,
      currency: json['currency'] as String?,
      amount: json['amount'] as String?,
      nativeAmount: json['native_amount'] as String?,
      markDocumentAsPaid: json['mark_document_as_paid'] as bool?,
      proformaFollowupDocument: $enumDecodeNullable(
        _$ProformaFollowupDocumentEnumMap,
        json['proforma_followup_document'],
      ),
      sendThankYouEmail: json['send_thank_you_email'] as bool?,
      variableSymbol: json['variable_symbol'] as String?,
      bankAccountId: (json['bank_account_id'] as num?)?.toInt(),
      taxDocumentId: (json['tax_document_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$InvoicePaymentToJson(_InvoicePayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paid_on': instance.paidOn,
      'currency': instance.currency,
      'amount': instance.amount,
      'native_amount': instance.nativeAmount,
      'mark_document_as_paid': instance.markDocumentAsPaid,
      'proforma_followup_document':
          _$ProformaFollowupDocumentEnumMap[instance.proformaFollowupDocument],
      'send_thank_you_email': instance.sendThankYouEmail,
      'variable_symbol': instance.variableSymbol,
      'bank_account_id': instance.bankAccountId,
      'tax_document_id': instance.taxDocumentId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$ProformaFollowupDocumentEnumMap = {
  ProformaFollowupDocument.finalInvoicePaid: 'final_invoice_paid',
  ProformaFollowupDocument.finalInvoice: 'final_invoice',
  ProformaFollowupDocument.taxDocument: 'tax_document',
  ProformaFollowupDocument.none: 'none',
};
