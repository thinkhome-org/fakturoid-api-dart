// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExpensePayment {

 int? get id;@JsonKey(name: 'paid_on') String? get paidOn; String? get currency; String? get amount;@JsonKey(name: 'native_amount') String? get nativeAmount;@JsonKey(name: 'mark_document_as_paid') bool? get markDocumentAsPaid;@JsonKey(name: 'variable_symbol') String? get variableSymbol;@JsonKey(name: 'bank_account_id') int? get bankAccountId;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of ExpensePayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensePaymentCopyWith<ExpensePayment> get copyWith => _$ExpensePaymentCopyWithImpl<ExpensePayment>(this as ExpensePayment, _$identity);

  /// Serializes this ExpensePayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensePayment&&(identical(other.id, id) || other.id == id)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.nativeAmount, nativeAmount) || other.nativeAmount == nativeAmount)&&(identical(other.markDocumentAsPaid, markDocumentAsPaid) || other.markDocumentAsPaid == markDocumentAsPaid)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,paidOn,currency,amount,nativeAmount,markDocumentAsPaid,variableSymbol,bankAccountId,createdAt,updatedAt);

@override
String toString() {
  return 'ExpensePayment(id: $id, paidOn: $paidOn, currency: $currency, amount: $amount, nativeAmount: $nativeAmount, markDocumentAsPaid: $markDocumentAsPaid, variableSymbol: $variableSymbol, bankAccountId: $bankAccountId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ExpensePaymentCopyWith<$Res>  {
  factory $ExpensePaymentCopyWith(ExpensePayment value, $Res Function(ExpensePayment) _then) = _$ExpensePaymentCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'paid_on') String? paidOn, String? currency, String? amount,@JsonKey(name: 'native_amount') String? nativeAmount,@JsonKey(name: 'mark_document_as_paid') bool? markDocumentAsPaid,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$ExpensePaymentCopyWithImpl<$Res>
    implements $ExpensePaymentCopyWith<$Res> {
  _$ExpensePaymentCopyWithImpl(this._self, this._then);

  final ExpensePayment _self;
  final $Res Function(ExpensePayment) _then;

/// Create a copy of ExpensePayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? paidOn = freezed,Object? currency = freezed,Object? amount = freezed,Object? nativeAmount = freezed,Object? markDocumentAsPaid = freezed,Object? variableSymbol = freezed,Object? bankAccountId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,nativeAmount: freezed == nativeAmount ? _self.nativeAmount : nativeAmount // ignore: cast_nullable_to_non_nullable
as String?,markDocumentAsPaid: freezed == markDocumentAsPaid ? _self.markDocumentAsPaid : markDocumentAsPaid // ignore: cast_nullable_to_non_nullable
as bool?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpensePayment].
extension ExpensePaymentPatterns on ExpensePayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpensePayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpensePayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpensePayment value)  $default,){
final _that = this;
switch (_that) {
case _ExpensePayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpensePayment value)?  $default,){
final _that = this;
switch (_that) {
case _ExpensePayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'paid_on')  String? paidOn,  String? currency,  String? amount, @JsonKey(name: 'native_amount')  String? nativeAmount, @JsonKey(name: 'mark_document_as_paid')  bool? markDocumentAsPaid, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpensePayment() when $default != null:
return $default(_that.id,_that.paidOn,_that.currency,_that.amount,_that.nativeAmount,_that.markDocumentAsPaid,_that.variableSymbol,_that.bankAccountId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'paid_on')  String? paidOn,  String? currency,  String? amount, @JsonKey(name: 'native_amount')  String? nativeAmount, @JsonKey(name: 'mark_document_as_paid')  bool? markDocumentAsPaid, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ExpensePayment():
return $default(_that.id,_that.paidOn,_that.currency,_that.amount,_that.nativeAmount,_that.markDocumentAsPaid,_that.variableSymbol,_that.bankAccountId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'paid_on')  String? paidOn,  String? currency,  String? amount, @JsonKey(name: 'native_amount')  String? nativeAmount, @JsonKey(name: 'mark_document_as_paid')  bool? markDocumentAsPaid, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ExpensePayment() when $default != null:
return $default(_that.id,_that.paidOn,_that.currency,_that.amount,_that.nativeAmount,_that.markDocumentAsPaid,_that.variableSymbol,_that.bankAccountId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExpensePayment implements ExpensePayment {
  const _ExpensePayment({this.id, @JsonKey(name: 'paid_on') this.paidOn, this.currency, this.amount, @JsonKey(name: 'native_amount') this.nativeAmount, @JsonKey(name: 'mark_document_as_paid') this.markDocumentAsPaid, @JsonKey(name: 'variable_symbol') this.variableSymbol, @JsonKey(name: 'bank_account_id') this.bankAccountId, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _ExpensePayment.fromJson(Map<String, dynamic> json) => _$ExpensePaymentFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'paid_on') final  String? paidOn;
@override final  String? currency;
@override final  String? amount;
@override@JsonKey(name: 'native_amount') final  String? nativeAmount;
@override@JsonKey(name: 'mark_document_as_paid') final  bool? markDocumentAsPaid;
@override@JsonKey(name: 'variable_symbol') final  String? variableSymbol;
@override@JsonKey(name: 'bank_account_id') final  int? bankAccountId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of ExpensePayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensePaymentCopyWith<_ExpensePayment> get copyWith => __$ExpensePaymentCopyWithImpl<_ExpensePayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpensePaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpensePayment&&(identical(other.id, id) || other.id == id)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.nativeAmount, nativeAmount) || other.nativeAmount == nativeAmount)&&(identical(other.markDocumentAsPaid, markDocumentAsPaid) || other.markDocumentAsPaid == markDocumentAsPaid)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,paidOn,currency,amount,nativeAmount,markDocumentAsPaid,variableSymbol,bankAccountId,createdAt,updatedAt);

@override
String toString() {
  return 'ExpensePayment(id: $id, paidOn: $paidOn, currency: $currency, amount: $amount, nativeAmount: $nativeAmount, markDocumentAsPaid: $markDocumentAsPaid, variableSymbol: $variableSymbol, bankAccountId: $bankAccountId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ExpensePaymentCopyWith<$Res> implements $ExpensePaymentCopyWith<$Res> {
  factory _$ExpensePaymentCopyWith(_ExpensePayment value, $Res Function(_ExpensePayment) _then) = __$ExpensePaymentCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'paid_on') String? paidOn, String? currency, String? amount,@JsonKey(name: 'native_amount') String? nativeAmount,@JsonKey(name: 'mark_document_as_paid') bool? markDocumentAsPaid,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$ExpensePaymentCopyWithImpl<$Res>
    implements _$ExpensePaymentCopyWith<$Res> {
  __$ExpensePaymentCopyWithImpl(this._self, this._then);

  final _ExpensePayment _self;
  final $Res Function(_ExpensePayment) _then;

/// Create a copy of ExpensePayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? paidOn = freezed,Object? currency = freezed,Object? amount = freezed,Object? nativeAmount = freezed,Object? markDocumentAsPaid = freezed,Object? variableSymbol = freezed,Object? bankAccountId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ExpensePayment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,nativeAmount: freezed == nativeAmount ? _self.nativeAmount : nativeAmount // ignore: cast_nullable_to_non_nullable
as String?,markDocumentAsPaid: freezed == markDocumentAsPaid ? _self.markDocumentAsPaid : markDocumentAsPaid // ignore: cast_nullable_to_non_nullable
as bool?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
