// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Generator {

 int? get id;@JsonKey(name: 'custom_id') String? get customId; String get name; bool? get proforma; bool? get paypal; bool? get gopay;@JsonKey(name: 'tax_date_at_end_of_last_month') bool? get taxDateAtEndOfLastMonth; int? get due;@JsonKey(name: 'subject_id') int get subjectId;@JsonKey(name: 'number_format_id') int? get numberFormatId; String? get note;@JsonKey(name: 'footer_note') String? get footerNote;@JsonKey(name: 'bank_account_id') int? get bankAccountId;@JsonKey(name: 'iban_visibility') IbanVisibility? get ibanVisibility; List<String>? get tags;@JsonKey(name: 'order_number') String? get orderNumber; String? get currency;@JsonKey(name: 'exchange_rate') String? get exchangeRate;@JsonKey(name: 'payment_method') PaymentMethod? get paymentMethod;@JsonKey(name: 'custom_payment_method') String? get customPaymentMethod; DocumentLanguage? get language;@JsonKey(name: 'transferred_tax_liability') bool? get transferredTaxLiability;@JsonKey(name: 'vat_price_mode') VatPriceMode? get vatPriceMode;@JsonKey(name: 'round_total') bool? get roundTotal; String? get subtotal; String? get total;@JsonKey(name: 'native_subtotal') String? get nativeSubtotal;@JsonKey(name: 'native_total') String? get nativeTotal;@JsonKey(name: 'legacy_bank_details') LegacyBankDetails? get legacyBankDetails;@JsonKey(name: 'html_url') String? get htmlUrl; String? get url;@JsonKey(name: 'subject_url') String? get subjectUrl; List<InvoiceLine>? get lines;
/// Create a copy of Generator
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratorCopyWith<Generator> get copyWith => _$GeneratorCopyWithImpl<Generator>(this as Generator, _$identity);

  /// Serializes this Generator to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Generator&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.name, name) || other.name == name)&&(identical(other.proforma, proforma) || other.proforma == proforma)&&(identical(other.paypal, paypal) || other.paypal == paypal)&&(identical(other.gopay, gopay) || other.gopay == gopay)&&(identical(other.taxDateAtEndOfLastMonth, taxDateAtEndOfLastMonth) || other.taxDateAtEndOfLastMonth == taxDateAtEndOfLastMonth)&&(identical(other.due, due) || other.due == due)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.numberFormatId, numberFormatId) || other.numberFormatId == numberFormatId)&&(identical(other.note, note) || other.note == note)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.ibanVisibility, ibanVisibility) || other.ibanVisibility == ibanVisibility)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.customPaymentMethod, customPaymentMethod) || other.customPaymentMethod == customPaymentMethod)&&(identical(other.language, language) || other.language == language)&&(identical(other.transferredTaxLiability, transferredTaxLiability) || other.transferredTaxLiability == transferredTaxLiability)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.roundTotal, roundTotal) || other.roundTotal == roundTotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.nativeSubtotal, nativeSubtotal) || other.nativeSubtotal == nativeSubtotal)&&(identical(other.nativeTotal, nativeTotal) || other.nativeTotal == nativeTotal)&&(identical(other.legacyBankDetails, legacyBankDetails) || other.legacyBankDetails == legacyBankDetails)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.subjectUrl, subjectUrl) || other.subjectUrl == subjectUrl)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,name,proforma,paypal,gopay,taxDateAtEndOfLastMonth,due,subjectId,numberFormatId,note,footerNote,bankAccountId,ibanVisibility,const DeepCollectionEquality().hash(tags),orderNumber,currency,exchangeRate,paymentMethod,customPaymentMethod,language,transferredTaxLiability,vatPriceMode,roundTotal,subtotal,total,nativeSubtotal,nativeTotal,legacyBankDetails,htmlUrl,url,subjectUrl,const DeepCollectionEquality().hash(lines)]);

@override
String toString() {
  return 'Generator(id: $id, customId: $customId, name: $name, proforma: $proforma, paypal: $paypal, gopay: $gopay, taxDateAtEndOfLastMonth: $taxDateAtEndOfLastMonth, due: $due, subjectId: $subjectId, numberFormatId: $numberFormatId, note: $note, footerNote: $footerNote, bankAccountId: $bankAccountId, ibanVisibility: $ibanVisibility, tags: $tags, orderNumber: $orderNumber, currency: $currency, exchangeRate: $exchangeRate, paymentMethod: $paymentMethod, customPaymentMethod: $customPaymentMethod, language: $language, transferredTaxLiability: $transferredTaxLiability, vatPriceMode: $vatPriceMode, roundTotal: $roundTotal, subtotal: $subtotal, total: $total, nativeSubtotal: $nativeSubtotal, nativeTotal: $nativeTotal, legacyBankDetails: $legacyBankDetails, htmlUrl: $htmlUrl, url: $url, subjectUrl: $subjectUrl, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $GeneratorCopyWith<$Res>  {
  factory $GeneratorCopyWith(Generator value, $Res Function(Generator) _then) = _$GeneratorCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId, String name, bool? proforma, bool? paypal, bool? gopay,@JsonKey(name: 'tax_date_at_end_of_last_month') bool? taxDateAtEndOfLastMonth, int? due,@JsonKey(name: 'subject_id') int subjectId,@JsonKey(name: 'number_format_id') int? numberFormatId, String? note,@JsonKey(name: 'footer_note') String? footerNote,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'iban_visibility') IbanVisibility? ibanVisibility, List<String>? tags,@JsonKey(name: 'order_number') String? orderNumber, String? currency,@JsonKey(name: 'exchange_rate') String? exchangeRate,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'custom_payment_method') String? customPaymentMethod, DocumentLanguage? language,@JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,@JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,@JsonKey(name: 'round_total') bool? roundTotal, String? subtotal, String? total,@JsonKey(name: 'native_subtotal') String? nativeSubtotal,@JsonKey(name: 'native_total') String? nativeTotal,@JsonKey(name: 'legacy_bank_details') LegacyBankDetails? legacyBankDetails,@JsonKey(name: 'html_url') String? htmlUrl, String? url,@JsonKey(name: 'subject_url') String? subjectUrl, List<InvoiceLine>? lines
});


$LegacyBankDetailsCopyWith<$Res>? get legacyBankDetails;

}
/// @nodoc
class _$GeneratorCopyWithImpl<$Res>
    implements $GeneratorCopyWith<$Res> {
  _$GeneratorCopyWithImpl(this._self, this._then);

  final Generator _self;
  final $Res Function(Generator) _then;

/// Create a copy of Generator
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customId = freezed,Object? name = null,Object? proforma = freezed,Object? paypal = freezed,Object? gopay = freezed,Object? taxDateAtEndOfLastMonth = freezed,Object? due = freezed,Object? subjectId = null,Object? numberFormatId = freezed,Object? note = freezed,Object? footerNote = freezed,Object? bankAccountId = freezed,Object? ibanVisibility = freezed,Object? tags = freezed,Object? orderNumber = freezed,Object? currency = freezed,Object? exchangeRate = freezed,Object? paymentMethod = freezed,Object? customPaymentMethod = freezed,Object? language = freezed,Object? transferredTaxLiability = freezed,Object? vatPriceMode = freezed,Object? roundTotal = freezed,Object? subtotal = freezed,Object? total = freezed,Object? nativeSubtotal = freezed,Object? nativeTotal = freezed,Object? legacyBankDetails = freezed,Object? htmlUrl = freezed,Object? url = freezed,Object? subjectUrl = freezed,Object? lines = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,proforma: freezed == proforma ? _self.proforma : proforma // ignore: cast_nullable_to_non_nullable
as bool?,paypal: freezed == paypal ? _self.paypal : paypal // ignore: cast_nullable_to_non_nullable
as bool?,gopay: freezed == gopay ? _self.gopay : gopay // ignore: cast_nullable_to_non_nullable
as bool?,taxDateAtEndOfLastMonth: freezed == taxDateAtEndOfLastMonth ? _self.taxDateAtEndOfLastMonth : taxDateAtEndOfLastMonth // ignore: cast_nullable_to_non_nullable
as bool?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
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
as VatPriceMode?,roundTotal: freezed == roundTotal ? _self.roundTotal : roundTotal // ignore: cast_nullable_to_non_nullable
as bool?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,nativeSubtotal: freezed == nativeSubtotal ? _self.nativeSubtotal : nativeSubtotal // ignore: cast_nullable_to_non_nullable
as String?,nativeTotal: freezed == nativeTotal ? _self.nativeTotal : nativeTotal // ignore: cast_nullable_to_non_nullable
as String?,legacyBankDetails: freezed == legacyBankDetails ? _self.legacyBankDetails : legacyBankDetails // ignore: cast_nullable_to_non_nullable
as LegacyBankDetails?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,subjectUrl: freezed == subjectUrl ? _self.subjectUrl : subjectUrl // ignore: cast_nullable_to_non_nullable
as String?,lines: freezed == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLine>?,
  ));
}
/// Create a copy of Generator
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


/// Adds pattern-matching-related methods to [Generator].
extension GeneratorPatterns on Generator {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Generator value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Generator() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Generator value)  $default,){
final _that = this;
switch (_that) {
case _Generator():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Generator value)?  $default,){
final _that = this;
switch (_that) {
case _Generator() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String name,  bool? proforma,  bool? paypal,  bool? gopay, @JsonKey(name: 'tax_date_at_end_of_last_month')  bool? taxDateAtEndOfLastMonth,  int? due, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'number_format_id')  int? numberFormatId,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility,  List<String>? tags, @JsonKey(name: 'order_number')  String? orderNumber,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'legacy_bank_details')  LegacyBankDetails? legacyBankDetails, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl,  List<InvoiceLine>? lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Generator() when $default != null:
return $default(_that.id,_that.customId,_that.name,_that.proforma,_that.paypal,_that.gopay,_that.taxDateAtEndOfLastMonth,_that.due,_that.subjectId,_that.numberFormatId,_that.note,_that.footerNote,_that.bankAccountId,_that.ibanVisibility,_that.tags,_that.orderNumber,_that.currency,_that.exchangeRate,_that.paymentMethod,_that.customPaymentMethod,_that.language,_that.transferredTaxLiability,_that.vatPriceMode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.legacyBankDetails,_that.htmlUrl,_that.url,_that.subjectUrl,_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String name,  bool? proforma,  bool? paypal,  bool? gopay, @JsonKey(name: 'tax_date_at_end_of_last_month')  bool? taxDateAtEndOfLastMonth,  int? due, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'number_format_id')  int? numberFormatId,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility,  List<String>? tags, @JsonKey(name: 'order_number')  String? orderNumber,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'legacy_bank_details')  LegacyBankDetails? legacyBankDetails, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl,  List<InvoiceLine>? lines)  $default,) {final _that = this;
switch (_that) {
case _Generator():
return $default(_that.id,_that.customId,_that.name,_that.proforma,_that.paypal,_that.gopay,_that.taxDateAtEndOfLastMonth,_that.due,_that.subjectId,_that.numberFormatId,_that.note,_that.footerNote,_that.bankAccountId,_that.ibanVisibility,_that.tags,_that.orderNumber,_that.currency,_that.exchangeRate,_that.paymentMethod,_that.customPaymentMethod,_that.language,_that.transferredTaxLiability,_that.vatPriceMode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.legacyBankDetails,_that.htmlUrl,_that.url,_that.subjectUrl,_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String name,  bool? proforma,  bool? paypal,  bool? gopay, @JsonKey(name: 'tax_date_at_end_of_last_month')  bool? taxDateAtEndOfLastMonth,  int? due, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'number_format_id')  int? numberFormatId,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility,  List<String>? tags, @JsonKey(name: 'order_number')  String? orderNumber,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'legacy_bank_details')  LegacyBankDetails? legacyBankDetails, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl,  List<InvoiceLine>? lines)?  $default,) {final _that = this;
switch (_that) {
case _Generator() when $default != null:
return $default(_that.id,_that.customId,_that.name,_that.proforma,_that.paypal,_that.gopay,_that.taxDateAtEndOfLastMonth,_that.due,_that.subjectId,_that.numberFormatId,_that.note,_that.footerNote,_that.bankAccountId,_that.ibanVisibility,_that.tags,_that.orderNumber,_that.currency,_that.exchangeRate,_that.paymentMethod,_that.customPaymentMethod,_that.language,_that.transferredTaxLiability,_that.vatPriceMode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.legacyBankDetails,_that.htmlUrl,_that.url,_that.subjectUrl,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Generator implements Generator {
  const _Generator({this.id, @JsonKey(name: 'custom_id') this.customId, required this.name, this.proforma, this.paypal, this.gopay, @JsonKey(name: 'tax_date_at_end_of_last_month') this.taxDateAtEndOfLastMonth, this.due, @JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'number_format_id') this.numberFormatId, this.note, @JsonKey(name: 'footer_note') this.footerNote, @JsonKey(name: 'bank_account_id') this.bankAccountId, @JsonKey(name: 'iban_visibility') this.ibanVisibility, final  List<String>? tags, @JsonKey(name: 'order_number') this.orderNumber, this.currency, @JsonKey(name: 'exchange_rate') this.exchangeRate, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'custom_payment_method') this.customPaymentMethod, this.language, @JsonKey(name: 'transferred_tax_liability') this.transferredTaxLiability, @JsonKey(name: 'vat_price_mode') this.vatPriceMode, @JsonKey(name: 'round_total') this.roundTotal, this.subtotal, this.total, @JsonKey(name: 'native_subtotal') this.nativeSubtotal, @JsonKey(name: 'native_total') this.nativeTotal, @JsonKey(name: 'legacy_bank_details') this.legacyBankDetails, @JsonKey(name: 'html_url') this.htmlUrl, this.url, @JsonKey(name: 'subject_url') this.subjectUrl, final  List<InvoiceLine>? lines}): _tags = tags,_lines = lines;
  factory _Generator.fromJson(Map<String, dynamic> json) => _$GeneratorFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'custom_id') final  String? customId;
@override final  String name;
@override final  bool? proforma;
@override final  bool? paypal;
@override final  bool? gopay;
@override@JsonKey(name: 'tax_date_at_end_of_last_month') final  bool? taxDateAtEndOfLastMonth;
@override final  int? due;
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
@override@JsonKey(name: 'round_total') final  bool? roundTotal;
@override final  String? subtotal;
@override final  String? total;
@override@JsonKey(name: 'native_subtotal') final  String? nativeSubtotal;
@override@JsonKey(name: 'native_total') final  String? nativeTotal;
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


/// Create a copy of Generator
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratorCopyWith<_Generator> get copyWith => __$GeneratorCopyWithImpl<_Generator>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneratorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Generator&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.name, name) || other.name == name)&&(identical(other.proforma, proforma) || other.proforma == proforma)&&(identical(other.paypal, paypal) || other.paypal == paypal)&&(identical(other.gopay, gopay) || other.gopay == gopay)&&(identical(other.taxDateAtEndOfLastMonth, taxDateAtEndOfLastMonth) || other.taxDateAtEndOfLastMonth == taxDateAtEndOfLastMonth)&&(identical(other.due, due) || other.due == due)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.numberFormatId, numberFormatId) || other.numberFormatId == numberFormatId)&&(identical(other.note, note) || other.note == note)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.ibanVisibility, ibanVisibility) || other.ibanVisibility == ibanVisibility)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.customPaymentMethod, customPaymentMethod) || other.customPaymentMethod == customPaymentMethod)&&(identical(other.language, language) || other.language == language)&&(identical(other.transferredTaxLiability, transferredTaxLiability) || other.transferredTaxLiability == transferredTaxLiability)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.roundTotal, roundTotal) || other.roundTotal == roundTotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.nativeSubtotal, nativeSubtotal) || other.nativeSubtotal == nativeSubtotal)&&(identical(other.nativeTotal, nativeTotal) || other.nativeTotal == nativeTotal)&&(identical(other.legacyBankDetails, legacyBankDetails) || other.legacyBankDetails == legacyBankDetails)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.subjectUrl, subjectUrl) || other.subjectUrl == subjectUrl)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,name,proforma,paypal,gopay,taxDateAtEndOfLastMonth,due,subjectId,numberFormatId,note,footerNote,bankAccountId,ibanVisibility,const DeepCollectionEquality().hash(_tags),orderNumber,currency,exchangeRate,paymentMethod,customPaymentMethod,language,transferredTaxLiability,vatPriceMode,roundTotal,subtotal,total,nativeSubtotal,nativeTotal,legacyBankDetails,htmlUrl,url,subjectUrl,const DeepCollectionEquality().hash(_lines)]);

@override
String toString() {
  return 'Generator(id: $id, customId: $customId, name: $name, proforma: $proforma, paypal: $paypal, gopay: $gopay, taxDateAtEndOfLastMonth: $taxDateAtEndOfLastMonth, due: $due, subjectId: $subjectId, numberFormatId: $numberFormatId, note: $note, footerNote: $footerNote, bankAccountId: $bankAccountId, ibanVisibility: $ibanVisibility, tags: $tags, orderNumber: $orderNumber, currency: $currency, exchangeRate: $exchangeRate, paymentMethod: $paymentMethod, customPaymentMethod: $customPaymentMethod, language: $language, transferredTaxLiability: $transferredTaxLiability, vatPriceMode: $vatPriceMode, roundTotal: $roundTotal, subtotal: $subtotal, total: $total, nativeSubtotal: $nativeSubtotal, nativeTotal: $nativeTotal, legacyBankDetails: $legacyBankDetails, htmlUrl: $htmlUrl, url: $url, subjectUrl: $subjectUrl, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$GeneratorCopyWith<$Res> implements $GeneratorCopyWith<$Res> {
  factory _$GeneratorCopyWith(_Generator value, $Res Function(_Generator) _then) = __$GeneratorCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId, String name, bool? proforma, bool? paypal, bool? gopay,@JsonKey(name: 'tax_date_at_end_of_last_month') bool? taxDateAtEndOfLastMonth, int? due,@JsonKey(name: 'subject_id') int subjectId,@JsonKey(name: 'number_format_id') int? numberFormatId, String? note,@JsonKey(name: 'footer_note') String? footerNote,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'iban_visibility') IbanVisibility? ibanVisibility, List<String>? tags,@JsonKey(name: 'order_number') String? orderNumber, String? currency,@JsonKey(name: 'exchange_rate') String? exchangeRate,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'custom_payment_method') String? customPaymentMethod, DocumentLanguage? language,@JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,@JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,@JsonKey(name: 'round_total') bool? roundTotal, String? subtotal, String? total,@JsonKey(name: 'native_subtotal') String? nativeSubtotal,@JsonKey(name: 'native_total') String? nativeTotal,@JsonKey(name: 'legacy_bank_details') LegacyBankDetails? legacyBankDetails,@JsonKey(name: 'html_url') String? htmlUrl, String? url,@JsonKey(name: 'subject_url') String? subjectUrl, List<InvoiceLine>? lines
});


@override $LegacyBankDetailsCopyWith<$Res>? get legacyBankDetails;

}
/// @nodoc
class __$GeneratorCopyWithImpl<$Res>
    implements _$GeneratorCopyWith<$Res> {
  __$GeneratorCopyWithImpl(this._self, this._then);

  final _Generator _self;
  final $Res Function(_Generator) _then;

/// Create a copy of Generator
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customId = freezed,Object? name = null,Object? proforma = freezed,Object? paypal = freezed,Object? gopay = freezed,Object? taxDateAtEndOfLastMonth = freezed,Object? due = freezed,Object? subjectId = null,Object? numberFormatId = freezed,Object? note = freezed,Object? footerNote = freezed,Object? bankAccountId = freezed,Object? ibanVisibility = freezed,Object? tags = freezed,Object? orderNumber = freezed,Object? currency = freezed,Object? exchangeRate = freezed,Object? paymentMethod = freezed,Object? customPaymentMethod = freezed,Object? language = freezed,Object? transferredTaxLiability = freezed,Object? vatPriceMode = freezed,Object? roundTotal = freezed,Object? subtotal = freezed,Object? total = freezed,Object? nativeSubtotal = freezed,Object? nativeTotal = freezed,Object? legacyBankDetails = freezed,Object? htmlUrl = freezed,Object? url = freezed,Object? subjectUrl = freezed,Object? lines = freezed,}) {
  return _then(_Generator(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,proforma: freezed == proforma ? _self.proforma : proforma // ignore: cast_nullable_to_non_nullable
as bool?,paypal: freezed == paypal ? _self.paypal : paypal // ignore: cast_nullable_to_non_nullable
as bool?,gopay: freezed == gopay ? _self.gopay : gopay // ignore: cast_nullable_to_non_nullable
as bool?,taxDateAtEndOfLastMonth: freezed == taxDateAtEndOfLastMonth ? _self.taxDateAtEndOfLastMonth : taxDateAtEndOfLastMonth // ignore: cast_nullable_to_non_nullable
as bool?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
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
as VatPriceMode?,roundTotal: freezed == roundTotal ? _self.roundTotal : roundTotal // ignore: cast_nullable_to_non_nullable
as bool?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,nativeSubtotal: freezed == nativeSubtotal ? _self.nativeSubtotal : nativeSubtotal // ignore: cast_nullable_to_non_nullable
as String?,nativeTotal: freezed == nativeTotal ? _self.nativeTotal : nativeTotal // ignore: cast_nullable_to_non_nullable
as String?,legacyBankDetails: freezed == legacyBankDetails ? _self.legacyBankDetails : legacyBankDetails // ignore: cast_nullable_to_non_nullable
as LegacyBankDetails?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,subjectUrl: freezed == subjectUrl ? _self.subjectUrl : subjectUrl // ignore: cast_nullable_to_non_nullable
as String?,lines: freezed == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLine>?,
  ));
}

/// Create a copy of Generator
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
