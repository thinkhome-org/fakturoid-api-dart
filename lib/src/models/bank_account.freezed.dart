// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankAccount {

 int? get id; String? get name; String? get currency; String? get number; String? get iban;@JsonKey(name: 'swift_bic') String? get swiftBic; bool? get pairing;@JsonKey(name: 'expense_pairing') bool? get expensePairing;@JsonKey(name: 'payment_adjustment') bool? get paymentAdjustment;@JsonKey(name: 'default') bool? get isDefault;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountCopyWith<BankAccount> get copyWith => _$BankAccountCopyWithImpl<BankAccount>(this as BankAccount, _$identity);

  /// Serializes this BankAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.number, number) || other.number == number)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic)&&(identical(other.pairing, pairing) || other.pairing == pairing)&&(identical(other.expensePairing, expensePairing) || other.expensePairing == expensePairing)&&(identical(other.paymentAdjustment, paymentAdjustment) || other.paymentAdjustment == paymentAdjustment)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,currency,number,iban,swiftBic,pairing,expensePairing,paymentAdjustment,isDefault,createdAt,updatedAt);

@override
String toString() {
  return 'BankAccount(id: $id, name: $name, currency: $currency, number: $number, iban: $iban, swiftBic: $swiftBic, pairing: $pairing, expensePairing: $expensePairing, paymentAdjustment: $paymentAdjustment, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BankAccountCopyWith<$Res>  {
  factory $BankAccountCopyWith(BankAccount value, $Res Function(BankAccount) _then) = _$BankAccountCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? currency, String? number, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic, bool? pairing,@JsonKey(name: 'expense_pairing') bool? expensePairing,@JsonKey(name: 'payment_adjustment') bool? paymentAdjustment,@JsonKey(name: 'default') bool? isDefault,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$BankAccountCopyWithImpl<$Res>
    implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._self, this._then);

  final BankAccount _self;
  final $Res Function(BankAccount) _then;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? currency = freezed,Object? number = freezed,Object? iban = freezed,Object? swiftBic = freezed,Object? pairing = freezed,Object? expensePairing = freezed,Object? paymentAdjustment = freezed,Object? isDefault = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,pairing: freezed == pairing ? _self.pairing : pairing // ignore: cast_nullable_to_non_nullable
as bool?,expensePairing: freezed == expensePairing ? _self.expensePairing : expensePairing // ignore: cast_nullable_to_non_nullable
as bool?,paymentAdjustment: freezed == paymentAdjustment ? _self.paymentAdjustment : paymentAdjustment // ignore: cast_nullable_to_non_nullable
as bool?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccount].
extension BankAccountPatterns on BankAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccount value)  $default,){
final _that = this;
switch (_that) {
case _BankAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccount value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? currency,  String? number,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic,  bool? pairing, @JsonKey(name: 'expense_pairing')  bool? expensePairing, @JsonKey(name: 'payment_adjustment')  bool? paymentAdjustment, @JsonKey(name: 'default')  bool? isDefault, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that.id,_that.name,_that.currency,_that.number,_that.iban,_that.swiftBic,_that.pairing,_that.expensePairing,_that.paymentAdjustment,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? currency,  String? number,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic,  bool? pairing, @JsonKey(name: 'expense_pairing')  bool? expensePairing, @JsonKey(name: 'payment_adjustment')  bool? paymentAdjustment, @JsonKey(name: 'default')  bool? isDefault, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _BankAccount():
return $default(_that.id,_that.name,_that.currency,_that.number,_that.iban,_that.swiftBic,_that.pairing,_that.expensePairing,_that.paymentAdjustment,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? currency,  String? number,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic,  bool? pairing, @JsonKey(name: 'expense_pairing')  bool? expensePairing, @JsonKey(name: 'payment_adjustment')  bool? paymentAdjustment, @JsonKey(name: 'default')  bool? isDefault, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BankAccount() when $default != null:
return $default(_that.id,_that.name,_that.currency,_that.number,_that.iban,_that.swiftBic,_that.pairing,_that.expensePairing,_that.paymentAdjustment,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankAccount implements BankAccount {
  const _BankAccount({this.id, this.name, this.currency, this.number, this.iban, @JsonKey(name: 'swift_bic') this.swiftBic, this.pairing, @JsonKey(name: 'expense_pairing') this.expensePairing, @JsonKey(name: 'payment_adjustment') this.paymentAdjustment, @JsonKey(name: 'default') this.isDefault, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _BankAccount.fromJson(Map<String, dynamic> json) => _$BankAccountFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? currency;
@override final  String? number;
@override final  String? iban;
@override@JsonKey(name: 'swift_bic') final  String? swiftBic;
@override final  bool? pairing;
@override@JsonKey(name: 'expense_pairing') final  bool? expensePairing;
@override@JsonKey(name: 'payment_adjustment') final  bool? paymentAdjustment;
@override@JsonKey(name: 'default') final  bool? isDefault;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountCopyWith<_BankAccount> get copyWith => __$BankAccountCopyWithImpl<_BankAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.number, number) || other.number == number)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic)&&(identical(other.pairing, pairing) || other.pairing == pairing)&&(identical(other.expensePairing, expensePairing) || other.expensePairing == expensePairing)&&(identical(other.paymentAdjustment, paymentAdjustment) || other.paymentAdjustment == paymentAdjustment)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,currency,number,iban,swiftBic,pairing,expensePairing,paymentAdjustment,isDefault,createdAt,updatedAt);

@override
String toString() {
  return 'BankAccount(id: $id, name: $name, currency: $currency, number: $number, iban: $iban, swiftBic: $swiftBic, pairing: $pairing, expensePairing: $expensePairing, paymentAdjustment: $paymentAdjustment, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BankAccountCopyWith<$Res> implements $BankAccountCopyWith<$Res> {
  factory _$BankAccountCopyWith(_BankAccount value, $Res Function(_BankAccount) _then) = __$BankAccountCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? currency, String? number, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic, bool? pairing,@JsonKey(name: 'expense_pairing') bool? expensePairing,@JsonKey(name: 'payment_adjustment') bool? paymentAdjustment,@JsonKey(name: 'default') bool? isDefault,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$BankAccountCopyWithImpl<$Res>
    implements _$BankAccountCopyWith<$Res> {
  __$BankAccountCopyWithImpl(this._self, this._then);

  final _BankAccount _self;
  final $Res Function(_BankAccount) _then;

/// Create a copy of BankAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? currency = freezed,Object? number = freezed,Object? iban = freezed,Object? swiftBic = freezed,Object? pairing = freezed,Object? expensePairing = freezed,Object? paymentAdjustment = freezed,Object? isDefault = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_BankAccount(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,pairing: freezed == pairing ? _self.pairing : pairing // ignore: cast_nullable_to_non_nullable
as bool?,expensePairing: freezed == expensePairing ? _self.expensePairing : expensePairing // ignore: cast_nullable_to_non_nullable
as bool?,paymentAdjustment: freezed == paymentAdjustment ? _self.paymentAdjustment : paymentAdjustment // ignore: cast_nullable_to_non_nullable
as bool?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
