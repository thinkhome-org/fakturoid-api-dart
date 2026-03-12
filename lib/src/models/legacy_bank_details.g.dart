// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legacy_bank_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LegacyBankDetails _$LegacyBankDetailsFromJson(Map<String, dynamic> json) =>
    _LegacyBankDetails(
      bankAccount: json['bank_account'] as String?,
      iban: json['iban'] as String?,
      swiftBic: json['swift_bic'] as String?,
    );

Map<String, dynamic> _$LegacyBankDetailsToJson(_LegacyBankDetails instance) =>
    <String, dynamic>{
      'bank_account': instance.bankAccount,
      'iban': instance.iban,
      'swift_bic': instance.swiftBic,
    };
