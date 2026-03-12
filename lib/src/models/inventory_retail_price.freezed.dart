// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_retail_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryRetailPrice {

 int? get id; String get amount; String get currency;@JsonKey(name: '_destroy') bool? get destroy;@JsonKey(name: 'created_at', includeToJson: false) DateTime? get createdAt;@JsonKey(name: 'updated_at', includeToJson: false) DateTime? get updatedAt;
/// Create a copy of InventoryRetailPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryRetailPriceCopyWith<InventoryRetailPrice> get copyWith => _$InventoryRetailPriceCopyWithImpl<InventoryRetailPrice>(this as InventoryRetailPrice, _$identity);

  /// Serializes this InventoryRetailPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryRetailPrice&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.destroy, destroy) || other.destroy == destroy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,currency,destroy,createdAt,updatedAt);

@override
String toString() {
  return 'InventoryRetailPrice(id: $id, amount: $amount, currency: $currency, destroy: $destroy, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InventoryRetailPriceCopyWith<$Res>  {
  factory $InventoryRetailPriceCopyWith(InventoryRetailPrice value, $Res Function(InventoryRetailPrice) _then) = _$InventoryRetailPriceCopyWithImpl;
@useResult
$Res call({
 int? id, String amount, String currency,@JsonKey(name: '_destroy') bool? destroy,@JsonKey(name: 'created_at', includeToJson: false) DateTime? createdAt,@JsonKey(name: 'updated_at', includeToJson: false) DateTime? updatedAt
});




}
/// @nodoc
class _$InventoryRetailPriceCopyWithImpl<$Res>
    implements $InventoryRetailPriceCopyWith<$Res> {
  _$InventoryRetailPriceCopyWithImpl(this._self, this._then);

  final InventoryRetailPrice _self;
  final $Res Function(InventoryRetailPrice) _then;

/// Create a copy of InventoryRetailPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? amount = null,Object? currency = null,Object? destroy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,destroy: freezed == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryRetailPrice].
extension InventoryRetailPricePatterns on InventoryRetailPrice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryRetailPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryRetailPrice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryRetailPrice value)  $default,){
final _that = this;
switch (_that) {
case _InventoryRetailPrice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryRetailPrice value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryRetailPrice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String amount,  String currency, @JsonKey(name: '_destroy')  bool? destroy, @JsonKey(name: 'created_at', includeToJson: false)  DateTime? createdAt, @JsonKey(name: 'updated_at', includeToJson: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryRetailPrice() when $default != null:
return $default(_that.id,_that.amount,_that.currency,_that.destroy,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String amount,  String currency, @JsonKey(name: '_destroy')  bool? destroy, @JsonKey(name: 'created_at', includeToJson: false)  DateTime? createdAt, @JsonKey(name: 'updated_at', includeToJson: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryRetailPrice():
return $default(_that.id,_that.amount,_that.currency,_that.destroy,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String amount,  String currency, @JsonKey(name: '_destroy')  bool? destroy, @JsonKey(name: 'created_at', includeToJson: false)  DateTime? createdAt, @JsonKey(name: 'updated_at', includeToJson: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryRetailPrice() when $default != null:
return $default(_that.id,_that.amount,_that.currency,_that.destroy,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryRetailPrice implements InventoryRetailPrice {
  const _InventoryRetailPrice({this.id, required this.amount, required this.currency, @JsonKey(name: '_destroy') this.destroy, @JsonKey(name: 'created_at', includeToJson: false) this.createdAt, @JsonKey(name: 'updated_at', includeToJson: false) this.updatedAt});
  factory _InventoryRetailPrice.fromJson(Map<String, dynamic> json) => _$InventoryRetailPriceFromJson(json);

@override final  int? id;
@override final  String amount;
@override final  String currency;
@override@JsonKey(name: '_destroy') final  bool? destroy;
@override@JsonKey(name: 'created_at', includeToJson: false) final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at', includeToJson: false) final  DateTime? updatedAt;

/// Create a copy of InventoryRetailPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryRetailPriceCopyWith<_InventoryRetailPrice> get copyWith => __$InventoryRetailPriceCopyWithImpl<_InventoryRetailPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryRetailPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryRetailPrice&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.destroy, destroy) || other.destroy == destroy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,currency,destroy,createdAt,updatedAt);

@override
String toString() {
  return 'InventoryRetailPrice(id: $id, amount: $amount, currency: $currency, destroy: $destroy, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryRetailPriceCopyWith<$Res> implements $InventoryRetailPriceCopyWith<$Res> {
  factory _$InventoryRetailPriceCopyWith(_InventoryRetailPrice value, $Res Function(_InventoryRetailPrice) _then) = __$InventoryRetailPriceCopyWithImpl;
@override @useResult
$Res call({
 int? id, String amount, String currency,@JsonKey(name: '_destroy') bool? destroy,@JsonKey(name: 'created_at', includeToJson: false) DateTime? createdAt,@JsonKey(name: 'updated_at', includeToJson: false) DateTime? updatedAt
});




}
/// @nodoc
class __$InventoryRetailPriceCopyWithImpl<$Res>
    implements _$InventoryRetailPriceCopyWith<$Res> {
  __$InventoryRetailPriceCopyWithImpl(this._self, this._then);

  final _InventoryRetailPrice _self;
  final $Res Function(_InventoryRetailPrice) _then;

/// Create a copy of InventoryRetailPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? amount = null,Object? currency = null,Object? destroy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_InventoryRetailPrice(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,destroy: freezed == destroy ? _self.destroy : destroy // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
