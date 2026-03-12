// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankAccount _$BankAccountFromJson(Map<String, dynamic> json) => _BankAccount(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  currency: json['currency'] as String?,
  number: json['number'] as String?,
  iban: json['iban'] as String?,
  swiftBic: json['swift_bic'] as String?,
  pairing: json['pairing'] as bool?,
  expensePairing: json['expense_pairing'] as bool?,
  paymentAdjustment: json['payment_adjustment'] as bool?,
  isDefault: json['default'] as bool?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$BankAccountToJson(_BankAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currency': instance.currency,
      'number': instance.number,
      'iban': instance.iban,
      'swift_bic': instance.swiftBic,
      'pairing': instance.pairing,
      'expense_pairing': instance.expensePairing,
      'payment_adjustment': instance.paymentAdjustment,
      'default': instance.isDefault,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
