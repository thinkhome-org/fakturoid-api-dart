import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class UserAccount with _$UserAccount {
  const factory UserAccount({
    String? slug,
    String? logo,
    String? name,
    @JsonKey(name: 'registration_no') String? registrationNo,
    String? permission,
    @JsonKey(name: 'allowed_scope') List<String>? allowedScope,
  }) = _UserAccount;

  factory UserAccount.fromJson(Map<String, dynamic> json) =>
      _$UserAccountFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    int? id,
    @JsonKey(name: 'full_name') String? fullName,
    String? email,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'default_account') String? defaultAccount,
    String? permission,
    @JsonKey(name: 'allowed_scope') List<String>? allowedScope,
    List<UserAccount>? accounts,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
