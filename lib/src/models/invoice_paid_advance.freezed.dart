// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_paid_advance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoicePaidAdvance {

 int? get id; String? get number;@JsonKey(name: 'variable_symbol') String? get variableSymbol;@JsonKey(name: 'paid_on') String? get paidOn;@JsonKey(name: 'vat_rate') num? get vatRate; String? get price; String? get vat;
/// Create a copy of InvoicePaidAdvance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoicePaidAdvanceCopyWith<InvoicePaidAdvance> get copyWith => _$InvoicePaidAdvanceCopyWithImpl<InvoicePaidAdvance>(this as InvoicePaidAdvance, _$identity);

  /// Serializes this InvoicePaidAdvance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoicePaidAdvance&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.price, price) || other.price == price)&&(identical(other.vat, vat) || other.vat == vat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,number,variableSymbol,paidOn,vatRate,price,vat);

@override
String toString() {
  return 'InvoicePaidAdvance(id: $id, number: $number, variableSymbol: $variableSymbol, paidOn: $paidOn, vatRate: $vatRate, price: $price, vat: $vat)';
}


}

/// @nodoc
abstract mixin class $InvoicePaidAdvanceCopyWith<$Res>  {
  factory $InvoicePaidAdvanceCopyWith(InvoicePaidAdvance value, $Res Function(InvoicePaidAdvance) _then) = _$InvoicePaidAdvanceCopyWithImpl;
@useResult
$Res call({
 int? id, String? number,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'paid_on') String? paidOn,@JsonKey(name: 'vat_rate') num? vatRate, String? price, String? vat
});




}
/// @nodoc
class _$InvoicePaidAdvanceCopyWithImpl<$Res>
    implements $InvoicePaidAdvanceCopyWith<$Res> {
  _$InvoicePaidAdvanceCopyWithImpl(this._self, this._then);

  final InvoicePaidAdvance _self;
  final $Res Function(InvoicePaidAdvance) _then;

/// Create a copy of InvoicePaidAdvance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? number = freezed,Object? variableSymbol = freezed,Object? paidOn = freezed,Object? vatRate = freezed,Object? price = freezed,Object? vat = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as num?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoicePaidAdvance].
extension InvoicePaidAdvancePatterns on InvoicePaidAdvance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoicePaidAdvance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoicePaidAdvance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoicePaidAdvance value)  $default,){
final _that = this;
switch (_that) {
case _InvoicePaidAdvance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoicePaidAdvance value)?  $default,){
final _that = this;
switch (_that) {
case _InvoicePaidAdvance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? number, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'vat_rate')  num? vatRate,  String? price,  String? vat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoicePaidAdvance() when $default != null:
return $default(_that.id,_that.number,_that.variableSymbol,_that.paidOn,_that.vatRate,_that.price,_that.vat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? number, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'vat_rate')  num? vatRate,  String? price,  String? vat)  $default,) {final _that = this;
switch (_that) {
case _InvoicePaidAdvance():
return $default(_that.id,_that.number,_that.variableSymbol,_that.paidOn,_that.vatRate,_that.price,_that.vat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? number, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'vat_rate')  num? vatRate,  String? price,  String? vat)?  $default,) {final _that = this;
switch (_that) {
case _InvoicePaidAdvance() when $default != null:
return $default(_that.id,_that.number,_that.variableSymbol,_that.paidOn,_that.vatRate,_that.price,_that.vat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoicePaidAdvance implements InvoicePaidAdvance {
  const _InvoicePaidAdvance({this.id, this.number, @JsonKey(name: 'variable_symbol') this.variableSymbol, @JsonKey(name: 'paid_on') this.paidOn, @JsonKey(name: 'vat_rate') this.vatRate, this.price, this.vat});
  factory _InvoicePaidAdvance.fromJson(Map<String, dynamic> json) => _$InvoicePaidAdvanceFromJson(json);

@override final  int? id;
@override final  String? number;
@override@JsonKey(name: 'variable_symbol') final  String? variableSymbol;
@override@JsonKey(name: 'paid_on') final  String? paidOn;
@override@JsonKey(name: 'vat_rate') final  num? vatRate;
@override final  String? price;
@override final  String? vat;

/// Create a copy of InvoicePaidAdvance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoicePaidAdvanceCopyWith<_InvoicePaidAdvance> get copyWith => __$InvoicePaidAdvanceCopyWithImpl<_InvoicePaidAdvance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoicePaidAdvanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoicePaidAdvance&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.price, price) || other.price == price)&&(identical(other.vat, vat) || other.vat == vat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,number,variableSymbol,paidOn,vatRate,price,vat);

@override
String toString() {
  return 'InvoicePaidAdvance(id: $id, number: $number, variableSymbol: $variableSymbol, paidOn: $paidOn, vatRate: $vatRate, price: $price, vat: $vat)';
}


}

/// @nodoc
abstract mixin class _$InvoicePaidAdvanceCopyWith<$Res> implements $InvoicePaidAdvanceCopyWith<$Res> {
  factory _$InvoicePaidAdvanceCopyWith(_InvoicePaidAdvance value, $Res Function(_InvoicePaidAdvance) _then) = __$InvoicePaidAdvanceCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? number,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'paid_on') String? paidOn,@JsonKey(name: 'vat_rate') num? vatRate, String? price, String? vat
});




}
/// @nodoc
class __$InvoicePaidAdvanceCopyWithImpl<$Res>
    implements _$InvoicePaidAdvanceCopyWith<$Res> {
  __$InvoicePaidAdvanceCopyWithImpl(this._self, this._then);

  final _InvoicePaidAdvance _self;
  final $Res Function(_InvoicePaidAdvance) _then;

/// Create a copy of InvoicePaidAdvance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? number = freezed,Object? variableSymbol = freezed,Object? paidOn = freezed,Object? vatRate = freezed,Object? price = freezed,Object? vat = freezed,}) {
  return _then(_InvoicePaidAdvance(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as num?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
