// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vat_rate_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VatRateSummary {

@JsonKey(name: 'vat_rate') num? get vatRate; String? get base; String? get vat; String? get currency;@JsonKey(name: 'native_base') String? get nativeBase;@JsonKey(name: 'native_vat') String? get nativeVat;@JsonKey(name: 'native_currency') String? get nativeCurrency;
/// Create a copy of VatRateSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VatRateSummaryCopyWith<VatRateSummary> get copyWith => _$VatRateSummaryCopyWithImpl<VatRateSummary>(this as VatRateSummary, _$identity);

  /// Serializes this VatRateSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VatRateSummary&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.base, base) || other.base == base)&&(identical(other.vat, vat) || other.vat == vat)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.nativeBase, nativeBase) || other.nativeBase == nativeBase)&&(identical(other.nativeVat, nativeVat) || other.nativeVat == nativeVat)&&(identical(other.nativeCurrency, nativeCurrency) || other.nativeCurrency == nativeCurrency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vatRate,base,vat,currency,nativeBase,nativeVat,nativeCurrency);

@override
String toString() {
  return 'VatRateSummary(vatRate: $vatRate, base: $base, vat: $vat, currency: $currency, nativeBase: $nativeBase, nativeVat: $nativeVat, nativeCurrency: $nativeCurrency)';
}


}

/// @nodoc
abstract mixin class $VatRateSummaryCopyWith<$Res>  {
  factory $VatRateSummaryCopyWith(VatRateSummary value, $Res Function(VatRateSummary) _then) = _$VatRateSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'vat_rate') num? vatRate, String? base, String? vat, String? currency,@JsonKey(name: 'native_base') String? nativeBase,@JsonKey(name: 'native_vat') String? nativeVat,@JsonKey(name: 'native_currency') String? nativeCurrency
});




}
/// @nodoc
class _$VatRateSummaryCopyWithImpl<$Res>
    implements $VatRateSummaryCopyWith<$Res> {
  _$VatRateSummaryCopyWithImpl(this._self, this._then);

  final VatRateSummary _self;
  final $Res Function(VatRateSummary) _then;

/// Create a copy of VatRateSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vatRate = freezed,Object? base = freezed,Object? vat = freezed,Object? currency = freezed,Object? nativeBase = freezed,Object? nativeVat = freezed,Object? nativeCurrency = freezed,}) {
  return _then(_self.copyWith(
vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as num?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,nativeBase: freezed == nativeBase ? _self.nativeBase : nativeBase // ignore: cast_nullable_to_non_nullable
as String?,nativeVat: freezed == nativeVat ? _self.nativeVat : nativeVat // ignore: cast_nullable_to_non_nullable
as String?,nativeCurrency: freezed == nativeCurrency ? _self.nativeCurrency : nativeCurrency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VatRateSummary].
extension VatRateSummaryPatterns on VatRateSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VatRateSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VatRateSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VatRateSummary value)  $default,){
final _that = this;
switch (_that) {
case _VatRateSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VatRateSummary value)?  $default,){
final _that = this;
switch (_that) {
case _VatRateSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'vat_rate')  num? vatRate,  String? base,  String? vat,  String? currency, @JsonKey(name: 'native_base')  String? nativeBase, @JsonKey(name: 'native_vat')  String? nativeVat, @JsonKey(name: 'native_currency')  String? nativeCurrency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VatRateSummary() when $default != null:
return $default(_that.vatRate,_that.base,_that.vat,_that.currency,_that.nativeBase,_that.nativeVat,_that.nativeCurrency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'vat_rate')  num? vatRate,  String? base,  String? vat,  String? currency, @JsonKey(name: 'native_base')  String? nativeBase, @JsonKey(name: 'native_vat')  String? nativeVat, @JsonKey(name: 'native_currency')  String? nativeCurrency)  $default,) {final _that = this;
switch (_that) {
case _VatRateSummary():
return $default(_that.vatRate,_that.base,_that.vat,_that.currency,_that.nativeBase,_that.nativeVat,_that.nativeCurrency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'vat_rate')  num? vatRate,  String? base,  String? vat,  String? currency, @JsonKey(name: 'native_base')  String? nativeBase, @JsonKey(name: 'native_vat')  String? nativeVat, @JsonKey(name: 'native_currency')  String? nativeCurrency)?  $default,) {final _that = this;
switch (_that) {
case _VatRateSummary() when $default != null:
return $default(_that.vatRate,_that.base,_that.vat,_that.currency,_that.nativeBase,_that.nativeVat,_that.nativeCurrency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VatRateSummary implements VatRateSummary {
  const _VatRateSummary({@JsonKey(name: 'vat_rate') this.vatRate, this.base, this.vat, this.currency, @JsonKey(name: 'native_base') this.nativeBase, @JsonKey(name: 'native_vat') this.nativeVat, @JsonKey(name: 'native_currency') this.nativeCurrency});
  factory _VatRateSummary.fromJson(Map<String, dynamic> json) => _$VatRateSummaryFromJson(json);

@override@JsonKey(name: 'vat_rate') final  num? vatRate;
@override final  String? base;
@override final  String? vat;
@override final  String? currency;
@override@JsonKey(name: 'native_base') final  String? nativeBase;
@override@JsonKey(name: 'native_vat') final  String? nativeVat;
@override@JsonKey(name: 'native_currency') final  String? nativeCurrency;

/// Create a copy of VatRateSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VatRateSummaryCopyWith<_VatRateSummary> get copyWith => __$VatRateSummaryCopyWithImpl<_VatRateSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VatRateSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VatRateSummary&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.base, base) || other.base == base)&&(identical(other.vat, vat) || other.vat == vat)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.nativeBase, nativeBase) || other.nativeBase == nativeBase)&&(identical(other.nativeVat, nativeVat) || other.nativeVat == nativeVat)&&(identical(other.nativeCurrency, nativeCurrency) || other.nativeCurrency == nativeCurrency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,vatRate,base,vat,currency,nativeBase,nativeVat,nativeCurrency);

@override
String toString() {
  return 'VatRateSummary(vatRate: $vatRate, base: $base, vat: $vat, currency: $currency, nativeBase: $nativeBase, nativeVat: $nativeVat, nativeCurrency: $nativeCurrency)';
}


}

/// @nodoc
abstract mixin class _$VatRateSummaryCopyWith<$Res> implements $VatRateSummaryCopyWith<$Res> {
  factory _$VatRateSummaryCopyWith(_VatRateSummary value, $Res Function(_VatRateSummary) _then) = __$VatRateSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'vat_rate') num? vatRate, String? base, String? vat, String? currency,@JsonKey(name: 'native_base') String? nativeBase,@JsonKey(name: 'native_vat') String? nativeVat,@JsonKey(name: 'native_currency') String? nativeCurrency
});




}
/// @nodoc
class __$VatRateSummaryCopyWithImpl<$Res>
    implements _$VatRateSummaryCopyWith<$Res> {
  __$VatRateSummaryCopyWithImpl(this._self, this._then);

  final _VatRateSummary _self;
  final $Res Function(_VatRateSummary) _then;

/// Create a copy of VatRateSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vatRate = freezed,Object? base = freezed,Object? vat = freezed,Object? currency = freezed,Object? nativeBase = freezed,Object? nativeVat = freezed,Object? nativeCurrency = freezed,}) {
  return _then(_VatRateSummary(
vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as num?,base: freezed == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,nativeBase: freezed == nativeBase ? _self.nativeBase : nativeBase // ignore: cast_nullable_to_non_nullable
as String?,nativeVat: freezed == nativeVat ? _self.nativeVat : nativeVat // ignore: cast_nullable_to_non_nullable
as String?,nativeCurrency: freezed == nativeCurrency ? _self.nativeCurrency : nativeCurrency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
