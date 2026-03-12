// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recurring_generator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecurringGenerator {

 int? get id;@JsonKey(name: 'custom_id') String? get customId; String get name; bool? get active; bool? get proforma; bool? get paypal; bool? get gopay;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'end_date') String? get endDate;@JsonKey(name: 'months_period') int? get monthsPeriod;@JsonKey(name: 'next_occurrence_on') String? get nextOccurrenceOn;@JsonKey(name: 'last_day_in_month') bool? get lastDayInMonth;@JsonKey(name: 'tax_date_at_end_of_last_month') bool? get taxDateAtEndOfLastMonth; int? get due;@JsonKey(name: 'send_email') bool? get sendEmail;@JsonKey(name: 'subject_id') int get subjectId;@JsonKey(name: 'number_format_id') int? get numberFormatId; String? get note;@JsonKey(name: 'footer_note') String? get footerNote;@JsonKey(name: 'bank_account_id') int? get bankAccountId;@JsonKey(name: 'iban_visibility') IbanVisibility? get ibanVisibility; List<String>? get tags;@JsonKey(name: 'order_number') String? get orderNumber; String? get currency;@JsonKey(name: 'exchange_rate') String? get exchangeRate;@JsonKey(name: 'payment_method') PaymentMethod? get paymentMethod;@JsonKey(name: 'custom_payment_method') String? get customPaymentMethod; DocumentLanguage? get language;@JsonKey(name: 'transferred_tax_liability') bool? get transferredTaxLiability;@JsonKey(name: 'vat_price_mode') VatPriceMode? get vatPriceMode; OssMode? get oss;@JsonKey(name: 'supply_code') int? get supplyCode;@JsonKey(name: 'round_total') bool? get roundTotal; String? get subtotal; String? get total;@JsonKey(name: 'native_subtotal') String? get nativeSubtotal;@JsonKey(name: 'native_total') String? get nativeTotal;@JsonKey(name: 'rounding_adjustment') String? get roundingAdjustment;@JsonKey(name: 'legacy_bank_details') LegacyBankDetails? get legacyBankDetails;@JsonKey(name: 'html_url') String? get htmlUrl; String? get url;@JsonKey(name: 'subject_url') String? get subjectUrl; List<InvoiceLine>? get lines;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of RecurringGenerator
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecurringGeneratorCopyWith<RecurringGenerator> get copyWith => _$RecurringGeneratorCopyWithImpl<RecurringGenerator>(this as RecurringGenerator, _$identity);

  /// Serializes this RecurringGenerator to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecurringGenerator&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active)&&(identical(other.proforma, proforma) || other.proforma == proforma)&&(identical(other.paypal, paypal) || other.paypal == paypal)&&(identical(other.gopay, gopay) || other.gopay == gopay)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.monthsPeriod, monthsPeriod) || other.monthsPeriod == monthsPeriod)&&(identical(other.nextOccurrenceOn, nextOccurrenceOn) || other.nextOccurrenceOn == nextOccurrenceOn)&&(identical(other.lastDayInMonth, lastDayInMonth) || other.lastDayInMonth == lastDayInMonth)&&(identical(other.taxDateAtEndOfLastMonth, taxDateAtEndOfLastMonth) || other.taxDateAtEndOfLastMonth == taxDateAtEndOfLastMonth)&&(identical(other.due, due) || other.due == due)&&(identical(other.sendEmail, sendEmail) || other.sendEmail == sendEmail)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.numberFormatId, numberFormatId) || other.numberFormatId == numberFormatId)&&(identical(other.note, note) || other.note == note)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.ibanVisibility, ibanVisibility) || other.ibanVisibility == ibanVisibility)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.customPaymentMethod, customPaymentMethod) || other.customPaymentMethod == customPaymentMethod)&&(identical(other.language, language) || other.language == language)&&(identical(other.transferredTaxLiability, transferredTaxLiability) || other.transferredTaxLiability == transferredTaxLiability)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.oss, oss) || other.oss == oss)&&(identical(other.supplyCode, supplyCode) || other.supplyCode == supplyCode)&&(identical(other.roundTotal, roundTotal) || other.roundTotal == roundTotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.nativeSubtotal, nativeSubtotal) || other.nativeSubtotal == nativeSubtotal)&&(identical(other.nativeTotal, nativeTotal) || other.nativeTotal == nativeTotal)&&(identical(other.roundingAdjustment, roundingAdjustment) || other.roundingAdjustment == roundingAdjustment)&&(identical(other.legacyBankDetails, legacyBankDetails) || other.legacyBankDetails == legacyBankDetails)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.subjectUrl, subjectUrl) || other.subjectUrl == subjectUrl)&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,name,active,proforma,paypal,gopay,startDate,endDate,monthsPeriod,nextOccurrenceOn,lastDayInMonth,taxDateAtEndOfLastMonth,due,sendEmail,subjectId,numberFormatId,note,footerNote,bankAccountId,ibanVisibility,const DeepCollectionEquality().hash(tags),orderNumber,currency,exchangeRate,paymentMethod,customPaymentMethod,language,transferredTaxLiability,vatPriceMode,oss,supplyCode,roundTotal,subtotal,total,nativeSubtotal,nativeTotal,roundingAdjustment,legacyBankDetails,htmlUrl,url,subjectUrl,const DeepCollectionEquality().hash(lines),createdAt,updatedAt]);

@override
String toString() {
  return 'RecurringGenerator(id: $id, customId: $customId, name: $name, active: $active, proforma: $proforma, paypal: $paypal, gopay: $gopay, startDate: $startDate, endDate: $endDate, monthsPeriod: $monthsPeriod, nextOccurrenceOn: $nextOccurrenceOn, lastDayInMonth: $lastDayInMonth, taxDateAtEndOfLastMonth: $taxDateAtEndOfLastMonth, due: $due, sendEmail: $sendEmail, subjectId: $subjectId, numberFormatId: $numberFormatId, note: $note, footerNote: $footerNote, bankAccountId: $bankAccountId, ibanVisibility: $ibanVisibility, tags: $tags, orderNumber: $orderNumber, currency: $currency, exchangeRate: $exchangeRate, paymentMethod: $paymentMethod, customPaymentMethod: $customPaymentMethod, language: $language, transferredTaxLiability: $transferredTaxLiability, vatPriceMode: $vatPriceMode, oss: $oss, supplyCode: $supplyCode, roundTotal: $roundTotal, subtotal: $subtotal, total: $total, nativeSubtotal: $nativeSubtotal, nativeTotal: $nativeTotal, roundingAdjustment: $roundingAdjustment, legacyBankDetails: $legacyBankDetails, htmlUrl: $htmlUrl, url: $url, subjectUrl: $subjectUrl, lines: $lines, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RecurringGeneratorCopyWith<$Res>  {
  factory $RecurringGeneratorCopyWith(RecurringGenerator value, $Res Function(RecurringGenerator) _then) = _$RecurringGeneratorCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId, String name, bool? active, bool? proforma, bool? paypal, bool? gopay,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate,@JsonKey(name: 'months_period') int? monthsPeriod,@JsonKey(name: 'next_occurrence_on') String? nextOccurrenceOn,@JsonKey(name: 'last_day_in_month') bool? lastDayInMonth,@JsonKey(name: 'tax_date_at_end_of_last_month') bool? taxDateAtEndOfLastMonth, int? due,@JsonKey(name: 'send_email') bool? sendEmail,@JsonKey(name: 'subject_id') int subjectId,@JsonKey(name: 'number_format_id') int? numberFormatId, String? note,@JsonKey(name: 'footer_note') String? footerNote,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'iban_visibility') IbanVisibility? ibanVisibility, List<String>? tags,@JsonKey(name: 'order_number') String? orderNumber, String? currency,@JsonKey(name: 'exchange_rate') String? exchangeRate,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'custom_payment_method') String? customPaymentMethod, DocumentLanguage? language,@JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,@JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode, OssMode? oss,@JsonKey(name: 'supply_code') int? supplyCode,@JsonKey(name: 'round_total') bool? roundTotal, String? subtotal, String? total,@JsonKey(name: 'native_subtotal') String? nativeSubtotal,@JsonKey(name: 'native_total') String? nativeTotal,@JsonKey(name: 'rounding_adjustment') String? roundingAdjustment,@JsonKey(name: 'legacy_bank_details') LegacyBankDetails? legacyBankDetails,@JsonKey(name: 'html_url') String? htmlUrl, String? url,@JsonKey(name: 'subject_url') String? subjectUrl, List<InvoiceLine>? lines,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


$LegacyBankDetailsCopyWith<$Res>? get legacyBankDetails;

}
/// @nodoc
class _$RecurringGeneratorCopyWithImpl<$Res>
    implements $RecurringGeneratorCopyWith<$Res> {
  _$RecurringGeneratorCopyWithImpl(this._self, this._then);

  final RecurringGenerator _self;
  final $Res Function(RecurringGenerator) _then;

/// Create a copy of RecurringGenerator
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customId = freezed,Object? name = null,Object? active = freezed,Object? proforma = freezed,Object? paypal = freezed,Object? gopay = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? monthsPeriod = freezed,Object? nextOccurrenceOn = freezed,Object? lastDayInMonth = freezed,Object? taxDateAtEndOfLastMonth = freezed,Object? due = freezed,Object? sendEmail = freezed,Object? subjectId = null,Object? numberFormatId = freezed,Object? note = freezed,Object? footerNote = freezed,Object? bankAccountId = freezed,Object? ibanVisibility = freezed,Object? tags = freezed,Object? orderNumber = freezed,Object? currency = freezed,Object? exchangeRate = freezed,Object? paymentMethod = freezed,Object? customPaymentMethod = freezed,Object? language = freezed,Object? transferredTaxLiability = freezed,Object? vatPriceMode = freezed,Object? oss = freezed,Object? supplyCode = freezed,Object? roundTotal = freezed,Object? subtotal = freezed,Object? total = freezed,Object? nativeSubtotal = freezed,Object? nativeTotal = freezed,Object? roundingAdjustment = freezed,Object? legacyBankDetails = freezed,Object? htmlUrl = freezed,Object? url = freezed,Object? subjectUrl = freezed,Object? lines = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,proforma: freezed == proforma ? _self.proforma : proforma // ignore: cast_nullable_to_non_nullable
as bool?,paypal: freezed == paypal ? _self.paypal : paypal // ignore: cast_nullable_to_non_nullable
as bool?,gopay: freezed == gopay ? _self.gopay : gopay // ignore: cast_nullable_to_non_nullable
as bool?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,monthsPeriod: freezed == monthsPeriod ? _self.monthsPeriod : monthsPeriod // ignore: cast_nullable_to_non_nullable
as int?,nextOccurrenceOn: freezed == nextOccurrenceOn ? _self.nextOccurrenceOn : nextOccurrenceOn // ignore: cast_nullable_to_non_nullable
as String?,lastDayInMonth: freezed == lastDayInMonth ? _self.lastDayInMonth : lastDayInMonth // ignore: cast_nullable_to_non_nullable
as bool?,taxDateAtEndOfLastMonth: freezed == taxDateAtEndOfLastMonth ? _self.taxDateAtEndOfLastMonth : taxDateAtEndOfLastMonth // ignore: cast_nullable_to_non_nullable
as bool?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,sendEmail: freezed == sendEmail ? _self.sendEmail : sendEmail // ignore: cast_nullable_to_non_nullable
as bool?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,numberFormatId: freezed == numberFormatId ? _self.numberFormatId : numberFormatId // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,footerNote: freezed == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int?,ibanVisibility: freezed == ibanVisibility ? _self.ibanVisibility : ibanVisibility // ignore: cast_nullable_to_non_nullable
as IbanVisibility?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,exchangeRate: freezed == exchangeRate ? _self.exchangeRate : exchangeRate // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,customPaymentMethod: freezed == customPaymentMethod ? _self.customPaymentMethod : customPaymentMethod // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as DocumentLanguage?,transferredTaxLiability: freezed == transferredTaxLiability ? _self.transferredTaxLiability : transferredTaxLiability // ignore: cast_nullable_to_non_nullable
as bool?,vatPriceMode: freezed == vatPriceMode ? _self.vatPriceMode : vatPriceMode // ignore: cast_nullable_to_non_nullable
as VatPriceMode?,oss: freezed == oss ? _self.oss : oss // ignore: cast_nullable_to_non_nullable
as OssMode?,supplyCode: freezed == supplyCode ? _self.supplyCode : supplyCode // ignore: cast_nullable_to_non_nullable
as int?,roundTotal: freezed == roundTotal ? _self.roundTotal : roundTotal // ignore: cast_nullable_to_non_nullable
as bool?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,nativeSubtotal: freezed == nativeSubtotal ? _self.nativeSubtotal : nativeSubtotal // ignore: cast_nullable_to_non_nullable
as String?,nativeTotal: freezed == nativeTotal ? _self.nativeTotal : nativeTotal // ignore: cast_nullable_to_non_nullable
as String?,roundingAdjustment: freezed == roundingAdjustment ? _self.roundingAdjustment : roundingAdjustment // ignore: cast_nullable_to_non_nullable
as String?,legacyBankDetails: freezed == legacyBankDetails ? _self.legacyBankDetails : legacyBankDetails // ignore: cast_nullable_to_non_nullable
as LegacyBankDetails?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,subjectUrl: freezed == subjectUrl ? _self.subjectUrl : subjectUrl // ignore: cast_nullable_to_non_nullable
as String?,lines: freezed == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLine>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of RecurringGenerator
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LegacyBankDetailsCopyWith<$Res>? get legacyBankDetails {
    if (_self.legacyBankDetails == null) {
    return null;
  }

  return $LegacyBankDetailsCopyWith<$Res>(_self.legacyBankDetails!, (value) {
    return _then(_self.copyWith(legacyBankDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecurringGenerator].
extension RecurringGeneratorPatterns on RecurringGenerator {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecurringGenerator value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecurringGenerator() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecurringGenerator value)  $default,){
final _that = this;
switch (_that) {
case _RecurringGenerator():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecurringGenerator value)?  $default,){
final _that = this;
switch (_that) {
case _RecurringGenerator() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String name,  bool? active,  bool? proforma,  bool? paypal,  bool? gopay, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'months_period')  int? monthsPeriod, @JsonKey(name: 'next_occurrence_on')  String? nextOccurrenceOn, @JsonKey(name: 'last_day_in_month')  bool? lastDayInMonth, @JsonKey(name: 'tax_date_at_end_of_last_month')  bool? taxDateAtEndOfLastMonth,  int? due, @JsonKey(name: 'send_email')  bool? sendEmail, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'number_format_id')  int? numberFormatId,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility,  List<String>? tags, @JsonKey(name: 'order_number')  String? orderNumber,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode,  OssMode? oss, @JsonKey(name: 'supply_code')  int? supplyCode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'rounding_adjustment')  String? roundingAdjustment, @JsonKey(name: 'legacy_bank_details')  LegacyBankDetails? legacyBankDetails, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl,  List<InvoiceLine>? lines, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecurringGenerator() when $default != null:
return $default(_that.id,_that.customId,_that.name,_that.active,_that.proforma,_that.paypal,_that.gopay,_that.startDate,_that.endDate,_that.monthsPeriod,_that.nextOccurrenceOn,_that.lastDayInMonth,_that.taxDateAtEndOfLastMonth,_that.due,_that.sendEmail,_that.subjectId,_that.numberFormatId,_that.note,_that.footerNote,_that.bankAccountId,_that.ibanVisibility,_that.tags,_that.orderNumber,_that.currency,_that.exchangeRate,_that.paymentMethod,_that.customPaymentMethod,_that.language,_that.transferredTaxLiability,_that.vatPriceMode,_that.oss,_that.supplyCode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.roundingAdjustment,_that.legacyBankDetails,_that.htmlUrl,_that.url,_that.subjectUrl,_that.lines,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String name,  bool? active,  bool? proforma,  bool? paypal,  bool? gopay, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'months_period')  int? monthsPeriod, @JsonKey(name: 'next_occurrence_on')  String? nextOccurrenceOn, @JsonKey(name: 'last_day_in_month')  bool? lastDayInMonth, @JsonKey(name: 'tax_date_at_end_of_last_month')  bool? taxDateAtEndOfLastMonth,  int? due, @JsonKey(name: 'send_email')  bool? sendEmail, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'number_format_id')  int? numberFormatId,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility,  List<String>? tags, @JsonKey(name: 'order_number')  String? orderNumber,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode,  OssMode? oss, @JsonKey(name: 'supply_code')  int? supplyCode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'rounding_adjustment')  String? roundingAdjustment, @JsonKey(name: 'legacy_bank_details')  LegacyBankDetails? legacyBankDetails, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl,  List<InvoiceLine>? lines, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RecurringGenerator():
return $default(_that.id,_that.customId,_that.name,_that.active,_that.proforma,_that.paypal,_that.gopay,_that.startDate,_that.endDate,_that.monthsPeriod,_that.nextOccurrenceOn,_that.lastDayInMonth,_that.taxDateAtEndOfLastMonth,_that.due,_that.sendEmail,_that.subjectId,_that.numberFormatId,_that.note,_that.footerNote,_that.bankAccountId,_that.ibanVisibility,_that.tags,_that.orderNumber,_that.currency,_that.exchangeRate,_that.paymentMethod,_that.customPaymentMethod,_that.language,_that.transferredTaxLiability,_that.vatPriceMode,_that.oss,_that.supplyCode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.roundingAdjustment,_that.legacyBankDetails,_that.htmlUrl,_that.url,_that.subjectUrl,_that.lines,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String name,  bool? active,  bool? proforma,  bool? paypal,  bool? gopay, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'months_period')  int? monthsPeriod, @JsonKey(name: 'next_occurrence_on')  String? nextOccurrenceOn, @JsonKey(name: 'last_day_in_month')  bool? lastDayInMonth, @JsonKey(name: 'tax_date_at_end_of_last_month')  bool? taxDateAtEndOfLastMonth,  int? due, @JsonKey(name: 'send_email')  bool? sendEmail, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'number_format_id')  int? numberFormatId,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility,  List<String>? tags, @JsonKey(name: 'order_number')  String? orderNumber,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode,  OssMode? oss, @JsonKey(name: 'supply_code')  int? supplyCode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'rounding_adjustment')  String? roundingAdjustment, @JsonKey(name: 'legacy_bank_details')  LegacyBankDetails? legacyBankDetails, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl,  List<InvoiceLine>? lines, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecurringGenerator() when $default != null:
return $default(_that.id,_that.customId,_that.name,_that.active,_that.proforma,_that.paypal,_that.gopay,_that.startDate,_that.endDate,_that.monthsPeriod,_that.nextOccurrenceOn,_that.lastDayInMonth,_that.taxDateAtEndOfLastMonth,_that.due,_that.sendEmail,_that.subjectId,_that.numberFormatId,_that.note,_that.footerNote,_that.bankAccountId,_that.ibanVisibility,_that.tags,_that.orderNumber,_that.currency,_that.exchangeRate,_that.paymentMethod,_that.customPaymentMethod,_that.language,_that.transferredTaxLiability,_that.vatPriceMode,_that.oss,_that.supplyCode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.roundingAdjustment,_that.legacyBankDetails,_that.htmlUrl,_that.url,_that.subjectUrl,_that.lines,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecurringGenerator implements RecurringGenerator {
  const _RecurringGenerator({this.id, @JsonKey(name: 'custom_id') this.customId, required this.name, this.active, this.proforma, this.paypal, this.gopay, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'months_period') this.monthsPeriod, @JsonKey(name: 'next_occurrence_on') this.nextOccurrenceOn, @JsonKey(name: 'last_day_in_month') this.lastDayInMonth, @JsonKey(name: 'tax_date_at_end_of_last_month') this.taxDateAtEndOfLastMonth, this.due, @JsonKey(name: 'send_email') this.sendEmail, @JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'number_format_id') this.numberFormatId, this.note, @JsonKey(name: 'footer_note') this.footerNote, @JsonKey(name: 'bank_account_id') this.bankAccountId, @JsonKey(name: 'iban_visibility') this.ibanVisibility, final  List<String>? tags, @JsonKey(name: 'order_number') this.orderNumber, this.currency, @JsonKey(name: 'exchange_rate') this.exchangeRate, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'custom_payment_method') this.customPaymentMethod, this.language, @JsonKey(name: 'transferred_tax_liability') this.transferredTaxLiability, @JsonKey(name: 'vat_price_mode') this.vatPriceMode, this.oss, @JsonKey(name: 'supply_code') this.supplyCode, @JsonKey(name: 'round_total') this.roundTotal, this.subtotal, this.total, @JsonKey(name: 'native_subtotal') this.nativeSubtotal, @JsonKey(name: 'native_total') this.nativeTotal, @JsonKey(name: 'rounding_adjustment') this.roundingAdjustment, @JsonKey(name: 'legacy_bank_details') this.legacyBankDetails, @JsonKey(name: 'html_url') this.htmlUrl, this.url, @JsonKey(name: 'subject_url') this.subjectUrl, final  List<InvoiceLine>? lines, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _tags = tags,_lines = lines;
  factory _RecurringGenerator.fromJson(Map<String, dynamic> json) => _$RecurringGeneratorFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'custom_id') final  String? customId;
@override final  String name;
@override final  bool? active;
@override final  bool? proforma;
@override final  bool? paypal;
@override final  bool? gopay;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'end_date') final  String? endDate;
@override@JsonKey(name: 'months_period') final  int? monthsPeriod;
@override@JsonKey(name: 'next_occurrence_on') final  String? nextOccurrenceOn;
@override@JsonKey(name: 'last_day_in_month') final  bool? lastDayInMonth;
@override@JsonKey(name: 'tax_date_at_end_of_last_month') final  bool? taxDateAtEndOfLastMonth;
@override final  int? due;
@override@JsonKey(name: 'send_email') final  bool? sendEmail;
@override@JsonKey(name: 'subject_id') final  int subjectId;
@override@JsonKey(name: 'number_format_id') final  int? numberFormatId;
@override final  String? note;
@override@JsonKey(name: 'footer_note') final  String? footerNote;
@override@JsonKey(name: 'bank_account_id') final  int? bankAccountId;
@override@JsonKey(name: 'iban_visibility') final  IbanVisibility? ibanVisibility;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'order_number') final  String? orderNumber;
@override final  String? currency;
@override@JsonKey(name: 'exchange_rate') final  String? exchangeRate;
@override@JsonKey(name: 'payment_method') final  PaymentMethod? paymentMethod;
@override@JsonKey(name: 'custom_payment_method') final  String? customPaymentMethod;
@override final  DocumentLanguage? language;
@override@JsonKey(name: 'transferred_tax_liability') final  bool? transferredTaxLiability;
@override@JsonKey(name: 'vat_price_mode') final  VatPriceMode? vatPriceMode;
@override final  OssMode? oss;
@override@JsonKey(name: 'supply_code') final  int? supplyCode;
@override@JsonKey(name: 'round_total') final  bool? roundTotal;
@override final  String? subtotal;
@override final  String? total;
@override@JsonKey(name: 'native_subtotal') final  String? nativeSubtotal;
@override@JsonKey(name: 'native_total') final  String? nativeTotal;
@override@JsonKey(name: 'rounding_adjustment') final  String? roundingAdjustment;
@override@JsonKey(name: 'legacy_bank_details') final  LegacyBankDetails? legacyBankDetails;
@override@JsonKey(name: 'html_url') final  String? htmlUrl;
@override final  String? url;
@override@JsonKey(name: 'subject_url') final  String? subjectUrl;
 final  List<InvoiceLine>? _lines;
@override List<InvoiceLine>? get lines {
  final value = _lines;
  if (value == null) return null;
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of RecurringGenerator
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecurringGeneratorCopyWith<_RecurringGenerator> get copyWith => __$RecurringGeneratorCopyWithImpl<_RecurringGenerator>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecurringGeneratorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecurringGenerator&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active)&&(identical(other.proforma, proforma) || other.proforma == proforma)&&(identical(other.paypal, paypal) || other.paypal == paypal)&&(identical(other.gopay, gopay) || other.gopay == gopay)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.monthsPeriod, monthsPeriod) || other.monthsPeriod == monthsPeriod)&&(identical(other.nextOccurrenceOn, nextOccurrenceOn) || other.nextOccurrenceOn == nextOccurrenceOn)&&(identical(other.lastDayInMonth, lastDayInMonth) || other.lastDayInMonth == lastDayInMonth)&&(identical(other.taxDateAtEndOfLastMonth, taxDateAtEndOfLastMonth) || other.taxDateAtEndOfLastMonth == taxDateAtEndOfLastMonth)&&(identical(other.due, due) || other.due == due)&&(identical(other.sendEmail, sendEmail) || other.sendEmail == sendEmail)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.numberFormatId, numberFormatId) || other.numberFormatId == numberFormatId)&&(identical(other.note, note) || other.note == note)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.ibanVisibility, ibanVisibility) || other.ibanVisibility == ibanVisibility)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.customPaymentMethod, customPaymentMethod) || other.customPaymentMethod == customPaymentMethod)&&(identical(other.language, language) || other.language == language)&&(identical(other.transferredTaxLiability, transferredTaxLiability) || other.transferredTaxLiability == transferredTaxLiability)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.oss, oss) || other.oss == oss)&&(identical(other.supplyCode, supplyCode) || other.supplyCode == supplyCode)&&(identical(other.roundTotal, roundTotal) || other.roundTotal == roundTotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.nativeSubtotal, nativeSubtotal) || other.nativeSubtotal == nativeSubtotal)&&(identical(other.nativeTotal, nativeTotal) || other.nativeTotal == nativeTotal)&&(identical(other.roundingAdjustment, roundingAdjustment) || other.roundingAdjustment == roundingAdjustment)&&(identical(other.legacyBankDetails, legacyBankDetails) || other.legacyBankDetails == legacyBankDetails)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.subjectUrl, subjectUrl) || other.subjectUrl == subjectUrl)&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,name,active,proforma,paypal,gopay,startDate,endDate,monthsPeriod,nextOccurrenceOn,lastDayInMonth,taxDateAtEndOfLastMonth,due,sendEmail,subjectId,numberFormatId,note,footerNote,bankAccountId,ibanVisibility,const DeepCollectionEquality().hash(_tags),orderNumber,currency,exchangeRate,paymentMethod,customPaymentMethod,language,transferredTaxLiability,vatPriceMode,oss,supplyCode,roundTotal,subtotal,total,nativeSubtotal,nativeTotal,roundingAdjustment,legacyBankDetails,htmlUrl,url,subjectUrl,const DeepCollectionEquality().hash(_lines),createdAt,updatedAt]);

@override
String toString() {
  return 'RecurringGenerator(id: $id, customId: $customId, name: $name, active: $active, proforma: $proforma, paypal: $paypal, gopay: $gopay, startDate: $startDate, endDate: $endDate, monthsPeriod: $monthsPeriod, nextOccurrenceOn: $nextOccurrenceOn, lastDayInMonth: $lastDayInMonth, taxDateAtEndOfLastMonth: $taxDateAtEndOfLastMonth, due: $due, sendEmail: $sendEmail, subjectId: $subjectId, numberFormatId: $numberFormatId, note: $note, footerNote: $footerNote, bankAccountId: $bankAccountId, ibanVisibility: $ibanVisibility, tags: $tags, orderNumber: $orderNumber, currency: $currency, exchangeRate: $exchangeRate, paymentMethod: $paymentMethod, customPaymentMethod: $customPaymentMethod, language: $language, transferredTaxLiability: $transferredTaxLiability, vatPriceMode: $vatPriceMode, oss: $oss, supplyCode: $supplyCode, roundTotal: $roundTotal, subtotal: $subtotal, total: $total, nativeSubtotal: $nativeSubtotal, nativeTotal: $nativeTotal, roundingAdjustment: $roundingAdjustment, legacyBankDetails: $legacyBankDetails, htmlUrl: $htmlUrl, url: $url, subjectUrl: $subjectUrl, lines: $lines, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RecurringGeneratorCopyWith<$Res> implements $RecurringGeneratorCopyWith<$Res> {
  factory _$RecurringGeneratorCopyWith(_RecurringGenerator value, $Res Function(_RecurringGenerator) _then) = __$RecurringGeneratorCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId, String name, bool? active, bool? proforma, bool? paypal, bool? gopay,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate,@JsonKey(name: 'months_period') int? monthsPeriod,@JsonKey(name: 'next_occurrence_on') String? nextOccurrenceOn,@JsonKey(name: 'last_day_in_month') bool? lastDayInMonth,@JsonKey(name: 'tax_date_at_end_of_last_month') bool? taxDateAtEndOfLastMonth, int? due,@JsonKey(name: 'send_email') bool? sendEmail,@JsonKey(name: 'subject_id') int subjectId,@JsonKey(name: 'number_format_id') int? numberFormatId, String? note,@JsonKey(name: 'footer_note') String? footerNote,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'iban_visibility') IbanVisibility? ibanVisibility, List<String>? tags,@JsonKey(name: 'order_number') String? orderNumber, String? currency,@JsonKey(name: 'exchange_rate') String? exchangeRate,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'custom_payment_method') String? customPaymentMethod, DocumentLanguage? language,@JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,@JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode, OssMode? oss,@JsonKey(name: 'supply_code') int? supplyCode,@JsonKey(name: 'round_total') bool? roundTotal, String? subtotal, String? total,@JsonKey(name: 'native_subtotal') String? nativeSubtotal,@JsonKey(name: 'native_total') String? nativeTotal,@JsonKey(name: 'rounding_adjustment') String? roundingAdjustment,@JsonKey(name: 'legacy_bank_details') LegacyBankDetails? legacyBankDetails,@JsonKey(name: 'html_url') String? htmlUrl, String? url,@JsonKey(name: 'subject_url') String? subjectUrl, List<InvoiceLine>? lines,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});


@override $LegacyBankDetailsCopyWith<$Res>? get legacyBankDetails;

}
/// @nodoc
class __$RecurringGeneratorCopyWithImpl<$Res>
    implements _$RecurringGeneratorCopyWith<$Res> {
  __$RecurringGeneratorCopyWithImpl(this._self, this._then);

  final _RecurringGenerator _self;
  final $Res Function(_RecurringGenerator) _then;

/// Create a copy of RecurringGenerator
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customId = freezed,Object? name = null,Object? active = freezed,Object? proforma = freezed,Object? paypal = freezed,Object? gopay = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? monthsPeriod = freezed,Object? nextOccurrenceOn = freezed,Object? lastDayInMonth = freezed,Object? taxDateAtEndOfLastMonth = freezed,Object? due = freezed,Object? sendEmail = freezed,Object? subjectId = null,Object? numberFormatId = freezed,Object? note = freezed,Object? footerNote = freezed,Object? bankAccountId = freezed,Object? ibanVisibility = freezed,Object? tags = freezed,Object? orderNumber = freezed,Object? currency = freezed,Object? exchangeRate = freezed,Object? paymentMethod = freezed,Object? customPaymentMethod = freezed,Object? language = freezed,Object? transferredTaxLiability = freezed,Object? vatPriceMode = freezed,Object? oss = freezed,Object? supplyCode = freezed,Object? roundTotal = freezed,Object? subtotal = freezed,Object? total = freezed,Object? nativeSubtotal = freezed,Object? nativeTotal = freezed,Object? roundingAdjustment = freezed,Object? legacyBankDetails = freezed,Object? htmlUrl = freezed,Object? url = freezed,Object? subjectUrl = freezed,Object? lines = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_RecurringGenerator(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,proforma: freezed == proforma ? _self.proforma : proforma // ignore: cast_nullable_to_non_nullable
as bool?,paypal: freezed == paypal ? _self.paypal : paypal // ignore: cast_nullable_to_non_nullable
as bool?,gopay: freezed == gopay ? _self.gopay : gopay // ignore: cast_nullable_to_non_nullable
as bool?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,monthsPeriod: freezed == monthsPeriod ? _self.monthsPeriod : monthsPeriod // ignore: cast_nullable_to_non_nullable
as int?,nextOccurrenceOn: freezed == nextOccurrenceOn ? _self.nextOccurrenceOn : nextOccurrenceOn // ignore: cast_nullable_to_non_nullable
as String?,lastDayInMonth: freezed == lastDayInMonth ? _self.lastDayInMonth : lastDayInMonth // ignore: cast_nullable_to_non_nullable
as bool?,taxDateAtEndOfLastMonth: freezed == taxDateAtEndOfLastMonth ? _self.taxDateAtEndOfLastMonth : taxDateAtEndOfLastMonth // ignore: cast_nullable_to_non_nullable
as bool?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,sendEmail: freezed == sendEmail ? _self.sendEmail : sendEmail // ignore: cast_nullable_to_non_nullable
as bool?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,numberFormatId: freezed == numberFormatId ? _self.numberFormatId : numberFormatId // ignore: cast_nullable_to_non_nullable
as int?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,footerNote: freezed == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int?,ibanVisibility: freezed == ibanVisibility ? _self.ibanVisibility : ibanVisibility // ignore: cast_nullable_to_non_nullable
as IbanVisibility?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,exchangeRate: freezed == exchangeRate ? _self.exchangeRate : exchangeRate // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,customPaymentMethod: freezed == customPaymentMethod ? _self.customPaymentMethod : customPaymentMethod // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as DocumentLanguage?,transferredTaxLiability: freezed == transferredTaxLiability ? _self.transferredTaxLiability : transferredTaxLiability // ignore: cast_nullable_to_non_nullable
as bool?,vatPriceMode: freezed == vatPriceMode ? _self.vatPriceMode : vatPriceMode // ignore: cast_nullable_to_non_nullable
as VatPriceMode?,oss: freezed == oss ? _self.oss : oss // ignore: cast_nullable_to_non_nullable
as OssMode?,supplyCode: freezed == supplyCode ? _self.supplyCode : supplyCode // ignore: cast_nullable_to_non_nullable
as int?,roundTotal: freezed == roundTotal ? _self.roundTotal : roundTotal // ignore: cast_nullable_to_non_nullable
as bool?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,nativeSubtotal: freezed == nativeSubtotal ? _self.nativeSubtotal : nativeSubtotal // ignore: cast_nullable_to_non_nullable
as String?,nativeTotal: freezed == nativeTotal ? _self.nativeTotal : nativeTotal // ignore: cast_nullable_to_non_nullable
as String?,roundingAdjustment: freezed == roundingAdjustment ? _self.roundingAdjustment : roundingAdjustment // ignore: cast_nullable_to_non_nullable
as String?,legacyBankDetails: freezed == legacyBankDetails ? _self.legacyBankDetails : legacyBankDetails // ignore: cast_nullable_to_non_nullable
as LegacyBankDetails?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,subjectUrl: freezed == subjectUrl ? _self.subjectUrl : subjectUrl // ignore: cast_nullable_to_non_nullable
as String?,lines: freezed == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLine>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of RecurringGenerator
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LegacyBankDetailsCopyWith<$Res>? get legacyBankDetails {
    if (_self.legacyBankDetails == null) {
    return null;
  }

  return $LegacyBankDetailsCopyWith<$Res>(_self.legacyBankDetails!, (value) {
    return _then(_self.copyWith(legacyBankDetails: value));
  });
}
}

// dart format on
