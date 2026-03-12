import 'package:freezed_annotation/freezed_annotation.dart';

part 'legacy_bank_details.freezed.dart';
part 'legacy_bank_details.g.dart';

@freezed
abstract class LegacyBankDetails with _$LegacyBankDetails {
  const factory LegacyBankDetails({
    @JsonKey(name: 'bank_account') String? bankAccount,
    String? iban,
    @JsonKey(name: 'swift_bic') String? swiftBic,
  }) = _LegacyBankDetails;

  factory LegacyBankDetails.fromJson(Map<String, dynamic> json) =>
      _$LegacyBankDetailsFromJson(json);
}
