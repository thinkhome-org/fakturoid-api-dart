import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.freezed.dart';
part 'bank_account.g.dart';

@freezed
abstract class BankAccount with _$BankAccount {
  const factory BankAccount({
    int? id,
    String? name,
    String? currency,
    String? number,
    String? iban,
    @JsonKey(name: 'swift_bic') String? swiftBic,
    bool? pairing,
    @JsonKey(name: 'expense_pairing') bool? expensePairing,
    @JsonKey(name: 'payment_adjustment') bool? paymentAdjustment,
    @JsonKey(name: 'default') bool? isDefault,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
}
