// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoicePayment {

 int? get id;@JsonKey(name: 'paid_on') String? get paidOn;// Datum ve formátu YYYY-MM-DD
 String? get currency; String? get amount;@JsonKey(name: 'native_amount') String? get nativeAmount;@JsonKey(name: 'mark_document_as_paid') bool? get markDocumentAsPaid;@JsonKey(name: 'proforma_followup_document') ProformaFollowupDocument? get proformaFollowupDocument;@JsonKey(name: 'send_thank_you_email') bool? get sendThankYouEmail;@JsonKey(name: 'variable_symbol') String? get variableSymbol;@JsonKey(name: 'bank_account_id') int? get bankAccountId;@JsonKey(name: 'tax_document_id') int? get taxDocumentId;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of InvoicePayment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoicePaymentCopyWith<InvoicePayment> get copyWith => _$InvoicePaymentCopyWithImpl<InvoicePayment>(this as InvoicePayment, _$identity);

  /// Serializes this InvoicePayment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoicePayment&&(identical(other.id, id) || other.id == id)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.nativeAmount, nativeAmount) || other.nativeAmount == nativeAmount)&&(identical(other.markDocumentAsPaid, markDocumentAsPaid) || other.markDocumentAsPaid == markDocumentAsPaid)&&(identical(other.proformaFollowupDocument, proformaFollowupDocument) || other.proformaFollowupDocument == proformaFollowupDocument)&&(identical(other.sendThankYouEmail, sendThankYouEmail) || other.sendThankYouEmail == sendThankYouEmail)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.taxDocumentId, taxDocumentId) || other.taxDocumentId == taxDocumentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,paidOn,currency,amount,nativeAmount,markDocumentAsPaid,proformaFollowupDocument,sendThankYouEmail,variableSymbol,bankAccountId,taxDocumentId,createdAt,updatedAt);

@override
String toString() {
  return 'InvoicePayment(id: $id, paidOn: $paidOn, currency: $currency, amount: $amount, nativeAmount: $nativeAmount, markDocumentAsPaid: $markDocumentAsPaid, proformaFollowupDocument: $proformaFollowupDocument, sendThankYouEmail: $sendThankYouEmail, variableSymbol: $variableSymbol, bankAccountId: $bankAccountId, taxDocumentId: $taxDocumentId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InvoicePaymentCopyWith<$Res>  {
  factory $InvoicePaymentCopyWith(InvoicePayment value, $Res Function(InvoicePayment) _then) = _$InvoicePaymentCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'paid_on') String? paidOn, String? currency, String? amount,@JsonKey(name: 'native_amount') String? nativeAmount,@JsonKey(name: 'mark_document_as_paid') bool? markDocumentAsPaid,@JsonKey(name: 'proforma_followup_document') ProformaFollowupDocument? proformaFollowupDocument,@JsonKey(name: 'send_thank_you_email') bool? sendThankYouEmail,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'tax_document_id') int? taxDocumentId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$InvoicePaymentCopyWithImpl<$Res>
    implements $InvoicePaymentCopyWith<$Res> {
  _$InvoicePaymentCopyWithImpl(this._self, this._then);

  final InvoicePayment _self;
  final $Res Function(InvoicePayment) _then;

/// Create a copy of InvoicePayment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? paidOn = freezed,Object? currency = freezed,Object? amount = freezed,Object? nativeAmount = freezed,Object? markDocumentAsPaid = freezed,Object? proformaFollowupDocument = freezed,Object? sendThankYouEmail = freezed,Object? variableSymbol = freezed,Object? bankAccountId = freezed,Object? taxDocumentId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,nativeAmount: freezed == nativeAmount ? _self.nativeAmount : nativeAmount // ignore: cast_nullable_to_non_nullable
as String?,markDocumentAsPaid: freezed == markDocumentAsPaid ? _self.markDocumentAsPaid : markDocumentAsPaid // ignore: cast_nullable_to_non_nullable
as bool?,proformaFollowupDocument: freezed == proformaFollowupDocument ? _self.proformaFollowupDocument : proformaFollowupDocument // ignore: cast_nullable_to_non_nullable
as ProformaFollowupDocument?,sendThankYouEmail: freezed == sendThankYouEmail ? _self.sendThankYouEmail : sendThankYouEmail // ignore: cast_nullable_to_non_nullable
as bool?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int?,taxDocumentId: freezed == taxDocumentId ? _self.taxDocumentId : taxDocumentId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoicePayment].
extension InvoicePaymentPatterns on InvoicePayment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoicePayment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoicePayment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoicePayment value)  $default,){
final _that = this;
switch (_that) {
case _InvoicePayment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoicePayment value)?  $default,){
final _that = this;
switch (_that) {
case _InvoicePayment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'paid_on')  String? paidOn,  String? currency,  String? amount, @JsonKey(name: 'native_amount')  String? nativeAmount, @JsonKey(name: 'mark_document_as_paid')  bool? markDocumentAsPaid, @JsonKey(name: 'proforma_followup_document')  ProformaFollowupDocument? proformaFollowupDocument, @JsonKey(name: 'send_thank_you_email')  bool? sendThankYouEmail, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'tax_document_id')  int? taxDocumentId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoicePayment() when $default != null:
return $default(_that.id,_that.paidOn,_that.currency,_that.amount,_that.nativeAmount,_that.markDocumentAsPaid,_that.proformaFollowupDocument,_that.sendThankYouEmail,_that.variableSymbol,_that.bankAccountId,_that.taxDocumentId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'paid_on')  String? paidOn,  String? currency,  String? amount, @JsonKey(name: 'native_amount')  String? nativeAmount, @JsonKey(name: 'mark_document_as_paid')  bool? markDocumentAsPaid, @JsonKey(name: 'proforma_followup_document')  ProformaFollowupDocument? proformaFollowupDocument, @JsonKey(name: 'send_thank_you_email')  bool? sendThankYouEmail, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'tax_document_id')  int? taxDocumentId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _InvoicePayment():
return $default(_that.id,_that.paidOn,_that.currency,_that.amount,_that.nativeAmount,_that.markDocumentAsPaid,_that.proformaFollowupDocument,_that.sendThankYouEmail,_that.variableSymbol,_that.bankAccountId,_that.taxDocumentId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'paid_on')  String? paidOn,  String? currency,  String? amount, @JsonKey(name: 'native_amount')  String? nativeAmount, @JsonKey(name: 'mark_document_as_paid')  bool? markDocumentAsPaid, @JsonKey(name: 'proforma_followup_document')  ProformaFollowupDocument? proformaFollowupDocument, @JsonKey(name: 'send_thank_you_email')  bool? sendThankYouEmail, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'tax_document_id')  int? taxDocumentId, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _InvoicePayment() when $default != null:
return $default(_that.id,_that.paidOn,_that.currency,_that.amount,_that.nativeAmount,_that.markDocumentAsPaid,_that.proformaFollowupDocument,_that.sendThankYouEmail,_that.variableSymbol,_that.bankAccountId,_that.taxDocumentId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoicePayment implements InvoicePayment {
  const _InvoicePayment({this.id, @JsonKey(name: 'paid_on') this.paidOn, this.currency, this.amount, @JsonKey(name: 'native_amount') this.nativeAmount, @JsonKey(name: 'mark_document_as_paid') this.markDocumentAsPaid, @JsonKey(name: 'proforma_followup_document') this.proformaFollowupDocument, @JsonKey(name: 'send_thank_you_email') this.sendThankYouEmail, @JsonKey(name: 'variable_symbol') this.variableSymbol, @JsonKey(name: 'bank_account_id') this.bankAccountId, @JsonKey(name: 'tax_document_id') this.taxDocumentId, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _InvoicePayment.fromJson(Map<String, dynamic> json) => _$InvoicePaymentFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'paid_on') final  String? paidOn;
// Datum ve formátu YYYY-MM-DD
@override final  String? currency;
@override final  String? amount;
@override@JsonKey(name: 'native_amount') final  String? nativeAmount;
@override@JsonKey(name: 'mark_document_as_paid') final  bool? markDocumentAsPaid;
@override@JsonKey(name: 'proforma_followup_document') final  ProformaFollowupDocument? proformaFollowupDocument;
@override@JsonKey(name: 'send_thank_you_email') final  bool? sendThankYouEmail;
@override@JsonKey(name: 'variable_symbol') final  String? variableSymbol;
@override@JsonKey(name: 'bank_account_id') final  int? bankAccountId;
@override@JsonKey(name: 'tax_document_id') final  int? taxDocumentId;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of InvoicePayment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoicePaymentCopyWith<_InvoicePayment> get copyWith => __$InvoicePaymentCopyWithImpl<_InvoicePayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoicePaymentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoicePayment&&(identical(other.id, id) || other.id == id)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.nativeAmount, nativeAmount) || other.nativeAmount == nativeAmount)&&(identical(other.markDocumentAsPaid, markDocumentAsPaid) || other.markDocumentAsPaid == markDocumentAsPaid)&&(identical(other.proformaFollowupDocument, proformaFollowupDocument) || other.proformaFollowupDocument == proformaFollowupDocument)&&(identical(other.sendThankYouEmail, sendThankYouEmail) || other.sendThankYouEmail == sendThankYouEmail)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.taxDocumentId, taxDocumentId) || other.taxDocumentId == taxDocumentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,paidOn,currency,amount,nativeAmount,markDocumentAsPaid,proformaFollowupDocument,sendThankYouEmail,variableSymbol,bankAccountId,taxDocumentId,createdAt,updatedAt);

@override
String toString() {
  return 'InvoicePayment(id: $id, paidOn: $paidOn, currency: $currency, amount: $amount, nativeAmount: $nativeAmount, markDocumentAsPaid: $markDocumentAsPaid, proformaFollowupDocument: $proformaFollowupDocument, sendThankYouEmail: $sendThankYouEmail, variableSymbol: $variableSymbol, bankAccountId: $bankAccountId, taxDocumentId: $taxDocumentId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InvoicePaymentCopyWith<$Res> implements $InvoicePaymentCopyWith<$Res> {
  factory _$InvoicePaymentCopyWith(_InvoicePayment value, $Res Function(_InvoicePayment) _then) = __$InvoicePaymentCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'paid_on') String? paidOn, String? currency, String? amount,@JsonKey(name: 'native_amount') String? nativeAmount,@JsonKey(name: 'mark_document_as_paid') bool? markDocumentAsPaid,@JsonKey(name: 'proforma_followup_document') ProformaFollowupDocument? proformaFollowupDocument,@JsonKey(name: 'send_thank_you_email') bool? sendThankYouEmail,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'tax_document_id') int? taxDocumentId,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$InvoicePaymentCopyWithImpl<$Res>
    implements _$InvoicePaymentCopyWith<$Res> {
  __$InvoicePaymentCopyWithImpl(this._self, this._then);

  final _InvoicePayment _self;
  final $Res Function(_InvoicePayment) _then;

/// Create a copy of InvoicePayment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? paidOn = freezed,Object? currency = freezed,Object? amount = freezed,Object? nativeAmount = freezed,Object? markDocumentAsPaid = freezed,Object? proformaFollowupDocument = freezed,Object? sendThankYouEmail = freezed,Object? variableSymbol = freezed,Object? bankAccountId = freezed,Object? taxDocumentId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_InvoicePayment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,nativeAmount: freezed == nativeAmount ? _self.nativeAmount : nativeAmount // ignore: cast_nullable_to_non_nullable
as String?,markDocumentAsPaid: freezed == markDocumentAsPaid ? _self.markDocumentAsPaid : markDocumentAsPaid // ignore: cast_nullable_to_non_nullable
as bool?,proformaFollowupDocument: freezed == proformaFollowupDocument ? _self.proformaFollowupDocument : proformaFollowupDocument // ignore: cast_nullable_to_non_nullable
as ProformaFollowupDocument?,sendThankYouEmail: freezed == sendThankYouEmail ? _self.sendThankYouEmail : sendThankYouEmail // ignore: cast_nullable_to_non_nullable
as bool?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int?,taxDocumentId: freezed == taxDocumentId ? _self.taxDocumentId : taxDocumentId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
