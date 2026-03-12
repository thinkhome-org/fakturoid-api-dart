// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAccount {

 String? get slug; String? get logo; String? get name;@JsonKey(name: 'registration_no') String? get registrationNo; String? get permission;@JsonKey(name: 'allowed_scope') List<String>? get allowedScope;
/// Create a copy of UserAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAccountCopyWith<UserAccount> get copyWith => _$UserAccountCopyWithImpl<UserAccount>(this as UserAccount, _$identity);

  /// Serializes this UserAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAccount&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.name, name) || other.name == name)&&(identical(other.registrationNo, registrationNo) || other.registrationNo == registrationNo)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.allowedScope, allowedScope));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,logo,name,registrationNo,permission,const DeepCollectionEquality().hash(allowedScope));

@override
String toString() {
  return 'UserAccount(slug: $slug, logo: $logo, name: $name, registrationNo: $registrationNo, permission: $permission, allowedScope: $allowedScope)';
}


}

/// @nodoc
abstract mixin class $UserAccountCopyWith<$Res>  {
  factory $UserAccountCopyWith(UserAccount value, $Res Function(UserAccount) _then) = _$UserAccountCopyWithImpl;
@useResult
$Res call({
 String? slug, String? logo, String? name,@JsonKey(name: 'registration_no') String? registrationNo, String? permission,@JsonKey(name: 'allowed_scope') List<String>? allowedScope
});




}
/// @nodoc
class _$UserAccountCopyWithImpl<$Res>
    implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(this._self, this._then);

  final UserAccount _self;
  final $Res Function(UserAccount) _then;

/// Create a copy of UserAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = freezed,Object? logo = freezed,Object? name = freezed,Object? registrationNo = freezed,Object? permission = freezed,Object? allowedScope = freezed,}) {
  return _then(_self.copyWith(
slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,registrationNo: freezed == registrationNo ? _self.registrationNo : registrationNo // ignore: cast_nullable_to_non_nullable
as String?,permission: freezed == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String?,allowedScope: freezed == allowedScope ? _self.allowedScope : allowedScope // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserAccount].
extension UserAccountPatterns on UserAccount {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAccount() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAccount value)  $default,){
final _that = this;
switch (_that) {
case _UserAccount():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAccount value)?  $default,){
final _that = this;
switch (_that) {
case _UserAccount() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? slug,  String? logo,  String? name, @JsonKey(name: 'registration_no')  String? registrationNo,  String? permission, @JsonKey(name: 'allowed_scope')  List<String>? allowedScope)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAccount() when $default != null:
return $default(_that.slug,_that.logo,_that.name,_that.registrationNo,_that.permission,_that.allowedScope);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? slug,  String? logo,  String? name, @JsonKey(name: 'registration_no')  String? registrationNo,  String? permission, @JsonKey(name: 'allowed_scope')  List<String>? allowedScope)  $default,) {final _that = this;
switch (_that) {
case _UserAccount():
return $default(_that.slug,_that.logo,_that.name,_that.registrationNo,_that.permission,_that.allowedScope);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? slug,  String? logo,  String? name, @JsonKey(name: 'registration_no')  String? registrationNo,  String? permission, @JsonKey(name: 'allowed_scope')  List<String>? allowedScope)?  $default,) {final _that = this;
switch (_that) {
case _UserAccount() when $default != null:
return $default(_that.slug,_that.logo,_that.name,_that.registrationNo,_that.permission,_that.allowedScope);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAccount implements UserAccount {
  const _UserAccount({this.slug, this.logo, this.name, @JsonKey(name: 'registration_no') this.registrationNo, this.permission, @JsonKey(name: 'allowed_scope') final  List<String>? allowedScope}): _allowedScope = allowedScope;
  factory _UserAccount.fromJson(Map<String, dynamic> json) => _$UserAccountFromJson(json);

@override final  String? slug;
@override final  String? logo;
@override final  String? name;
@override@JsonKey(name: 'registration_no') final  String? registrationNo;
@override final  String? permission;
 final  List<String>? _allowedScope;
@override@JsonKey(name: 'allowed_scope') List<String>? get allowedScope {
  final value = _allowedScope;
  if (value == null) return null;
  if (_allowedScope is EqualUnmodifiableListView) return _allowedScope;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAccountCopyWith<_UserAccount> get copyWith => __$UserAccountCopyWithImpl<_UserAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAccount&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.name, name) || other.name == name)&&(identical(other.registrationNo, registrationNo) || other.registrationNo == registrationNo)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other._allowedScope, _allowedScope));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,logo,name,registrationNo,permission,const DeepCollectionEquality().hash(_allowedScope));

@override
String toString() {
  return 'UserAccount(slug: $slug, logo: $logo, name: $name, registrationNo: $registrationNo, permission: $permission, allowedScope: $allowedScope)';
}


}

/// @nodoc
abstract mixin class _$UserAccountCopyWith<$Res> implements $UserAccountCopyWith<$Res> {
  factory _$UserAccountCopyWith(_UserAccount value, $Res Function(_UserAccount) _then) = __$UserAccountCopyWithImpl;
@override @useResult
$Res call({
 String? slug, String? logo, String? name,@JsonKey(name: 'registration_no') String? registrationNo, String? permission,@JsonKey(name: 'allowed_scope') List<String>? allowedScope
});




}
/// @nodoc
class __$UserAccountCopyWithImpl<$Res>
    implements _$UserAccountCopyWith<$Res> {
  __$UserAccountCopyWithImpl(this._self, this._then);

  final _UserAccount _self;
  final $Res Function(_UserAccount) _then;

/// Create a copy of UserAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = freezed,Object? logo = freezed,Object? name = freezed,Object? registrationNo = freezed,Object? permission = freezed,Object? allowedScope = freezed,}) {
  return _then(_UserAccount(
slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,registrationNo: freezed == registrationNo ? _self.registrationNo : registrationNo // ignore: cast_nullable_to_non_nullable
as String?,permission: freezed == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String?,allowedScope: freezed == allowedScope ? _self._allowedScope : allowedScope // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$User {

 int? get id;@JsonKey(name: 'full_name') String? get fullName; String? get email;@JsonKey(name: 'avatar_url', readValue: _readAvatarValue) String? get avatarUrl;@JsonKey(name: 'default_account') String? get defaultAccount; String? get permission;@JsonKey(name: 'allowed_scope') List<String>? get allowedScope; List<UserAccount>? get accounts;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.defaultAccount, defaultAccount) || other.defaultAccount == defaultAccount)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.allowedScope, allowedScope)&&const DeepCollectionEquality().equals(other.accounts, accounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,email,avatarUrl,defaultAccount,permission,const DeepCollectionEquality().hash(allowedScope),const DeepCollectionEquality().hash(accounts));

@override
String toString() {
  return 'User(id: $id, fullName: $fullName, email: $email, avatarUrl: $avatarUrl, defaultAccount: $defaultAccount, permission: $permission, allowedScope: $allowedScope, accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'full_name') String? fullName, String? email,@JsonKey(name: 'avatar_url', readValue: _readAvatarValue) String? avatarUrl,@JsonKey(name: 'default_account') String? defaultAccount, String? permission,@JsonKey(name: 'allowed_scope') List<String>? allowedScope, List<UserAccount>? accounts
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fullName = freezed,Object? email = freezed,Object? avatarUrl = freezed,Object? defaultAccount = freezed,Object? permission = freezed,Object? allowedScope = freezed,Object? accounts = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,defaultAccount: freezed == defaultAccount ? _self.defaultAccount : defaultAccount // ignore: cast_nullable_to_non_nullable
as String?,permission: freezed == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String?,allowedScope: freezed == allowedScope ? _self.allowedScope : allowedScope // ignore: cast_nullable_to_non_nullable
as List<String>?,accounts: freezed == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<UserAccount>?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'avatar_url', readValue: _readAvatarValue)  String? avatarUrl, @JsonKey(name: 'default_account')  String? defaultAccount,  String? permission, @JsonKey(name: 'allowed_scope')  List<String>? allowedScope,  List<UserAccount>? accounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.fullName,_that.email,_that.avatarUrl,_that.defaultAccount,_that.permission,_that.allowedScope,_that.accounts);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'avatar_url', readValue: _readAvatarValue)  String? avatarUrl, @JsonKey(name: 'default_account')  String? defaultAccount,  String? permission, @JsonKey(name: 'allowed_scope')  List<String>? allowedScope,  List<UserAccount>? accounts)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.fullName,_that.email,_that.avatarUrl,_that.defaultAccount,_that.permission,_that.allowedScope,_that.accounts);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'avatar_url', readValue: _readAvatarValue)  String? avatarUrl, @JsonKey(name: 'default_account')  String? defaultAccount,  String? permission, @JsonKey(name: 'allowed_scope')  List<String>? allowedScope,  List<UserAccount>? accounts)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.fullName,_that.email,_that.avatarUrl,_that.defaultAccount,_that.permission,_that.allowedScope,_that.accounts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({this.id, @JsonKey(name: 'full_name') this.fullName, this.email, @JsonKey(name: 'avatar_url', readValue: _readAvatarValue) this.avatarUrl, @JsonKey(name: 'default_account') this.defaultAccount, this.permission, @JsonKey(name: 'allowed_scope') final  List<String>? allowedScope, final  List<UserAccount>? accounts}): _allowedScope = allowedScope,_accounts = accounts;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override final  String? email;
@override@JsonKey(name: 'avatar_url', readValue: _readAvatarValue) final  String? avatarUrl;
@override@JsonKey(name: 'default_account') final  String? defaultAccount;
@override final  String? permission;
 final  List<String>? _allowedScope;
@override@JsonKey(name: 'allowed_scope') List<String>? get allowedScope {
  final value = _allowedScope;
  if (value == null) return null;
  if (_allowedScope is EqualUnmodifiableListView) return _allowedScope;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<UserAccount>? _accounts;
@override List<UserAccount>? get accounts {
  final value = _accounts;
  if (value == null) return null;
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.defaultAccount, defaultAccount) || other.defaultAccount == defaultAccount)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other._allowedScope, _allowedScope)&&const DeepCollectionEquality().equals(other._accounts, _accounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fullName,email,avatarUrl,defaultAccount,permission,const DeepCollectionEquality().hash(_allowedScope),const DeepCollectionEquality().hash(_accounts));

@override
String toString() {
  return 'User(id: $id, fullName: $fullName, email: $email, avatarUrl: $avatarUrl, defaultAccount: $defaultAccount, permission: $permission, allowedScope: $allowedScope, accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'full_name') String? fullName, String? email,@JsonKey(name: 'avatar_url', readValue: _readAvatarValue) String? avatarUrl,@JsonKey(name: 'default_account') String? defaultAccount, String? permission,@JsonKey(name: 'allowed_scope') List<String>? allowedScope, List<UserAccount>? accounts
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fullName = freezed,Object? email = freezed,Object? avatarUrl = freezed,Object? defaultAccount = freezed,Object? permission = freezed,Object? allowedScope = freezed,Object? accounts = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,defaultAccount: freezed == defaultAccount ? _self.defaultAccount : defaultAccount // ignore: cast_nullable_to_non_nullable
as String?,permission: freezed == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as String?,allowedScope: freezed == allowedScope ? _self._allowedScope : allowedScope // ignore: cast_nullable_to_non_nullable
as List<String>?,accounts: freezed == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<UserAccount>?,
  ));
}


}

// dart format on
