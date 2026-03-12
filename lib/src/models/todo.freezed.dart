// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Todo {

 int? get id; String? get name;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'completed_at') DateTime? get completedAt; String? get text;@JsonKey(name: 'related_objects') List<RelatedObject>? get relatedObjects; Map<String, dynamic>? get params;
/// Create a copy of Todo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoCopyWith<Todo> get copyWith => _$TodoCopyWithImpl<Todo>(this as Todo, _$identity);

  /// Serializes this Todo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Todo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.relatedObjects, relatedObjects)&&const DeepCollectionEquality().equals(other.params, params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdAt,completedAt,text,const DeepCollectionEquality().hash(relatedObjects),const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'Todo(id: $id, name: $name, createdAt: $createdAt, completedAt: $completedAt, text: $text, relatedObjects: $relatedObjects, params: $params)';
}


}

/// @nodoc
abstract mixin class $TodoCopyWith<$Res>  {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) _then) = _$TodoCopyWithImpl;
@useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'completed_at') DateTime? completedAt, String? text,@JsonKey(name: 'related_objects') List<RelatedObject>? relatedObjects, Map<String, dynamic>? params
});




}
/// @nodoc
class _$TodoCopyWithImpl<$Res>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._self, this._then);

  final Todo _self;
  final $Res Function(Todo) _then;

/// Create a copy of Todo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? createdAt = freezed,Object? completedAt = freezed,Object? text = freezed,Object? relatedObjects = freezed,Object? params = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,relatedObjects: freezed == relatedObjects ? _self.relatedObjects : relatedObjects // ignore: cast_nullable_to_non_nullable
as List<RelatedObject>?,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Todo].
extension TodoPatterns on Todo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Todo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Todo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Todo value)  $default,){
final _that = this;
switch (_that) {
case _Todo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Todo value)?  $default,){
final _that = this;
switch (_that) {
case _Todo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'completed_at')  DateTime? completedAt,  String? text, @JsonKey(name: 'related_objects')  List<RelatedObject>? relatedObjects,  Map<String, dynamic>? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Todo() when $default != null:
return $default(_that.id,_that.name,_that.createdAt,_that.completedAt,_that.text,_that.relatedObjects,_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'completed_at')  DateTime? completedAt,  String? text, @JsonKey(name: 'related_objects')  List<RelatedObject>? relatedObjects,  Map<String, dynamic>? params)  $default,) {final _that = this;
switch (_that) {
case _Todo():
return $default(_that.id,_that.name,_that.createdAt,_that.completedAt,_that.text,_that.relatedObjects,_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'completed_at')  DateTime? completedAt,  String? text, @JsonKey(name: 'related_objects')  List<RelatedObject>? relatedObjects,  Map<String, dynamic>? params)?  $default,) {final _that = this;
switch (_that) {
case _Todo() when $default != null:
return $default(_that.id,_that.name,_that.createdAt,_that.completedAt,_that.text,_that.relatedObjects,_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Todo implements Todo {
  const _Todo({this.id, this.name, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'completed_at') this.completedAt, this.text, @JsonKey(name: 'related_objects') final  List<RelatedObject>? relatedObjects, final  Map<String, dynamic>? params}): _relatedObjects = relatedObjects,_params = params;
  factory _Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

@override final  int? id;
@override final  String? name;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'completed_at') final  DateTime? completedAt;
@override final  String? text;
 final  List<RelatedObject>? _relatedObjects;
@override@JsonKey(name: 'related_objects') List<RelatedObject>? get relatedObjects {
  final value = _relatedObjects;
  if (value == null) return null;
  if (_relatedObjects is EqualUnmodifiableListView) return _relatedObjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, dynamic>? _params;
@override Map<String, dynamic>? get params {
  final value = _params;
  if (value == null) return null;
  if (_params is EqualUnmodifiableMapView) return _params;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Todo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoCopyWith<_Todo> get copyWith => __$TodoCopyWithImpl<_Todo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Todo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._relatedObjects, _relatedObjects)&&const DeepCollectionEquality().equals(other._params, _params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdAt,completedAt,text,const DeepCollectionEquality().hash(_relatedObjects),const DeepCollectionEquality().hash(_params));

@override
String toString() {
  return 'Todo(id: $id, name: $name, createdAt: $createdAt, completedAt: $completedAt, text: $text, relatedObjects: $relatedObjects, params: $params)';
}


}

/// @nodoc
abstract mixin class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) _then) = __$TodoCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'completed_at') DateTime? completedAt, String? text,@JsonKey(name: 'related_objects') List<RelatedObject>? relatedObjects, Map<String, dynamic>? params
});




}
/// @nodoc
class __$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(this._self, this._then);

  final _Todo _self;
  final $Res Function(_Todo) _then;

/// Create a copy of Todo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? createdAt = freezed,Object? completedAt = freezed,Object? text = freezed,Object? relatedObjects = freezed,Object? params = freezed,}) {
  return _then(_Todo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,relatedObjects: freezed == relatedObjects ? _self._relatedObjects : relatedObjects // ignore: cast_nullable_to_non_nullable
as List<RelatedObject>?,params: freezed == params ? _self._params : params // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
