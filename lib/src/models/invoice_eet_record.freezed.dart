// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_eet_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoiceEetRecord {

 int? get id;@JsonKey(name: 'vat_no') String? get vatNo; String? get number; String? get store;@JsonKey(name: 'cash_register') String? get cashRegister;@JsonKey(name: 'paid_at') DateTime? get paidAt;@JsonKey(name: 'vat_base0') String? get vatBase0;@JsonKey(name: 'vat_base1') String? get vatBase1; String? get vat1;@JsonKey(name: 'vat_base2') String? get vatBase2; String? get vat2;@JsonKey(name: 'vat_base3') String? get vatBase3; String? get vat3; String? get total; String? get fik; String? get bkp; String? get pkp; String? get status;@JsonKey(name: 'fik_received_at') DateTime? get fikReceivedAt; bool? get external; int? get attempts;@JsonKey(name: 'last_attempt_at') DateTime? get lastAttemptAt;@JsonKey(name: 'last_uuid') String? get lastUuid; bool? get playground;@JsonKey(name: 'invoice_id') int? get invoiceId;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of InvoiceEetRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceEetRecordCopyWith<InvoiceEetRecord> get copyWith => _$InvoiceEetRecordCopyWithImpl<InvoiceEetRecord>(this as InvoiceEetRecord, _$identity);

  /// Serializes this InvoiceEetRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceEetRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.vatNo, vatNo) || other.vatNo == vatNo)&&(identical(other.number, number) || other.number == number)&&(identical(other.store, store) || other.store == store)&&(identical(other.cashRegister, cashRegister) || other.cashRegister == cashRegister)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.vatBase0, vatBase0) || other.vatBase0 == vatBase0)&&(identical(other.vatBase1, vatBase1) || other.vatBase1 == vatBase1)&&(identical(other.vat1, vat1) || other.vat1 == vat1)&&(identical(other.vatBase2, vatBase2) || other.vatBase2 == vatBase2)&&(identical(other.vat2, vat2) || other.vat2 == vat2)&&(identical(other.vatBase3, vatBase3) || other.vatBase3 == vatBase3)&&(identical(other.vat3, vat3) || other.vat3 == vat3)&&(identical(other.total, total) || other.total == total)&&(identical(other.fik, fik) || other.fik == fik)&&(identical(other.bkp, bkp) || other.bkp == bkp)&&(identical(other.pkp, pkp) || other.pkp == pkp)&&(identical(other.status, status) || other.status == status)&&(identical(other.fikReceivedAt, fikReceivedAt) || other.fikReceivedAt == fikReceivedAt)&&(identical(other.external, external) || other.external == external)&&(identical(other.attempts, attempts) || other.attempts == attempts)&&(identical(other.lastAttemptAt, lastAttemptAt) || other.lastAttemptAt == lastAttemptAt)&&(identical(other.lastUuid, lastUuid) || other.lastUuid == lastUuid)&&(identical(other.playground, playground) || other.playground == playground)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,vatNo,number,store,cashRegister,paidAt,vatBase0,vatBase1,vat1,vatBase2,vat2,vatBase3,vat3,total,fik,bkp,pkp,status,fikReceivedAt,external,attempts,lastAttemptAt,lastUuid,playground,invoiceId,createdAt,updatedAt]);

@override
String toString() {
  return 'InvoiceEetRecord(id: $id, vatNo: $vatNo, number: $number, store: $store, cashRegister: $cashRegister, paidAt: $paidAt, vatBase0: $vatBase0, vatBase1: $vatBase1, vat1: $vat1, vatBase2: $vatBase2, vat2: $vat2, vatBase3: $vatBase3, vat3: $vat3, total: $total, fik: $fik, bkp: $bkp, pkp: $pkp, status: $status, fikReceivedAt: $fikReceivedAt, external: $external, attempts: $attempts, lastAttemptAt: $lastAttemptAt, lastUuid: $lastUuid, playground: $playground, invoiceId: $invoiceId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InvoiceEetRecordCopyWith<$Res>  {
  factory $InvoiceEetRecordCopyWith(InvoiceEetRecord value, $Res Function(InvoiceEetRecord) _then) = _$InvoiceEetRecordCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'vat_no') String? vatNo, String? number, String? store,@JsonKey(name: 'cash_register') String? cashRegister,@JsonKey(name: 'paid_at') DateTime? paidAt,@JsonKey(name: 'vat_base0') String? vatBase0,@JsonKey(name: 'vat_base1') String? vatBase1, String? vat1,@JsonKey(name: 'vat_base2') String? vatBase2, String? vat2,@JsonKey(name: 'vat_base3') String? vatBase3, String? vat3, String? total, String? fik, String? bkp, String? pkp, String? status,@JsonKey(name: 'fik_received_at') DateTime? fikReceivedAt, bool? external, int? attempts,@JsonKey(name: 'last_attempt_at') DateTime? lastAttemptAt,@JsonKey(name: 'last_uuid') String? lastUuid, bool? playground,@JsonKey(name: 'invoice_id') int? invoiceId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$InvoiceEetRecordCopyWithImpl<$Res>
    implements $InvoiceEetRecordCopyWith<$Res> {
  _$InvoiceEetRecordCopyWithImpl(this._self, this._then);

  final InvoiceEetRecord _self;
  final $Res Function(InvoiceEetRecord) _then;

/// Create a copy of InvoiceEetRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? vatNo = freezed,Object? number = freezed,Object? store = freezed,Object? cashRegister = freezed,Object? paidAt = freezed,Object? vatBase0 = freezed,Object? vatBase1 = freezed,Object? vat1 = freezed,Object? vatBase2 = freezed,Object? vat2 = freezed,Object? vatBase3 = freezed,Object? vat3 = freezed,Object? total = freezed,Object? fik = freezed,Object? bkp = freezed,Object? pkp = freezed,Object? status = freezed,Object? fikReceivedAt = freezed,Object? external = freezed,Object? attempts = freezed,Object? lastAttemptAt = freezed,Object? lastUuid = freezed,Object? playground = freezed,Object? invoiceId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,vatNo: freezed == vatNo ? _self.vatNo : vatNo // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as String?,cashRegister: freezed == cashRegister ? _self.cashRegister : cashRegister // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,vatBase0: freezed == vatBase0 ? _self.vatBase0 : vatBase0 // ignore: cast_nullable_to_non_nullable
as String?,vatBase1: freezed == vatBase1 ? _self.vatBase1 : vatBase1 // ignore: cast_nullable_to_non_nullable
as String?,vat1: freezed == vat1 ? _self.vat1 : vat1 // ignore: cast_nullable_to_non_nullable
as String?,vatBase2: freezed == vatBase2 ? _self.vatBase2 : vatBase2 // ignore: cast_nullable_to_non_nullable
as String?,vat2: freezed == vat2 ? _self.vat2 : vat2 // ignore: cast_nullable_to_non_nullable
as String?,vatBase3: freezed == vatBase3 ? _self.vatBase3 : vatBase3 // ignore: cast_nullable_to_non_nullable
as String?,vat3: freezed == vat3 ? _self.vat3 : vat3 // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,fik: freezed == fik ? _self.fik : fik // ignore: cast_nullable_to_non_nullable
as String?,bkp: freezed == bkp ? _self.bkp : bkp // ignore: cast_nullable_to_non_nullable
as String?,pkp: freezed == pkp ? _self.pkp : pkp // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,fikReceivedAt: freezed == fikReceivedAt ? _self.fikReceivedAt : fikReceivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,external: freezed == external ? _self.external : external // ignore: cast_nullable_to_non_nullable
as bool?,attempts: freezed == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int?,lastAttemptAt: freezed == lastAttemptAt ? _self.lastAttemptAt : lastAttemptAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastUuid: freezed == lastUuid ? _self.lastUuid : lastUuid // ignore: cast_nullable_to_non_nullable
as String?,playground: freezed == playground ? _self.playground : playground // ignore: cast_nullable_to_non_nullable
as bool?,invoiceId: freezed == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceEetRecord].
extension InvoiceEetRecordPatterns on InvoiceEetRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceEetRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceEetRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceEetRecord value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceEetRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceEetRecord value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceEetRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'vat_no')  String? vatNo,  String? number,  String? store, @JsonKey(name: 'cash_register')  String? cashRegister, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'vat_base0')  String? vatBase0, @JsonKey(name: 'vat_base1')  String? vatBase1,  String? vat1, @JsonKey(name: 'vat_base2')  String? vatBase2,  String? vat2, @JsonKey(name: 'vat_base3')  String? vatBase3,  String? vat3,  String? total,  String? fik,  String? bkp,  String? pkp,  String? status, @JsonKey(name: 'fik_received_at')  DateTime? fikReceivedAt,  bool? external,  int? attempts, @JsonKey(name: 'last_attempt_at')  DateTime? lastAttemptAt, @JsonKey(name: 'last_uuid')  String? lastUuid,  bool? playground, @JsonKey(name: 'invoice_id')  int? invoiceId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceEetRecord() when $default != null:
return $default(_that.id,_that.vatNo,_that.number,_that.store,_that.cashRegister,_that.paidAt,_that.vatBase0,_that.vatBase1,_that.vat1,_that.vatBase2,_that.vat2,_that.vatBase3,_that.vat3,_that.total,_that.fik,_that.bkp,_that.pkp,_that.status,_that.fikReceivedAt,_that.external,_that.attempts,_that.lastAttemptAt,_that.lastUuid,_that.playground,_that.invoiceId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'vat_no')  String? vatNo,  String? number,  String? store, @JsonKey(name: 'cash_register')  String? cashRegister, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'vat_base0')  String? vatBase0, @JsonKey(name: 'vat_base1')  String? vatBase1,  String? vat1, @JsonKey(name: 'vat_base2')  String? vatBase2,  String? vat2, @JsonKey(name: 'vat_base3')  String? vatBase3,  String? vat3,  String? total,  String? fik,  String? bkp,  String? pkp,  String? status, @JsonKey(name: 'fik_received_at')  DateTime? fikReceivedAt,  bool? external,  int? attempts, @JsonKey(name: 'last_attempt_at')  DateTime? lastAttemptAt, @JsonKey(name: 'last_uuid')  String? lastUuid,  bool? playground, @JsonKey(name: 'invoice_id')  int? invoiceId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _InvoiceEetRecord():
return $default(_that.id,_that.vatNo,_that.number,_that.store,_that.cashRegister,_that.paidAt,_that.vatBase0,_that.vatBase1,_that.vat1,_that.vatBase2,_that.vat2,_that.vatBase3,_that.vat3,_that.total,_that.fik,_that.bkp,_that.pkp,_that.status,_that.fikReceivedAt,_that.external,_that.attempts,_that.lastAttemptAt,_that.lastUuid,_that.playground,_that.invoiceId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'vat_no')  String? vatNo,  String? number,  String? store, @JsonKey(name: 'cash_register')  String? cashRegister, @JsonKey(name: 'paid_at')  DateTime? paidAt, @JsonKey(name: 'vat_base0')  String? vatBase0, @JsonKey(name: 'vat_base1')  String? vatBase1,  String? vat1, @JsonKey(name: 'vat_base2')  String? vatBase2,  String? vat2, @JsonKey(name: 'vat_base3')  String? vatBase3,  String? vat3,  String? total,  String? fik,  String? bkp,  String? pkp,  String? status, @JsonKey(name: 'fik_received_at')  DateTime? fikReceivedAt,  bool? external,  int? attempts, @JsonKey(name: 'last_attempt_at')  DateTime? lastAttemptAt, @JsonKey(name: 'last_uuid')  String? lastUuid,  bool? playground, @JsonKey(name: 'invoice_id')  int? invoiceId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceEetRecord() when $default != null:
return $default(_that.id,_that.vatNo,_that.number,_that.store,_that.cashRegister,_that.paidAt,_that.vatBase0,_that.vatBase1,_that.vat1,_that.vatBase2,_that.vat2,_that.vatBase3,_that.vat3,_that.total,_that.fik,_that.bkp,_that.pkp,_that.status,_that.fikReceivedAt,_that.external,_that.attempts,_that.lastAttemptAt,_that.lastUuid,_that.playground,_that.invoiceId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoiceEetRecord implements InvoiceEetRecord {
  const _InvoiceEetRecord({this.id, @JsonKey(name: 'vat_no') this.vatNo, this.number, this.store, @JsonKey(name: 'cash_register') this.cashRegister, @JsonKey(name: 'paid_at') this.paidAt, @JsonKey(name: 'vat_base0') this.vatBase0, @JsonKey(name: 'vat_base1') this.vatBase1, this.vat1, @JsonKey(name: 'vat_base2') this.vatBase2, this.vat2, @JsonKey(name: 'vat_base3') this.vatBase3, this.vat3, this.total, this.fik, this.bkp, this.pkp, this.status, @JsonKey(name: 'fik_received_at') this.fikReceivedAt, this.external, this.attempts, @JsonKey(name: 'last_attempt_at') this.lastAttemptAt, @JsonKey(name: 'last_uuid') this.lastUuid, this.playground, @JsonKey(name: 'invoice_id') this.invoiceId, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _InvoiceEetRecord.fromJson(Map<String, dynamic> json) => _$InvoiceEetRecordFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'vat_no') final  String? vatNo;
@override final  String? number;
@override final  String? store;
@override@JsonKey(name: 'cash_register') final  String? cashRegister;
@override@JsonKey(name: 'paid_at') final  DateTime? paidAt;
@override@JsonKey(name: 'vat_base0') final  String? vatBase0;
@override@JsonKey(name: 'vat_base1') final  String? vatBase1;
@override final  String? vat1;
@override@JsonKey(name: 'vat_base2') final  String? vatBase2;
@override final  String? vat2;
@override@JsonKey(name: 'vat_base3') final  String? vatBase3;
@override final  String? vat3;
@override final  String? total;
@override final  String? fik;
@override final  String? bkp;
@override final  String? pkp;
@override final  String? status;
@override@JsonKey(name: 'fik_received_at') final  DateTime? fikReceivedAt;
@override final  bool? external;
@override final  int? attempts;
@override@JsonKey(name: 'last_attempt_at') final  DateTime? lastAttemptAt;
@override@JsonKey(name: 'last_uuid') final  String? lastUuid;
@override final  bool? playground;
@override@JsonKey(name: 'invoice_id') final  int? invoiceId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of InvoiceEetRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceEetRecordCopyWith<_InvoiceEetRecord> get copyWith => __$InvoiceEetRecordCopyWithImpl<_InvoiceEetRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceEetRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceEetRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.vatNo, vatNo) || other.vatNo == vatNo)&&(identical(other.number, number) || other.number == number)&&(identical(other.store, store) || other.store == store)&&(identical(other.cashRegister, cashRegister) || other.cashRegister == cashRegister)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.vatBase0, vatBase0) || other.vatBase0 == vatBase0)&&(identical(other.vatBase1, vatBase1) || other.vatBase1 == vatBase1)&&(identical(other.vat1, vat1) || other.vat1 == vat1)&&(identical(other.vatBase2, vatBase2) || other.vatBase2 == vatBase2)&&(identical(other.vat2, vat2) || other.vat2 == vat2)&&(identical(other.vatBase3, vatBase3) || other.vatBase3 == vatBase3)&&(identical(other.vat3, vat3) || other.vat3 == vat3)&&(identical(other.total, total) || other.total == total)&&(identical(other.fik, fik) || other.fik == fik)&&(identical(other.bkp, bkp) || other.bkp == bkp)&&(identical(other.pkp, pkp) || other.pkp == pkp)&&(identical(other.status, status) || other.status == status)&&(identical(other.fikReceivedAt, fikReceivedAt) || other.fikReceivedAt == fikReceivedAt)&&(identical(other.external, external) || other.external == external)&&(identical(other.attempts, attempts) || other.attempts == attempts)&&(identical(other.lastAttemptAt, lastAttemptAt) || other.lastAttemptAt == lastAttemptAt)&&(identical(other.lastUuid, lastUuid) || other.lastUuid == lastUuid)&&(identical(other.playground, playground) || other.playground == playground)&&(identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,vatNo,number,store,cashRegister,paidAt,vatBase0,vatBase1,vat1,vatBase2,vat2,vatBase3,vat3,total,fik,bkp,pkp,status,fikReceivedAt,external,attempts,lastAttemptAt,lastUuid,playground,invoiceId,createdAt,updatedAt]);

@override
String toString() {
  return 'InvoiceEetRecord(id: $id, vatNo: $vatNo, number: $number, store: $store, cashRegister: $cashRegister, paidAt: $paidAt, vatBase0: $vatBase0, vatBase1: $vatBase1, vat1: $vat1, vatBase2: $vatBase2, vat2: $vat2, vatBase3: $vatBase3, vat3: $vat3, total: $total, fik: $fik, bkp: $bkp, pkp: $pkp, status: $status, fikReceivedAt: $fikReceivedAt, external: $external, attempts: $attempts, lastAttemptAt: $lastAttemptAt, lastUuid: $lastUuid, playground: $playground, invoiceId: $invoiceId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InvoiceEetRecordCopyWith<$Res> implements $InvoiceEetRecordCopyWith<$Res> {
  factory _$InvoiceEetRecordCopyWith(_InvoiceEetRecord value, $Res Function(_InvoiceEetRecord) _then) = __$InvoiceEetRecordCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'vat_no') String? vatNo, String? number, String? store,@JsonKey(name: 'cash_register') String? cashRegister,@JsonKey(name: 'paid_at') DateTime? paidAt,@JsonKey(name: 'vat_base0') String? vatBase0,@JsonKey(name: 'vat_base1') String? vatBase1, String? vat1,@JsonKey(name: 'vat_base2') String? vatBase2, String? vat2,@JsonKey(name: 'vat_base3') String? vatBase3, String? vat3, String? total, String? fik, String? bkp, String? pkp, String? status,@JsonKey(name: 'fik_received_at') DateTime? fikReceivedAt, bool? external, int? attempts,@JsonKey(name: 'last_attempt_at') DateTime? lastAttemptAt,@JsonKey(name: 'last_uuid') String? lastUuid, bool? playground,@JsonKey(name: 'invoice_id') int? invoiceId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$InvoiceEetRecordCopyWithImpl<$Res>
    implements _$InvoiceEetRecordCopyWith<$Res> {
  __$InvoiceEetRecordCopyWithImpl(this._self, this._then);

  final _InvoiceEetRecord _self;
  final $Res Function(_InvoiceEetRecord) _then;

/// Create a copy of InvoiceEetRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? vatNo = freezed,Object? number = freezed,Object? store = freezed,Object? cashRegister = freezed,Object? paidAt = freezed,Object? vatBase0 = freezed,Object? vatBase1 = freezed,Object? vat1 = freezed,Object? vatBase2 = freezed,Object? vat2 = freezed,Object? vatBase3 = freezed,Object? vat3 = freezed,Object? total = freezed,Object? fik = freezed,Object? bkp = freezed,Object? pkp = freezed,Object? status = freezed,Object? fikReceivedAt = freezed,Object? external = freezed,Object? attempts = freezed,Object? lastAttemptAt = freezed,Object? lastUuid = freezed,Object? playground = freezed,Object? invoiceId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_InvoiceEetRecord(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,vatNo: freezed == vatNo ? _self.vatNo : vatNo // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as String?,cashRegister: freezed == cashRegister ? _self.cashRegister : cashRegister // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,vatBase0: freezed == vatBase0 ? _self.vatBase0 : vatBase0 // ignore: cast_nullable_to_non_nullable
as String?,vatBase1: freezed == vatBase1 ? _self.vatBase1 : vatBase1 // ignore: cast_nullable_to_non_nullable
as String?,vat1: freezed == vat1 ? _self.vat1 : vat1 // ignore: cast_nullable_to_non_nullable
as String?,vatBase2: freezed == vatBase2 ? _self.vatBase2 : vatBase2 // ignore: cast_nullable_to_non_nullable
as String?,vat2: freezed == vat2 ? _self.vat2 : vat2 // ignore: cast_nullable_to_non_nullable
as String?,vatBase3: freezed == vatBase3 ? _self.vatBase3 : vatBase3 // ignore: cast_nullable_to_non_nullable
as String?,vat3: freezed == vat3 ? _self.vat3 : vat3 // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,fik: freezed == fik ? _self.fik : fik // ignore: cast_nullable_to_non_nullable
as String?,bkp: freezed == bkp ? _self.bkp : bkp // ignore: cast_nullable_to_non_nullable
as String?,pkp: freezed == pkp ? _self.pkp : pkp // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,fikReceivedAt: freezed == fikReceivedAt ? _self.fikReceivedAt : fikReceivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,external: freezed == external ? _self.external : external // ignore: cast_nullable_to_non_nullable
as bool?,attempts: freezed == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int?,lastAttemptAt: freezed == lastAttemptAt ? _self.lastAttemptAt : lastAttemptAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastUuid: freezed == lastUuid ? _self.lastUuid : lastUuid // ignore: cast_nullable_to_non_nullable
as String?,playground: freezed == playground ? _self.playground : playground // ignore: cast_nullable_to_non_nullable
as bool?,invoiceId: freezed == invoiceId ? _self.invoiceId : invoiceId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
