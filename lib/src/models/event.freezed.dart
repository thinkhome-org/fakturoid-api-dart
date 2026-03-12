// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Event {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'created_at') DateTime? get createdAt; String? get text;@JsonKey(name: 'related_objects') List<RelatedObject>? get relatedObjects; User? get user; Map<String, dynamic>? get params;
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCopyWith<Event> get copyWith => _$EventCopyWithImpl<Event>(this as Event, _$identity);

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Event&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.relatedObjects, relatedObjects)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.params, params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,createdAt,text,const DeepCollectionEquality().hash(relatedObjects),user,const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'Event(name: $name, createdAt: $createdAt, text: $text, relatedObjects: $relatedObjects, user: $user, params: $params)';
}


}

/// @nodoc
abstract mixin class $EventCopyWith<$Res>  {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) = _$EventCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'created_at') DateTime? createdAt, String? text,@JsonKey(name: 'related_objects') List<RelatedObject>? relatedObjects, User? user, Map<String, dynamic>? params
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$EventCopyWithImpl<$Res>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._self, this._then);

  final Event _self;
  final $Res Function(Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? createdAt = freezed,Object? text = freezed,Object? relatedObjects = freezed,Object? user = freezed,Object? params = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,relatedObjects: freezed == relatedObjects ? _self.relatedObjects : relatedObjects // ignore: cast_nullable_to_non_nullable
as List<RelatedObject>?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Event].
extension EventPatterns on Event {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Event value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Event() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Event value)  $default,){
final _that = this;
switch (_that) {
case _Event():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Event value)?  $default,){
final _that = this;
switch (_that) {
case _Event() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'created_at')  DateTime? createdAt,  String? text, @JsonKey(name: 'related_objects')  List<RelatedObject>? relatedObjects,  User? user,  Map<String, dynamic>? params)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that.name,_that.createdAt,_that.text,_that.relatedObjects,_that.user,_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'created_at')  DateTime? createdAt,  String? text, @JsonKey(name: 'related_objects')  List<RelatedObject>? relatedObjects,  User? user,  Map<String, dynamic>? params)  $default,) {final _that = this;
switch (_that) {
case _Event():
return $default(_that.name,_that.createdAt,_that.text,_that.relatedObjects,_that.user,_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'created_at')  DateTime? createdAt,  String? text, @JsonKey(name: 'related_objects')  List<RelatedObject>? relatedObjects,  User? user,  Map<String, dynamic>? params)?  $default,) {final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that.name,_that.createdAt,_that.text,_that.relatedObjects,_that.user,_that.params);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Event implements Event {
  const _Event({@JsonKey(name: 'name') this.name, @JsonKey(name: 'created_at') this.createdAt, this.text, @JsonKey(name: 'related_objects') final  List<RelatedObject>? relatedObjects, this.user, final  Map<String, dynamic>? params}): _relatedObjects = relatedObjects,_params = params;
  factory _Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override final  String? text;
 final  List<RelatedObject>? _relatedObjects;
@override@JsonKey(name: 'related_objects') List<RelatedObject>? get relatedObjects {
  final value = _relatedObjects;
  if (value == null) return null;
  if (_relatedObjects is EqualUnmodifiableListView) return _relatedObjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  User? user;
 final  Map<String, dynamic>? _params;
@override Map<String, dynamic>? get params {
  final value = _params;
  if (value == null) return null;
  if (_params is EqualUnmodifiableMapView) return _params;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCopyWith<_Event> get copyWith => __$EventCopyWithImpl<_Event>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Event&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._relatedObjects, _relatedObjects)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._params, _params));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,createdAt,text,const DeepCollectionEquality().hash(_relatedObjects),user,const DeepCollectionEquality().hash(_params));

@override
String toString() {
  return 'Event(name: $name, createdAt: $createdAt, text: $text, relatedObjects: $relatedObjects, user: $user, params: $params)';
}


}

/// @nodoc
abstract mixin class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) _then) = __$EventCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'created_at') DateTime? createdAt, String? text,@JsonKey(name: 'related_objects') List<RelatedObject>? relatedObjects, User? user, Map<String, dynamic>? params
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(this._self, this._then);

  final _Event _self;
  final $Res Function(_Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? createdAt = freezed,Object? text = freezed,Object? relatedObjects = freezed,Object? user = freezed,Object? params = freezed,}) {
  return _then(_Event(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,relatedObjects: freezed == relatedObjects ? _self._relatedObjects : relatedObjects // ignore: cast_nullable_to_non_nullable
as List<RelatedObject>?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,params: freezed == params ? _self._params : params // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
