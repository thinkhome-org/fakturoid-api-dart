// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentAttachment {

@JsonKey(includeToJson: false) int? get id; String? get filename;@JsonKey(name: 'data_url') String? get dataUrl;@JsonKey(name: 'content_type', includeToJson: false) String? get contentType;@JsonKey(name: 'download_url', includeToJson: false) String? get downloadUrl;
/// Create a copy of DocumentAttachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentAttachmentCopyWith<DocumentAttachment> get copyWith => _$DocumentAttachmentCopyWithImpl<DocumentAttachment>(this as DocumentAttachment, _$identity);

  /// Serializes this DocumentAttachment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentAttachment&&(identical(other.id, id) || other.id == id)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.dataUrl, dataUrl) || other.dataUrl == dataUrl)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,filename,dataUrl,contentType,downloadUrl);

@override
String toString() {
  return 'DocumentAttachment(id: $id, filename: $filename, dataUrl: $dataUrl, contentType: $contentType, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class $DocumentAttachmentCopyWith<$Res>  {
  factory $DocumentAttachmentCopyWith(DocumentAttachment value, $Res Function(DocumentAttachment) _then) = _$DocumentAttachmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) int? id, String? filename,@JsonKey(name: 'data_url') String? dataUrl,@JsonKey(name: 'content_type', includeToJson: false) String? contentType,@JsonKey(name: 'download_url', includeToJson: false) String? downloadUrl
});




}
/// @nodoc
class _$DocumentAttachmentCopyWithImpl<$Res>
    implements $DocumentAttachmentCopyWith<$Res> {
  _$DocumentAttachmentCopyWithImpl(this._self, this._then);

  final DocumentAttachment _self;
  final $Res Function(DocumentAttachment) _then;

/// Create a copy of DocumentAttachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? filename = freezed,Object? dataUrl = freezed,Object? contentType = freezed,Object? downloadUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,dataUrl: freezed == dataUrl ? _self.dataUrl : dataUrl // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentAttachment].
extension DocumentAttachmentPatterns on DocumentAttachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentAttachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentAttachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentAttachment value)  $default,){
final _that = this;
switch (_that) {
case _DocumentAttachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentAttachment value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentAttachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  int? id,  String? filename, @JsonKey(name: 'data_url')  String? dataUrl, @JsonKey(name: 'content_type', includeToJson: false)  String? contentType, @JsonKey(name: 'download_url', includeToJson: false)  String? downloadUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentAttachment() when $default != null:
return $default(_that.id,_that.filename,_that.dataUrl,_that.contentType,_that.downloadUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeToJson: false)  int? id,  String? filename, @JsonKey(name: 'data_url')  String? dataUrl, @JsonKey(name: 'content_type', includeToJson: false)  String? contentType, @JsonKey(name: 'download_url', includeToJson: false)  String? downloadUrl)  $default,) {final _that = this;
switch (_that) {
case _DocumentAttachment():
return $default(_that.id,_that.filename,_that.dataUrl,_that.contentType,_that.downloadUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeToJson: false)  int? id,  String? filename, @JsonKey(name: 'data_url')  String? dataUrl, @JsonKey(name: 'content_type', includeToJson: false)  String? contentType, @JsonKey(name: 'download_url', includeToJson: false)  String? downloadUrl)?  $default,) {final _that = this;
switch (_that) {
case _DocumentAttachment() when $default != null:
return $default(_that.id,_that.filename,_that.dataUrl,_that.contentType,_that.downloadUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentAttachment implements DocumentAttachment {
  const _DocumentAttachment({@JsonKey(includeToJson: false) this.id, this.filename, @JsonKey(name: 'data_url') this.dataUrl, @JsonKey(name: 'content_type', includeToJson: false) this.contentType, @JsonKey(name: 'download_url', includeToJson: false) this.downloadUrl});
  factory _DocumentAttachment.fromJson(Map<String, dynamic> json) => _$DocumentAttachmentFromJson(json);

@override@JsonKey(includeToJson: false) final  int? id;
@override final  String? filename;
@override@JsonKey(name: 'data_url') final  String? dataUrl;
@override@JsonKey(name: 'content_type', includeToJson: false) final  String? contentType;
@override@JsonKey(name: 'download_url', includeToJson: false) final  String? downloadUrl;

/// Create a copy of DocumentAttachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentAttachmentCopyWith<_DocumentAttachment> get copyWith => __$DocumentAttachmentCopyWithImpl<_DocumentAttachment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentAttachmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentAttachment&&(identical(other.id, id) || other.id == id)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.dataUrl, dataUrl) || other.dataUrl == dataUrl)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,filename,dataUrl,contentType,downloadUrl);

@override
String toString() {
  return 'DocumentAttachment(id: $id, filename: $filename, dataUrl: $dataUrl, contentType: $contentType, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class _$DocumentAttachmentCopyWith<$Res> implements $DocumentAttachmentCopyWith<$Res> {
  factory _$DocumentAttachmentCopyWith(_DocumentAttachment value, $Res Function(_DocumentAttachment) _then) = __$DocumentAttachmentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) int? id, String? filename,@JsonKey(name: 'data_url') String? dataUrl,@JsonKey(name: 'content_type', includeToJson: false) String? contentType,@JsonKey(name: 'download_url', includeToJson: false) String? downloadUrl
});




}
/// @nodoc
class __$DocumentAttachmentCopyWithImpl<$Res>
    implements _$DocumentAttachmentCopyWith<$Res> {
  __$DocumentAttachmentCopyWithImpl(this._self, this._then);

  final _DocumentAttachment _self;
  final $Res Function(_DocumentAttachment) _then;

/// Create a copy of DocumentAttachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? filename = freezed,Object? dataUrl = freezed,Object? contentType = freezed,Object? downloadUrl = freezed,}) {
  return _then(_DocumentAttachment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,dataUrl: freezed == dataUrl ? _self.dataUrl : dataUrl // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
