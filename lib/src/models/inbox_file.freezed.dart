// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inbox_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InboxFile {

 int? get id; String? get filename; int? get bytesize;@JsonKey(name: 'send_to_ocr') bool? get sendToOcr;@JsonKey(name: 'sent_to_ocr_at') DateTime? get sentToOcrAt;@JsonKey(name: 'ocr_status') OcrStatus? get ocrStatus;@JsonKey(name: 'ocr_completed_at') DateTime? get ocrCompletedAt;@JsonKey(name: 'download_url') String? get downloadUrl;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of InboxFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboxFileCopyWith<InboxFile> get copyWith => _$InboxFileCopyWithImpl<InboxFile>(this as InboxFile, _$identity);

  /// Serializes this InboxFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboxFile&&(identical(other.id, id) || other.id == id)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.bytesize, bytesize) || other.bytesize == bytesize)&&(identical(other.sendToOcr, sendToOcr) || other.sendToOcr == sendToOcr)&&(identical(other.sentToOcrAt, sentToOcrAt) || other.sentToOcrAt == sentToOcrAt)&&(identical(other.ocrStatus, ocrStatus) || other.ocrStatus == ocrStatus)&&(identical(other.ocrCompletedAt, ocrCompletedAt) || other.ocrCompletedAt == ocrCompletedAt)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,filename,bytesize,sendToOcr,sentToOcrAt,ocrStatus,ocrCompletedAt,downloadUrl,createdAt,updatedAt);

@override
String toString() {
  return 'InboxFile(id: $id, filename: $filename, bytesize: $bytesize, sendToOcr: $sendToOcr, sentToOcrAt: $sentToOcrAt, ocrStatus: $ocrStatus, ocrCompletedAt: $ocrCompletedAt, downloadUrl: $downloadUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InboxFileCopyWith<$Res>  {
  factory $InboxFileCopyWith(InboxFile value, $Res Function(InboxFile) _then) = _$InboxFileCopyWithImpl;
@useResult
$Res call({
 int? id, String? filename, int? bytesize,@JsonKey(name: 'send_to_ocr') bool? sendToOcr,@JsonKey(name: 'sent_to_ocr_at') DateTime? sentToOcrAt,@JsonKey(name: 'ocr_status') OcrStatus? ocrStatus,@JsonKey(name: 'ocr_completed_at') DateTime? ocrCompletedAt,@JsonKey(name: 'download_url') String? downloadUrl,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$InboxFileCopyWithImpl<$Res>
    implements $InboxFileCopyWith<$Res> {
  _$InboxFileCopyWithImpl(this._self, this._then);

  final InboxFile _self;
  final $Res Function(InboxFile) _then;

/// Create a copy of InboxFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? filename = freezed,Object? bytesize = freezed,Object? sendToOcr = freezed,Object? sentToOcrAt = freezed,Object? ocrStatus = freezed,Object? ocrCompletedAt = freezed,Object? downloadUrl = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,bytesize: freezed == bytesize ? _self.bytesize : bytesize // ignore: cast_nullable_to_non_nullable
as int?,sendToOcr: freezed == sendToOcr ? _self.sendToOcr : sendToOcr // ignore: cast_nullable_to_non_nullable
as bool?,sentToOcrAt: freezed == sentToOcrAt ? _self.sentToOcrAt : sentToOcrAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ocrStatus: freezed == ocrStatus ? _self.ocrStatus : ocrStatus // ignore: cast_nullable_to_non_nullable
as OcrStatus?,ocrCompletedAt: freezed == ocrCompletedAt ? _self.ocrCompletedAt : ocrCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InboxFile].
extension InboxFilePatterns on InboxFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboxFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboxFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboxFile value)  $default,){
final _that = this;
switch (_that) {
case _InboxFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboxFile value)?  $default,){
final _that = this;
switch (_that) {
case _InboxFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? filename,  int? bytesize, @JsonKey(name: 'send_to_ocr')  bool? sendToOcr, @JsonKey(name: 'sent_to_ocr_at')  DateTime? sentToOcrAt, @JsonKey(name: 'ocr_status')  OcrStatus? ocrStatus, @JsonKey(name: 'ocr_completed_at')  DateTime? ocrCompletedAt, @JsonKey(name: 'download_url')  String? downloadUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboxFile() when $default != null:
return $default(_that.id,_that.filename,_that.bytesize,_that.sendToOcr,_that.sentToOcrAt,_that.ocrStatus,_that.ocrCompletedAt,_that.downloadUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? filename,  int? bytesize, @JsonKey(name: 'send_to_ocr')  bool? sendToOcr, @JsonKey(name: 'sent_to_ocr_at')  DateTime? sentToOcrAt, @JsonKey(name: 'ocr_status')  OcrStatus? ocrStatus, @JsonKey(name: 'ocr_completed_at')  DateTime? ocrCompletedAt, @JsonKey(name: 'download_url')  String? downloadUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _InboxFile():
return $default(_that.id,_that.filename,_that.bytesize,_that.sendToOcr,_that.sentToOcrAt,_that.ocrStatus,_that.ocrCompletedAt,_that.downloadUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? filename,  int? bytesize, @JsonKey(name: 'send_to_ocr')  bool? sendToOcr, @JsonKey(name: 'sent_to_ocr_at')  DateTime? sentToOcrAt, @JsonKey(name: 'ocr_status')  OcrStatus? ocrStatus, @JsonKey(name: 'ocr_completed_at')  DateTime? ocrCompletedAt, @JsonKey(name: 'download_url')  String? downloadUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _InboxFile() when $default != null:
return $default(_that.id,_that.filename,_that.bytesize,_that.sendToOcr,_that.sentToOcrAt,_that.ocrStatus,_that.ocrCompletedAt,_that.downloadUrl,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InboxFile implements InboxFile {
  const _InboxFile({this.id, this.filename, this.bytesize, @JsonKey(name: 'send_to_ocr') this.sendToOcr, @JsonKey(name: 'sent_to_ocr_at') this.sentToOcrAt, @JsonKey(name: 'ocr_status') this.ocrStatus, @JsonKey(name: 'ocr_completed_at') this.ocrCompletedAt, @JsonKey(name: 'download_url') this.downloadUrl, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _InboxFile.fromJson(Map<String, dynamic> json) => _$InboxFileFromJson(json);

@override final  int? id;
@override final  String? filename;
@override final  int? bytesize;
@override@JsonKey(name: 'send_to_ocr') final  bool? sendToOcr;
@override@JsonKey(name: 'sent_to_ocr_at') final  DateTime? sentToOcrAt;
@override@JsonKey(name: 'ocr_status') final  OcrStatus? ocrStatus;
@override@JsonKey(name: 'ocr_completed_at') final  DateTime? ocrCompletedAt;
@override@JsonKey(name: 'download_url') final  String? downloadUrl;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of InboxFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboxFileCopyWith<_InboxFile> get copyWith => __$InboxFileCopyWithImpl<_InboxFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InboxFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InboxFile&&(identical(other.id, id) || other.id == id)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.bytesize, bytesize) || other.bytesize == bytesize)&&(identical(other.sendToOcr, sendToOcr) || other.sendToOcr == sendToOcr)&&(identical(other.sentToOcrAt, sentToOcrAt) || other.sentToOcrAt == sentToOcrAt)&&(identical(other.ocrStatus, ocrStatus) || other.ocrStatus == ocrStatus)&&(identical(other.ocrCompletedAt, ocrCompletedAt) || other.ocrCompletedAt == ocrCompletedAt)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,filename,bytesize,sendToOcr,sentToOcrAt,ocrStatus,ocrCompletedAt,downloadUrl,createdAt,updatedAt);

@override
String toString() {
  return 'InboxFile(id: $id, filename: $filename, bytesize: $bytesize, sendToOcr: $sendToOcr, sentToOcrAt: $sentToOcrAt, ocrStatus: $ocrStatus, ocrCompletedAt: $ocrCompletedAt, downloadUrl: $downloadUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InboxFileCopyWith<$Res> implements $InboxFileCopyWith<$Res> {
  factory _$InboxFileCopyWith(_InboxFile value, $Res Function(_InboxFile) _then) = __$InboxFileCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? filename, int? bytesize,@JsonKey(name: 'send_to_ocr') bool? sendToOcr,@JsonKey(name: 'sent_to_ocr_at') DateTime? sentToOcrAt,@JsonKey(name: 'ocr_status') OcrStatus? ocrStatus,@JsonKey(name: 'ocr_completed_at') DateTime? ocrCompletedAt,@JsonKey(name: 'download_url') String? downloadUrl,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$InboxFileCopyWithImpl<$Res>
    implements _$InboxFileCopyWith<$Res> {
  __$InboxFileCopyWithImpl(this._self, this._then);

  final _InboxFile _self;
  final $Res Function(_InboxFile) _then;

/// Create a copy of InboxFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? filename = freezed,Object? bytesize = freezed,Object? sendToOcr = freezed,Object? sentToOcrAt = freezed,Object? ocrStatus = freezed,Object? ocrCompletedAt = freezed,Object? downloadUrl = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_InboxFile(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,bytesize: freezed == bytesize ? _self.bytesize : bytesize // ignore: cast_nullable_to_non_nullable
as int?,sendToOcr: freezed == sendToOcr ? _self.sendToOcr : sendToOcr // ignore: cast_nullable_to_non_nullable
as bool?,sentToOcrAt: freezed == sentToOcrAt ? _self.sentToOcrAt : sentToOcrAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ocrStatus: freezed == ocrStatus ? _self.ocrStatus : ocrStatus // ignore: cast_nullable_to_non_nullable
as OcrStatus?,ocrCompletedAt: freezed == ocrCompletedAt ? _self.ocrCompletedAt : ocrCompletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
