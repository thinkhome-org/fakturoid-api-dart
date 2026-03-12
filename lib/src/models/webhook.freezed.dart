// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webhook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Webhook {

 int? get id;@JsonKey(name: 'failed_deliveries_uuid') String? get failedDeliveriesUuid;@JsonKey(name: 'webhook_url') String? get webhookUrl;@JsonKey(name: 'auth_header') String? get authHeader; bool? get active; List<String>? get events; String? get url;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of Webhook
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookCopyWith<Webhook> get copyWith => _$WebhookCopyWithImpl<Webhook>(this as Webhook, _$identity);

  /// Serializes this Webhook to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Webhook&&(identical(other.id, id) || other.id == id)&&(identical(other.failedDeliveriesUuid, failedDeliveriesUuid) || other.failedDeliveriesUuid == failedDeliveriesUuid)&&(identical(other.webhookUrl, webhookUrl) || other.webhookUrl == webhookUrl)&&(identical(other.authHeader, authHeader) || other.authHeader == authHeader)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.events, events)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,failedDeliveriesUuid,webhookUrl,authHeader,active,const DeepCollectionEquality().hash(events),url,createdAt,updatedAt);

@override
String toString() {
  return 'Webhook(id: $id, failedDeliveriesUuid: $failedDeliveriesUuid, webhookUrl: $webhookUrl, authHeader: $authHeader, active: $active, events: $events, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $WebhookCopyWith<$Res>  {
  factory $WebhookCopyWith(Webhook value, $Res Function(Webhook) _then) = _$WebhookCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'failed_deliveries_uuid') String? failedDeliveriesUuid,@JsonKey(name: 'webhook_url') String? webhookUrl,@JsonKey(name: 'auth_header') String? authHeader, bool? active, List<String>? events, String? url,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$WebhookCopyWithImpl<$Res>
    implements $WebhookCopyWith<$Res> {
  _$WebhookCopyWithImpl(this._self, this._then);

  final Webhook _self;
  final $Res Function(Webhook) _then;

/// Create a copy of Webhook
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? failedDeliveriesUuid = freezed,Object? webhookUrl = freezed,Object? authHeader = freezed,Object? active = freezed,Object? events = freezed,Object? url = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,failedDeliveriesUuid: freezed == failedDeliveriesUuid ? _self.failedDeliveriesUuid : failedDeliveriesUuid // ignore: cast_nullable_to_non_nullable
as String?,webhookUrl: freezed == webhookUrl ? _self.webhookUrl : webhookUrl // ignore: cast_nullable_to_non_nullable
as String?,authHeader: freezed == authHeader ? _self.authHeader : authHeader // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,events: freezed == events ? _self.events : events // ignore: cast_nullable_to_non_nullable
as List<String>?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Webhook].
extension WebhookPatterns on Webhook {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Webhook value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Webhook() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Webhook value)  $default,){
final _that = this;
switch (_that) {
case _Webhook():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Webhook value)?  $default,){
final _that = this;
switch (_that) {
case _Webhook() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'failed_deliveries_uuid')  String? failedDeliveriesUuid, @JsonKey(name: 'webhook_url')  String? webhookUrl, @JsonKey(name: 'auth_header')  String? authHeader,  bool? active,  List<String>? events,  String? url, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Webhook() when $default != null:
return $default(_that.id,_that.failedDeliveriesUuid,_that.webhookUrl,_that.authHeader,_that.active,_that.events,_that.url,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'failed_deliveries_uuid')  String? failedDeliveriesUuid, @JsonKey(name: 'webhook_url')  String? webhookUrl, @JsonKey(name: 'auth_header')  String? authHeader,  bool? active,  List<String>? events,  String? url, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Webhook():
return $default(_that.id,_that.failedDeliveriesUuid,_that.webhookUrl,_that.authHeader,_that.active,_that.events,_that.url,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'failed_deliveries_uuid')  String? failedDeliveriesUuid, @JsonKey(name: 'webhook_url')  String? webhookUrl, @JsonKey(name: 'auth_header')  String? authHeader,  bool? active,  List<String>? events,  String? url, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Webhook() when $default != null:
return $default(_that.id,_that.failedDeliveriesUuid,_that.webhookUrl,_that.authHeader,_that.active,_that.events,_that.url,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Webhook implements Webhook {
  const _Webhook({this.id, @JsonKey(name: 'failed_deliveries_uuid') this.failedDeliveriesUuid, @JsonKey(name: 'webhook_url') this.webhookUrl, @JsonKey(name: 'auth_header') this.authHeader, this.active, final  List<String>? events, this.url, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _events = events;
  factory _Webhook.fromJson(Map<String, dynamic> json) => _$WebhookFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'failed_deliveries_uuid') final  String? failedDeliveriesUuid;
@override@JsonKey(name: 'webhook_url') final  String? webhookUrl;
@override@JsonKey(name: 'auth_header') final  String? authHeader;
@override final  bool? active;
 final  List<String>? _events;
@override List<String>? get events {
  final value = _events;
  if (value == null) return null;
  if (_events is EqualUnmodifiableListView) return _events;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? url;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of Webhook
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookCopyWith<_Webhook> get copyWith => __$WebhookCopyWithImpl<_Webhook>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Webhook&&(identical(other.id, id) || other.id == id)&&(identical(other.failedDeliveriesUuid, failedDeliveriesUuid) || other.failedDeliveriesUuid == failedDeliveriesUuid)&&(identical(other.webhookUrl, webhookUrl) || other.webhookUrl == webhookUrl)&&(identical(other.authHeader, authHeader) || other.authHeader == authHeader)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other._events, _events)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,failedDeliveriesUuid,webhookUrl,authHeader,active,const DeepCollectionEquality().hash(_events),url,createdAt,updatedAt);

@override
String toString() {
  return 'Webhook(id: $id, failedDeliveriesUuid: $failedDeliveriesUuid, webhookUrl: $webhookUrl, authHeader: $authHeader, active: $active, events: $events, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$WebhookCopyWith<$Res> implements $WebhookCopyWith<$Res> {
  factory _$WebhookCopyWith(_Webhook value, $Res Function(_Webhook) _then) = __$WebhookCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'failed_deliveries_uuid') String? failedDeliveriesUuid,@JsonKey(name: 'webhook_url') String? webhookUrl,@JsonKey(name: 'auth_header') String? authHeader, bool? active, List<String>? events, String? url,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$WebhookCopyWithImpl<$Res>
    implements _$WebhookCopyWith<$Res> {
  __$WebhookCopyWithImpl(this._self, this._then);

  final _Webhook _self;
  final $Res Function(_Webhook) _then;

/// Create a copy of Webhook
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? failedDeliveriesUuid = freezed,Object? webhookUrl = freezed,Object? authHeader = freezed,Object? active = freezed,Object? events = freezed,Object? url = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Webhook(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,failedDeliveriesUuid: freezed == failedDeliveriesUuid ? _self.failedDeliveriesUuid : failedDeliveriesUuid // ignore: cast_nullable_to_non_nullable
as String?,webhookUrl: freezed == webhookUrl ? _self.webhookUrl : webhookUrl // ignore: cast_nullable_to_non_nullable
as String?,authHeader: freezed == authHeader ? _self.authHeader : authHeader // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,events: freezed == events ? _self._events : events // ignore: cast_nullable_to_non_nullable
as List<String>?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$WebhookFailedDelivery {

 int? get id;@JsonKey(name: 'event_name') String? get eventName;@JsonKey(name: 'idempotency_key') String? get idempotencyKey; String? get url; Map<String, dynamic>? get body; List<WebhookDeliveryAttempt>? get deliveries;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of WebhookFailedDelivery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookFailedDeliveryCopyWith<WebhookFailedDelivery> get copyWith => _$WebhookFailedDeliveryCopyWithImpl<WebhookFailedDelivery>(this as WebhookFailedDelivery, _$identity);

  /// Serializes this WebhookFailedDelivery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhookFailedDelivery&&(identical(other.id, id) || other.id == id)&&(identical(other.eventName, eventName) || other.eventName == eventName)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.body, body)&&const DeepCollectionEquality().equals(other.deliveries, deliveries)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventName,idempotencyKey,url,const DeepCollectionEquality().hash(body),const DeepCollectionEquality().hash(deliveries),createdAt,updatedAt);

@override
String toString() {
  return 'WebhookFailedDelivery(id: $id, eventName: $eventName, idempotencyKey: $idempotencyKey, url: $url, body: $body, deliveries: $deliveries, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $WebhookFailedDeliveryCopyWith<$Res>  {
  factory $WebhookFailedDeliveryCopyWith(WebhookFailedDelivery value, $Res Function(WebhookFailedDelivery) _then) = _$WebhookFailedDeliveryCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'event_name') String? eventName,@JsonKey(name: 'idempotency_key') String? idempotencyKey, String? url, Map<String, dynamic>? body, List<WebhookDeliveryAttempt>? deliveries,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$WebhookFailedDeliveryCopyWithImpl<$Res>
    implements $WebhookFailedDeliveryCopyWith<$Res> {
  _$WebhookFailedDeliveryCopyWithImpl(this._self, this._then);

  final WebhookFailedDelivery _self;
  final $Res Function(WebhookFailedDelivery) _then;

/// Create a copy of WebhookFailedDelivery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? eventName = freezed,Object? idempotencyKey = freezed,Object? url = freezed,Object? body = freezed,Object? deliveries = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,eventName: freezed == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String?,idempotencyKey: freezed == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,deliveries: freezed == deliveries ? _self.deliveries : deliveries // ignore: cast_nullable_to_non_nullable
as List<WebhookDeliveryAttempt>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WebhookFailedDelivery].
extension WebhookFailedDeliveryPatterns on WebhookFailedDelivery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhookFailedDelivery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhookFailedDelivery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhookFailedDelivery value)  $default,){
final _that = this;
switch (_that) {
case _WebhookFailedDelivery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhookFailedDelivery value)?  $default,){
final _that = this;
switch (_that) {
case _WebhookFailedDelivery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'event_name')  String? eventName, @JsonKey(name: 'idempotency_key')  String? idempotencyKey,  String? url,  Map<String, dynamic>? body,  List<WebhookDeliveryAttempt>? deliveries, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhookFailedDelivery() when $default != null:
return $default(_that.id,_that.eventName,_that.idempotencyKey,_that.url,_that.body,_that.deliveries,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'event_name')  String? eventName, @JsonKey(name: 'idempotency_key')  String? idempotencyKey,  String? url,  Map<String, dynamic>? body,  List<WebhookDeliveryAttempt>? deliveries, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _WebhookFailedDelivery():
return $default(_that.id,_that.eventName,_that.idempotencyKey,_that.url,_that.body,_that.deliveries,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'event_name')  String? eventName, @JsonKey(name: 'idempotency_key')  String? idempotencyKey,  String? url,  Map<String, dynamic>? body,  List<WebhookDeliveryAttempt>? deliveries, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _WebhookFailedDelivery() when $default != null:
return $default(_that.id,_that.eventName,_that.idempotencyKey,_that.url,_that.body,_that.deliveries,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhookFailedDelivery implements WebhookFailedDelivery {
  const _WebhookFailedDelivery({this.id, @JsonKey(name: 'event_name') this.eventName, @JsonKey(name: 'idempotency_key') this.idempotencyKey, this.url, final  Map<String, dynamic>? body, final  List<WebhookDeliveryAttempt>? deliveries, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _body = body,_deliveries = deliveries;
  factory _WebhookFailedDelivery.fromJson(Map<String, dynamic> json) => _$WebhookFailedDeliveryFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'event_name') final  String? eventName;
@override@JsonKey(name: 'idempotency_key') final  String? idempotencyKey;
@override final  String? url;
 final  Map<String, dynamic>? _body;
@override Map<String, dynamic>? get body {
  final value = _body;
  if (value == null) return null;
  if (_body is EqualUnmodifiableMapView) return _body;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<WebhookDeliveryAttempt>? _deliveries;
@override List<WebhookDeliveryAttempt>? get deliveries {
  final value = _deliveries;
  if (value == null) return null;
  if (_deliveries is EqualUnmodifiableListView) return _deliveries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of WebhookFailedDelivery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookFailedDeliveryCopyWith<_WebhookFailedDelivery> get copyWith => __$WebhookFailedDeliveryCopyWithImpl<_WebhookFailedDelivery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookFailedDeliveryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhookFailedDelivery&&(identical(other.id, id) || other.id == id)&&(identical(other.eventName, eventName) || other.eventName == eventName)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._body, _body)&&const DeepCollectionEquality().equals(other._deliveries, _deliveries)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventName,idempotencyKey,url,const DeepCollectionEquality().hash(_body),const DeepCollectionEquality().hash(_deliveries),createdAt,updatedAt);

@override
String toString() {
  return 'WebhookFailedDelivery(id: $id, eventName: $eventName, idempotencyKey: $idempotencyKey, url: $url, body: $body, deliveries: $deliveries, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$WebhookFailedDeliveryCopyWith<$Res> implements $WebhookFailedDeliveryCopyWith<$Res> {
  factory _$WebhookFailedDeliveryCopyWith(_WebhookFailedDelivery value, $Res Function(_WebhookFailedDelivery) _then) = __$WebhookFailedDeliveryCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'event_name') String? eventName,@JsonKey(name: 'idempotency_key') String? idempotencyKey, String? url, Map<String, dynamic>? body, List<WebhookDeliveryAttempt>? deliveries,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$WebhookFailedDeliveryCopyWithImpl<$Res>
    implements _$WebhookFailedDeliveryCopyWith<$Res> {
  __$WebhookFailedDeliveryCopyWithImpl(this._self, this._then);

  final _WebhookFailedDelivery _self;
  final $Res Function(_WebhookFailedDelivery) _then;

/// Create a copy of WebhookFailedDelivery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? eventName = freezed,Object? idempotencyKey = freezed,Object? url = freezed,Object? body = freezed,Object? deliveries = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_WebhookFailedDelivery(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,eventName: freezed == eventName ? _self.eventName : eventName // ignore: cast_nullable_to_non_nullable
as String?,idempotencyKey: freezed == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self._body : body // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,deliveries: freezed == deliveries ? _self._deliveries : deliveries // ignore: cast_nullable_to_non_nullable
as List<WebhookDeliveryAttempt>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$WebhookDeliveryAttempt {

 int? get id;@JsonKey(name: 'request_id') String? get requestId;@JsonKey(name: 'response_status') Object? get responseStatus;@JsonKey(name: 'response_content_type') String? get responseContentType;@JsonKey(name: 'response_body') String? get responseBody;@JsonKey(name: 'started_at') DateTime? get startedAt;@JsonKey(name: 'finished_at') DateTime? get finishedAt;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of WebhookDeliveryAttempt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebhookDeliveryAttemptCopyWith<WebhookDeliveryAttempt> get copyWith => _$WebhookDeliveryAttemptCopyWithImpl<WebhookDeliveryAttempt>(this as WebhookDeliveryAttempt, _$identity);

  /// Serializes this WebhookDeliveryAttempt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebhookDeliveryAttempt&&(identical(other.id, id) || other.id == id)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other.responseStatus, responseStatus)&&(identical(other.responseContentType, responseContentType) || other.responseContentType == responseContentType)&&(identical(other.responseBody, responseBody) || other.responseBody == responseBody)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,requestId,const DeepCollectionEquality().hash(responseStatus),responseContentType,responseBody,startedAt,finishedAt,createdAt);

@override
String toString() {
  return 'WebhookDeliveryAttempt(id: $id, requestId: $requestId, responseStatus: $responseStatus, responseContentType: $responseContentType, responseBody: $responseBody, startedAt: $startedAt, finishedAt: $finishedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $WebhookDeliveryAttemptCopyWith<$Res>  {
  factory $WebhookDeliveryAttemptCopyWith(WebhookDeliveryAttempt value, $Res Function(WebhookDeliveryAttempt) _then) = _$WebhookDeliveryAttemptCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'request_id') String? requestId,@JsonKey(name: 'response_status') Object? responseStatus,@JsonKey(name: 'response_content_type') String? responseContentType,@JsonKey(name: 'response_body') String? responseBody,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'finished_at') DateTime? finishedAt,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$WebhookDeliveryAttemptCopyWithImpl<$Res>
    implements $WebhookDeliveryAttemptCopyWith<$Res> {
  _$WebhookDeliveryAttemptCopyWithImpl(this._self, this._then);

  final WebhookDeliveryAttempt _self;
  final $Res Function(WebhookDeliveryAttempt) _then;

/// Create a copy of WebhookDeliveryAttempt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? requestId = freezed,Object? responseStatus = freezed,Object? responseContentType = freezed,Object? responseBody = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,responseStatus: freezed == responseStatus ? _self.responseStatus : responseStatus ,responseContentType: freezed == responseContentType ? _self.responseContentType : responseContentType // ignore: cast_nullable_to_non_nullable
as String?,responseBody: freezed == responseBody ? _self.responseBody : responseBody // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WebhookDeliveryAttempt].
extension WebhookDeliveryAttemptPatterns on WebhookDeliveryAttempt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebhookDeliveryAttempt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebhookDeliveryAttempt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebhookDeliveryAttempt value)  $default,){
final _that = this;
switch (_that) {
case _WebhookDeliveryAttempt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebhookDeliveryAttempt value)?  $default,){
final _that = this;
switch (_that) {
case _WebhookDeliveryAttempt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'request_id')  String? requestId, @JsonKey(name: 'response_status')  Object? responseStatus, @JsonKey(name: 'response_content_type')  String? responseContentType, @JsonKey(name: 'response_body')  String? responseBody, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'finished_at')  DateTime? finishedAt, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebhookDeliveryAttempt() when $default != null:
return $default(_that.id,_that.requestId,_that.responseStatus,_that.responseContentType,_that.responseBody,_that.startedAt,_that.finishedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'request_id')  String? requestId, @JsonKey(name: 'response_status')  Object? responseStatus, @JsonKey(name: 'response_content_type')  String? responseContentType, @JsonKey(name: 'response_body')  String? responseBody, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'finished_at')  DateTime? finishedAt, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _WebhookDeliveryAttempt():
return $default(_that.id,_that.requestId,_that.responseStatus,_that.responseContentType,_that.responseBody,_that.startedAt,_that.finishedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'request_id')  String? requestId, @JsonKey(name: 'response_status')  Object? responseStatus, @JsonKey(name: 'response_content_type')  String? responseContentType, @JsonKey(name: 'response_body')  String? responseBody, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'finished_at')  DateTime? finishedAt, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WebhookDeliveryAttempt() when $default != null:
return $default(_that.id,_that.requestId,_that.responseStatus,_that.responseContentType,_that.responseBody,_that.startedAt,_that.finishedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebhookDeliveryAttempt implements WebhookDeliveryAttempt {
  const _WebhookDeliveryAttempt({this.id, @JsonKey(name: 'request_id') this.requestId, @JsonKey(name: 'response_status') this.responseStatus, @JsonKey(name: 'response_content_type') this.responseContentType, @JsonKey(name: 'response_body') this.responseBody, @JsonKey(name: 'started_at') this.startedAt, @JsonKey(name: 'finished_at') this.finishedAt, @JsonKey(name: 'created_at') this.createdAt});
  factory _WebhookDeliveryAttempt.fromJson(Map<String, dynamic> json) => _$WebhookDeliveryAttemptFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'request_id') final  String? requestId;
@override@JsonKey(name: 'response_status') final  Object? responseStatus;
@override@JsonKey(name: 'response_content_type') final  String? responseContentType;
@override@JsonKey(name: 'response_body') final  String? responseBody;
@override@JsonKey(name: 'started_at') final  DateTime? startedAt;
@override@JsonKey(name: 'finished_at') final  DateTime? finishedAt;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of WebhookDeliveryAttempt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebhookDeliveryAttemptCopyWith<_WebhookDeliveryAttempt> get copyWith => __$WebhookDeliveryAttemptCopyWithImpl<_WebhookDeliveryAttempt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebhookDeliveryAttemptToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebhookDeliveryAttempt&&(identical(other.id, id) || other.id == id)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&const DeepCollectionEquality().equals(other.responseStatus, responseStatus)&&(identical(other.responseContentType, responseContentType) || other.responseContentType == responseContentType)&&(identical(other.responseBody, responseBody) || other.responseBody == responseBody)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.finishedAt, finishedAt) || other.finishedAt == finishedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,requestId,const DeepCollectionEquality().hash(responseStatus),responseContentType,responseBody,startedAt,finishedAt,createdAt);

@override
String toString() {
  return 'WebhookDeliveryAttempt(id: $id, requestId: $requestId, responseStatus: $responseStatus, responseContentType: $responseContentType, responseBody: $responseBody, startedAt: $startedAt, finishedAt: $finishedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WebhookDeliveryAttemptCopyWith<$Res> implements $WebhookDeliveryAttemptCopyWith<$Res> {
  factory _$WebhookDeliveryAttemptCopyWith(_WebhookDeliveryAttempt value, $Res Function(_WebhookDeliveryAttempt) _then) = __$WebhookDeliveryAttemptCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'request_id') String? requestId,@JsonKey(name: 'response_status') Object? responseStatus,@JsonKey(name: 'response_content_type') String? responseContentType,@JsonKey(name: 'response_body') String? responseBody,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'finished_at') DateTime? finishedAt,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$WebhookDeliveryAttemptCopyWithImpl<$Res>
    implements _$WebhookDeliveryAttemptCopyWith<$Res> {
  __$WebhookDeliveryAttemptCopyWithImpl(this._self, this._then);

  final _WebhookDeliveryAttempt _self;
  final $Res Function(_WebhookDeliveryAttempt) _then;

/// Create a copy of WebhookDeliveryAttempt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? requestId = freezed,Object? responseStatus = freezed,Object? responseContentType = freezed,Object? responseBody = freezed,Object? startedAt = freezed,Object? finishedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_WebhookDeliveryAttempt(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,responseStatus: freezed == responseStatus ? _self.responseStatus : responseStatus ,responseContentType: freezed == responseContentType ? _self.responseContentType : responseContentType // ignore: cast_nullable_to_non_nullable
as String?,responseBody: freezed == responseBody ? _self.responseBody : responseBody // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,finishedAt: freezed == finishedAt ? _self.finishedAt : finishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
