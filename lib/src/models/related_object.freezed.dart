// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RelatedObject {

 String? get type; int? get id;
/// Create a copy of RelatedObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelatedObjectCopyWith<RelatedObject> get copyWith => _$RelatedObjectCopyWithImpl<RelatedObject>(this as RelatedObject, _$identity);

  /// Serializes this RelatedObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelatedObject&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id);

@override
String toString() {
  return 'RelatedObject(type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class $RelatedObjectCopyWith<$Res>  {
  factory $RelatedObjectCopyWith(RelatedObject value, $Res Function(RelatedObject) _then) = _$RelatedObjectCopyWithImpl;
@useResult
$Res call({
 String? type, int? id
});




}
/// @nodoc
class _$RelatedObjectCopyWithImpl<$Res>
    implements $RelatedObjectCopyWith<$Res> {
  _$RelatedObjectCopyWithImpl(this._self, this._then);

  final RelatedObject _self;
  final $Res Function(RelatedObject) _then;

/// Create a copy of RelatedObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RelatedObject].
extension RelatedObjectPatterns on RelatedObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelatedObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelatedObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelatedObject value)  $default,){
final _that = this;
switch (_that) {
case _RelatedObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelatedObject value)?  $default,){
final _that = this;
switch (_that) {
case _RelatedObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelatedObject() when $default != null:
return $default(_that.type,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  int? id)  $default,) {final _that = this;
switch (_that) {
case _RelatedObject():
return $default(_that.type,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  int? id)?  $default,) {final _that = this;
switch (_that) {
case _RelatedObject() when $default != null:
return $default(_that.type,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelatedObject implements RelatedObject {
  const _RelatedObject({this.type, this.id});
  factory _RelatedObject.fromJson(Map<String, dynamic> json) => _$RelatedObjectFromJson(json);

@override final  String? type;
@override final  int? id;

/// Create a copy of RelatedObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelatedObjectCopyWith<_RelatedObject> get copyWith => __$RelatedObjectCopyWithImpl<_RelatedObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelatedObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelatedObject&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id);

@override
String toString() {
  return 'RelatedObject(type: $type, id: $id)';
}


}

/// @nodoc
abstract mixin class _$RelatedObjectCopyWith<$Res> implements $RelatedObjectCopyWith<$Res> {
  factory _$RelatedObjectCopyWith(_RelatedObject value, $Res Function(_RelatedObject) _then) = __$RelatedObjectCopyWithImpl;
@override @useResult
$Res call({
 String? type, int? id
});




}
/// @nodoc
class __$RelatedObjectCopyWithImpl<$Res>
    implements _$RelatedObjectCopyWith<$Res> {
  __$RelatedObjectCopyWithImpl(this._self, this._then);

  final _RelatedObject _self;
  final $Res Function(_RelatedObject) _then;

/// Create a copy of RelatedObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? id = freezed,}) {
  return _then(_RelatedObject(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
