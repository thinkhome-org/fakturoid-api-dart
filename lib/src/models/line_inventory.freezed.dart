// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LineInventory {

@JsonKey(name: 'item_id') int? get itemId; String? get sku;@JsonKey(name: 'article_number_type') String? get articleNumberType;@JsonKey(name: 'article_number') String? get articleNumber;@JsonKey(name: 'move_id') int? get moveId;
/// Create a copy of LineInventory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineInventoryCopyWith<LineInventory> get copyWith => _$LineInventoryCopyWithImpl<LineInventory>(this as LineInventory, _$identity);

  /// Serializes this LineInventory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineInventory&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.articleNumberType, articleNumberType) || other.articleNumberType == articleNumberType)&&(identical(other.articleNumber, articleNumber) || other.articleNumber == articleNumber)&&(identical(other.moveId, moveId) || other.moveId == moveId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,sku,articleNumberType,articleNumber,moveId);

@override
String toString() {
  return 'LineInventory(itemId: $itemId, sku: $sku, articleNumberType: $articleNumberType, articleNumber: $articleNumber, moveId: $moveId)';
}


}

/// @nodoc
abstract mixin class $LineInventoryCopyWith<$Res>  {
  factory $LineInventoryCopyWith(LineInventory value, $Res Function(LineInventory) _then) = _$LineInventoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'item_id') int? itemId, String? sku,@JsonKey(name: 'article_number_type') String? articleNumberType,@JsonKey(name: 'article_number') String? articleNumber,@JsonKey(name: 'move_id') int? moveId
});




}
/// @nodoc
class _$LineInventoryCopyWithImpl<$Res>
    implements $LineInventoryCopyWith<$Res> {
  _$LineInventoryCopyWithImpl(this._self, this._then);

  final LineInventory _self;
  final $Res Function(LineInventory) _then;

/// Create a copy of LineInventory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = freezed,Object? sku = freezed,Object? articleNumberType = freezed,Object? articleNumber = freezed,Object? moveId = freezed,}) {
  return _then(_self.copyWith(
itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,articleNumberType: freezed == articleNumberType ? _self.articleNumberType : articleNumberType // ignore: cast_nullable_to_non_nullable
as String?,articleNumber: freezed == articleNumber ? _self.articleNumber : articleNumber // ignore: cast_nullable_to_non_nullable
as String?,moveId: freezed == moveId ? _self.moveId : moveId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LineInventory].
extension LineInventoryPatterns on LineInventory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LineInventory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LineInventory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LineInventory value)  $default,){
final _that = this;
switch (_that) {
case _LineInventory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LineInventory value)?  $default,){
final _that = this;
switch (_that) {
case _LineInventory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'item_id')  int? itemId,  String? sku, @JsonKey(name: 'article_number_type')  String? articleNumberType, @JsonKey(name: 'article_number')  String? articleNumber, @JsonKey(name: 'move_id')  int? moveId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LineInventory() when $default != null:
return $default(_that.itemId,_that.sku,_that.articleNumberType,_that.articleNumber,_that.moveId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'item_id')  int? itemId,  String? sku, @JsonKey(name: 'article_number_type')  String? articleNumberType, @JsonKey(name: 'article_number')  String? articleNumber, @JsonKey(name: 'move_id')  int? moveId)  $default,) {final _that = this;
switch (_that) {
case _LineInventory():
return $default(_that.itemId,_that.sku,_that.articleNumberType,_that.articleNumber,_that.moveId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'item_id')  int? itemId,  String? sku, @JsonKey(name: 'article_number_type')  String? articleNumberType, @JsonKey(name: 'article_number')  String? articleNumber, @JsonKey(name: 'move_id')  int? moveId)?  $default,) {final _that = this;
switch (_that) {
case _LineInventory() when $default != null:
return $default(_that.itemId,_that.sku,_that.articleNumberType,_that.articleNumber,_that.moveId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LineInventory implements LineInventory {
  const _LineInventory({@JsonKey(name: 'item_id') this.itemId, this.sku, @JsonKey(name: 'article_number_type') this.articleNumberType, @JsonKey(name: 'article_number') this.articleNumber, @JsonKey(name: 'move_id') this.moveId});
  factory _LineInventory.fromJson(Map<String, dynamic> json) => _$LineInventoryFromJson(json);

@override@JsonKey(name: 'item_id') final  int? itemId;
@override final  String? sku;
@override@JsonKey(name: 'article_number_type') final  String? articleNumberType;
@override@JsonKey(name: 'article_number') final  String? articleNumber;
@override@JsonKey(name: 'move_id') final  int? moveId;

/// Create a copy of LineInventory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineInventoryCopyWith<_LineInventory> get copyWith => __$LineInventoryCopyWithImpl<_LineInventory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LineInventoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineInventory&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.articleNumberType, articleNumberType) || other.articleNumberType == articleNumberType)&&(identical(other.articleNumber, articleNumber) || other.articleNumber == articleNumber)&&(identical(other.moveId, moveId) || other.moveId == moveId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,sku,articleNumberType,articleNumber,moveId);

@override
String toString() {
  return 'LineInventory(itemId: $itemId, sku: $sku, articleNumberType: $articleNumberType, articleNumber: $articleNumber, moveId: $moveId)';
}


}

/// @nodoc
abstract mixin class _$LineInventoryCopyWith<$Res> implements $LineInventoryCopyWith<$Res> {
  factory _$LineInventoryCopyWith(_LineInventory value, $Res Function(_LineInventory) _then) = __$LineInventoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'item_id') int? itemId, String? sku,@JsonKey(name: 'article_number_type') String? articleNumberType,@JsonKey(name: 'article_number') String? articleNumber,@JsonKey(name: 'move_id') int? moveId
});




}
/// @nodoc
class __$LineInventoryCopyWithImpl<$Res>
    implements _$LineInventoryCopyWith<$Res> {
  __$LineInventoryCopyWithImpl(this._self, this._then);

  final _LineInventory _self;
  final $Res Function(_LineInventory) _then;

/// Create a copy of LineInventory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = freezed,Object? sku = freezed,Object? articleNumberType = freezed,Object? articleNumber = freezed,Object? moveId = freezed,}) {
  return _then(_LineInventory(
itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,articleNumberType: freezed == articleNumberType ? _self.articleNumberType : articleNumberType // ignore: cast_nullable_to_non_nullable
as String?,articleNumber: freezed == articleNumber ? _self.articleNumber : articleNumber // ignore: cast_nullable_to_non_nullable
as String?,moveId: freezed == moveId ? _self.moveId : moveId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
