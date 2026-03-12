// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legacy_bank_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LegacyBankDetails {

@JsonKey(name: 'bank_account') String? get bankAccount; String? get iban;@JsonKey(name: 'swift_bic') String? get swiftBic;
/// Create a copy of LegacyBankDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LegacyBankDetailsCopyWith<LegacyBankDetails> get copyWith => _$LegacyBankDetailsCopyWithImpl<LegacyBankDetails>(this as LegacyBankDetails, _$identity);

  /// Serializes this LegacyBankDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LegacyBankDetails&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankAccount,iban,swiftBic);

@override
String toString() {
  return 'LegacyBankDetails(bankAccount: $bankAccount, iban: $iban, swiftBic: $swiftBic)';
}


}

/// @nodoc
abstract mixin class $LegacyBankDetailsCopyWith<$Res>  {
  factory $LegacyBankDetailsCopyWith(LegacyBankDetails value, $Res Function(LegacyBankDetails) _then) = _$LegacyBankDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bank_account') String? bankAccount, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic
});




}
/// @nodoc
class _$LegacyBankDetailsCopyWithImpl<$Res>
    implements $LegacyBankDetailsCopyWith<$Res> {
  _$LegacyBankDetailsCopyWithImpl(this._self, this._then);

  final LegacyBankDetails _self;
  final $Res Function(LegacyBankDetails) _then;

/// Create a copy of LegacyBankDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankAccount = freezed,Object? iban = freezed,Object? swiftBic = freezed,}) {
  return _then(_self.copyWith(
bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LegacyBankDetails].
extension LegacyBankDetailsPatterns on LegacyBankDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LegacyBankDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LegacyBankDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LegacyBankDetails value)  $default,){
final _that = this;
switch (_that) {
case _LegacyBankDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LegacyBankDetails value)?  $default,){
final _that = this;
switch (_that) {
case _LegacyBankDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LegacyBankDetails() when $default != null:
return $default(_that.bankAccount,_that.iban,_that.swiftBic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic)  $default,) {final _that = this;
switch (_that) {
case _LegacyBankDetails():
return $default(_that.bankAccount,_that.iban,_that.swiftBic);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic)?  $default,) {final _that = this;
switch (_that) {
case _LegacyBankDetails() when $default != null:
return $default(_that.bankAccount,_that.iban,_that.swiftBic);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LegacyBankDetails implements LegacyBankDetails {
  const _LegacyBankDetails({@JsonKey(name: 'bank_account') this.bankAccount, this.iban, @JsonKey(name: 'swift_bic') this.swiftBic});
  factory _LegacyBankDetails.fromJson(Map<String, dynamic> json) => _$LegacyBankDetailsFromJson(json);

@override@JsonKey(name: 'bank_account') final  String? bankAccount;
@override final  String? iban;
@override@JsonKey(name: 'swift_bic') final  String? swiftBic;

/// Create a copy of LegacyBankDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegacyBankDetailsCopyWith<_LegacyBankDetails> get copyWith => __$LegacyBankDetailsCopyWithImpl<_LegacyBankDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegacyBankDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegacyBankDetails&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bankAccount,iban,swiftBic);

@override
String toString() {
  return 'LegacyBankDetails(bankAccount: $bankAccount, iban: $iban, swiftBic: $swiftBic)';
}


}

/// @nodoc
abstract mixin class _$LegacyBankDetailsCopyWith<$Res> implements $LegacyBankDetailsCopyWith<$Res> {
  factory _$LegacyBankDetailsCopyWith(_LegacyBankDetails value, $Res Function(_LegacyBankDetails) _then) = __$LegacyBankDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bank_account') String? bankAccount, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic
});




}
/// @nodoc
class __$LegacyBankDetailsCopyWithImpl<$Res>
    implements _$LegacyBankDetailsCopyWith<$Res> {
  __$LegacyBankDetailsCopyWithImpl(this._self, this._then);

  final _LegacyBankDetails _self;
  final $Res Function(_LegacyBankDetails) _then;

/// Create a copy of LegacyBankDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankAccount = freezed,Object? iban = freezed,Object? swiftBic = freezed,}) {
  return _then(_LegacyBankDetails(
bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
