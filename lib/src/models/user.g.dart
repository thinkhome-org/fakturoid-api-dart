// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAccount _$UserAccountFromJson(Map<String, dynamic> json) => _UserAccount(
  slug: json['slug'] as String?,
  logo: json['logo'] as String?,
  name: json['name'] as String?,
  registrationNo: json['registration_no'] as String?,
  permission: json['permission'] as String?,
  allowedScope: (json['allowed_scope'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$UserAccountToJson(_UserAccount instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'logo': instance.logo,
      'name': instance.name,
      'registration_no': instance.registrationNo,
      'permission': instance.permission,
      'allowed_scope': instance.allowedScope,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num?)?.toInt(),
  fullName: json['full_name'] as String?,
  email: json['email'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  defaultAccount: json['default_account'] as String?,
  permission: json['permission'] as String?,
  allowedScope: (json['allowed_scope'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  accounts: (json['accounts'] as List<dynamic>?)
      ?.map((e) => UserAccount.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'full_name': instance.fullName,
  'email': instance.email,
  'avatar_url': instance.avatarUrl,
  'default_account': instance.defaultAccount,
  'permission': instance.permission,
  'allowed_scope': instance.allowedScope,
  'accounts': instance.accounts,
};
