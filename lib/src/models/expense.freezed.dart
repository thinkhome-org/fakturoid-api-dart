// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Expense {

 int? get id;@JsonKey(name: 'custom_id') String? get customId; String? get number;@JsonKey(name: 'original_number') String? get originalNumber;@JsonKey(name: 'variable_symbol') String? get variableSymbol;@JsonKey(name: 'supplier_name') String? get supplierName;@JsonKey(name: 'supplier_street') String? get supplierStreet;@JsonKey(name: 'supplier_city') String? get supplierCity;@JsonKey(name: 'supplier_zip') String? get supplierZip;@JsonKey(name: 'supplier_country') String? get supplierCountry;@JsonKey(name: 'supplier_registration_no') String? get supplierRegistrationNo;@JsonKey(name: 'supplier_vat_no') String? get supplierVatNo;@JsonKey(name: 'supplier_local_vat_no') String? get supplierLocalVatNo;@JsonKey(name: 'subject_id') int get subjectId;@JsonKey(name: 'subject_custom_id') String? get subjectCustomId; ExpenseStatus? get status;@JsonKey(name: 'document_type') ExpenseDocumentType? get documentType;@JsonKey(name: 'issued_on') String? get issuedOn;@JsonKey(name: 'taxable_fulfillment_due') String? get taxableFulfillmentDue;@JsonKey(name: 'received_on') String? get receivedOn;@JsonKey(name: 'due_on') String? get dueOn;@JsonKey(name: 'remind_due_date') bool? get remindDueDate;@JsonKey(name: 'paid_on') String? get paidOn;@JsonKey(name: 'locked_at') DateTime? get lockedAt; String? get description;@JsonKey(name: 'private_note') String? get privateNote; List<String>? get tags;@JsonKey(name: 'bank_account') String? get bankAccount; String? get iban;@JsonKey(name: 'swift_bic') String? get swiftBic;@JsonKey(name: 'payment_method') PaymentMethod? get paymentMethod;@JsonKey(name: 'custom_payment_method') String? get customPaymentMethod; String? get currency;@JsonKey(name: 'exchange_rate') String? get exchangeRate;@JsonKey(name: 'transferred_tax_liability') bool? get transferredTaxLiability;@JsonKey(name: 'vat_price_mode') VatPriceMode? get vatPriceMode;@JsonKey(name: 'supply_code') String? get supplyCode;@JsonKey(name: 'proportional_vat_deduction') int? get proportionalVatDeduction;@JsonKey(name: 'tax_deductible') bool? get taxDeductible; String? get subtotal; String? get total;@JsonKey(name: 'native_subtotal') String? get nativeSubtotal;@JsonKey(name: 'native_total') String? get nativeTotal; List<InvoiceLine>? get lines; List<InvoicePayment>? get payments;@JsonKey(name: 'html_url') String? get htmlUrl; String? get url;@JsonKey(name: 'subject_url') String? get subjectUrl;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of Expense
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseCopyWith<Expense> get copyWith => _$ExpenseCopyWithImpl<Expense>(this as Expense, _$identity);

  /// Serializes this Expense to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Expense&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.number, number) || other.number == number)&&(identical(other.originalNumber, originalNumber) || other.originalNumber == originalNumber)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.supplierName, supplierName) || other.supplierName == supplierName)&&(identical(other.supplierStreet, supplierStreet) || other.supplierStreet == supplierStreet)&&(identical(other.supplierCity, supplierCity) || other.supplierCity == supplierCity)&&(identical(other.supplierZip, supplierZip) || other.supplierZip == supplierZip)&&(identical(other.supplierCountry, supplierCountry) || other.supplierCountry == supplierCountry)&&(identical(other.supplierRegistrationNo, supplierRegistrationNo) || other.supplierRegistrationNo == supplierRegistrationNo)&&(identical(other.supplierVatNo, supplierVatNo) || other.supplierVatNo == supplierVatNo)&&(identical(other.supplierLocalVatNo, supplierLocalVatNo) || other.supplierLocalVatNo == supplierLocalVatNo)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectCustomId, subjectCustomId) || other.subjectCustomId == subjectCustomId)&&(identical(other.status, status) || other.status == status)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.issuedOn, issuedOn) || other.issuedOn == issuedOn)&&(identical(other.taxableFulfillmentDue, taxableFulfillmentDue) || other.taxableFulfillmentDue == taxableFulfillmentDue)&&(identical(other.receivedOn, receivedOn) || other.receivedOn == receivedOn)&&(identical(other.dueOn, dueOn) || other.dueOn == dueOn)&&(identical(other.remindDueDate, remindDueDate) || other.remindDueDate == remindDueDate)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.lockedAt, lockedAt) || other.lockedAt == lockedAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.customPaymentMethod, customPaymentMethod) || other.customPaymentMethod == customPaymentMethod)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.transferredTaxLiability, transferredTaxLiability) || other.transferredTaxLiability == transferredTaxLiability)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.supplyCode, supplyCode) || other.supplyCode == supplyCode)&&(identical(other.proportionalVatDeduction, proportionalVatDeduction) || other.proportionalVatDeduction == proportionalVatDeduction)&&(identical(other.taxDeductible, taxDeductible) || other.taxDeductible == taxDeductible)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.nativeSubtotal, nativeSubtotal) || other.nativeSubtotal == nativeSubtotal)&&(identical(other.nativeTotal, nativeTotal) || other.nativeTotal == nativeTotal)&&const DeepCollectionEquality().equals(other.lines, lines)&&const DeepCollectionEquality().equals(other.payments, payments)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.subjectUrl, subjectUrl) || other.subjectUrl == subjectUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,number,originalNumber,variableSymbol,supplierName,supplierStreet,supplierCity,supplierZip,supplierCountry,supplierRegistrationNo,supplierVatNo,supplierLocalVatNo,subjectId,subjectCustomId,status,documentType,issuedOn,taxableFulfillmentDue,receivedOn,dueOn,remindDueDate,paidOn,lockedAt,description,privateNote,const DeepCollectionEquality().hash(tags),bankAccount,iban,swiftBic,paymentMethod,customPaymentMethod,currency,exchangeRate,transferredTaxLiability,vatPriceMode,supplyCode,proportionalVatDeduction,taxDeductible,subtotal,total,nativeSubtotal,nativeTotal,const DeepCollectionEquality().hash(lines),const DeepCollectionEquality().hash(payments),htmlUrl,url,subjectUrl,createdAt,updatedAt]);

@override
String toString() {
  return 'Expense(id: $id, customId: $customId, number: $number, originalNumber: $originalNumber, variableSymbol: $variableSymbol, supplierName: $supplierName, supplierStreet: $supplierStreet, supplierCity: $supplierCity, supplierZip: $supplierZip, supplierCountry: $supplierCountry, supplierRegistrationNo: $supplierRegistrationNo, supplierVatNo: $supplierVatNo, supplierLocalVatNo: $supplierLocalVatNo, subjectId: $subjectId, subjectCustomId: $subjectCustomId, status: $status, documentType: $documentType, issuedOn: $issuedOn, taxableFulfillmentDue: $taxableFulfillmentDue, receivedOn: $receivedOn, dueOn: $dueOn, remindDueDate: $remindDueDate, paidOn: $paidOn, lockedAt: $lockedAt, description: $description, privateNote: $privateNote, tags: $tags, bankAccount: $bankAccount, iban: $iban, swiftBic: $swiftBic, paymentMethod: $paymentMethod, customPaymentMethod: $customPaymentMethod, currency: $currency, exchangeRate: $exchangeRate, transferredTaxLiability: $transferredTaxLiability, vatPriceMode: $vatPriceMode, supplyCode: $supplyCode, proportionalVatDeduction: $proportionalVatDeduction, taxDeductible: $taxDeductible, subtotal: $subtotal, total: $total, nativeSubtotal: $nativeSubtotal, nativeTotal: $nativeTotal, lines: $lines, payments: $payments, htmlUrl: $htmlUrl, url: $url, subjectUrl: $subjectUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ExpenseCopyWith<$Res>  {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) _then) = _$ExpenseCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId, String? number,@JsonKey(name: 'original_number') String? originalNumber,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'supplier_name') String? supplierName,@JsonKey(name: 'supplier_street') String? supplierStreet,@JsonKey(name: 'supplier_city') String? supplierCity,@JsonKey(name: 'supplier_zip') String? supplierZip,@JsonKey(name: 'supplier_country') String? supplierCountry,@JsonKey(name: 'supplier_registration_no') String? supplierRegistrationNo,@JsonKey(name: 'supplier_vat_no') String? supplierVatNo,@JsonKey(name: 'supplier_local_vat_no') String? supplierLocalVatNo,@JsonKey(name: 'subject_id') int subjectId,@JsonKey(name: 'subject_custom_id') String? subjectCustomId, ExpenseStatus? status,@JsonKey(name: 'document_type') ExpenseDocumentType? documentType,@JsonKey(name: 'issued_on') String? issuedOn,@JsonKey(name: 'taxable_fulfillment_due') String? taxableFulfillmentDue,@JsonKey(name: 'received_on') String? receivedOn,@JsonKey(name: 'due_on') String? dueOn,@JsonKey(name: 'remind_due_date') bool? remindDueDate,@JsonKey(name: 'paid_on') String? paidOn,@JsonKey(name: 'locked_at') DateTime? lockedAt, String? description,@JsonKey(name: 'private_note') String? privateNote, List<String>? tags,@JsonKey(name: 'bank_account') String? bankAccount, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'custom_payment_method') String? customPaymentMethod, String? currency,@JsonKey(name: 'exchange_rate') String? exchangeRate,@JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,@JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,@JsonKey(name: 'supply_code') String? supplyCode,@JsonKey(name: 'proportional_vat_deduction') int? proportionalVatDeduction,@JsonKey(name: 'tax_deductible') bool? taxDeductible, String? subtotal, String? total,@JsonKey(name: 'native_subtotal') String? nativeSubtotal,@JsonKey(name: 'native_total') String? nativeTotal, List<InvoiceLine>? lines, List<InvoicePayment>? payments,@JsonKey(name: 'html_url') String? htmlUrl, String? url,@JsonKey(name: 'subject_url') String? subjectUrl,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$ExpenseCopyWithImpl<$Res>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._self, this._then);

  final Expense _self;
  final $Res Function(Expense) _then;

/// Create a copy of Expense
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customId = freezed,Object? number = freezed,Object? originalNumber = freezed,Object? variableSymbol = freezed,Object? supplierName = freezed,Object? supplierStreet = freezed,Object? supplierCity = freezed,Object? supplierZip = freezed,Object? supplierCountry = freezed,Object? supplierRegistrationNo = freezed,Object? supplierVatNo = freezed,Object? supplierLocalVatNo = freezed,Object? subjectId = null,Object? subjectCustomId = freezed,Object? status = freezed,Object? documentType = freezed,Object? issuedOn = freezed,Object? taxableFulfillmentDue = freezed,Object? receivedOn = freezed,Object? dueOn = freezed,Object? remindDueDate = freezed,Object? paidOn = freezed,Object? lockedAt = freezed,Object? description = freezed,Object? privateNote = freezed,Object? tags = freezed,Object? bankAccount = freezed,Object? iban = freezed,Object? swiftBic = freezed,Object? paymentMethod = freezed,Object? customPaymentMethod = freezed,Object? currency = freezed,Object? exchangeRate = freezed,Object? transferredTaxLiability = freezed,Object? vatPriceMode = freezed,Object? supplyCode = freezed,Object? proportionalVatDeduction = freezed,Object? taxDeductible = freezed,Object? subtotal = freezed,Object? total = freezed,Object? nativeSubtotal = freezed,Object? nativeTotal = freezed,Object? lines = freezed,Object? payments = freezed,Object? htmlUrl = freezed,Object? url = freezed,Object? subjectUrl = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,originalNumber: freezed == originalNumber ? _self.originalNumber : originalNumber // ignore: cast_nullable_to_non_nullable
as String?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,supplierName: freezed == supplierName ? _self.supplierName : supplierName // ignore: cast_nullable_to_non_nullable
as String?,supplierStreet: freezed == supplierStreet ? _self.supplierStreet : supplierStreet // ignore: cast_nullable_to_non_nullable
as String?,supplierCity: freezed == supplierCity ? _self.supplierCity : supplierCity // ignore: cast_nullable_to_non_nullable
as String?,supplierZip: freezed == supplierZip ? _self.supplierZip : supplierZip // ignore: cast_nullable_to_non_nullable
as String?,supplierCountry: freezed == supplierCountry ? _self.supplierCountry : supplierCountry // ignore: cast_nullable_to_non_nullable
as String?,supplierRegistrationNo: freezed == supplierRegistrationNo ? _self.supplierRegistrationNo : supplierRegistrationNo // ignore: cast_nullable_to_non_nullable
as String?,supplierVatNo: freezed == supplierVatNo ? _self.supplierVatNo : supplierVatNo // ignore: cast_nullable_to_non_nullable
as String?,supplierLocalVatNo: freezed == supplierLocalVatNo ? _self.supplierLocalVatNo : supplierLocalVatNo // ignore: cast_nullable_to_non_nullable
as String?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,subjectCustomId: freezed == subjectCustomId ? _self.subjectCustomId : subjectCustomId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExpenseStatus?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as ExpenseDocumentType?,issuedOn: freezed == issuedOn ? _self.issuedOn : issuedOn // ignore: cast_nullable_to_non_nullable
as String?,taxableFulfillmentDue: freezed == taxableFulfillmentDue ? _self.taxableFulfillmentDue : taxableFulfillmentDue // ignore: cast_nullable_to_non_nullable
as String?,receivedOn: freezed == receivedOn ? _self.receivedOn : receivedOn // ignore: cast_nullable_to_non_nullable
as String?,dueOn: freezed == dueOn ? _self.dueOn : dueOn // ignore: cast_nullable_to_non_nullable
as String?,remindDueDate: freezed == remindDueDate ? _self.remindDueDate : remindDueDate // ignore: cast_nullable_to_non_nullable
as bool?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,lockedAt: freezed == lockedAt ? _self.lockedAt : lockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,customPaymentMethod: freezed == customPaymentMethod ? _self.customPaymentMethod : customPaymentMethod // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,exchangeRate: freezed == exchangeRate ? _self.exchangeRate : exchangeRate // ignore: cast_nullable_to_non_nullable
as String?,transferredTaxLiability: freezed == transferredTaxLiability ? _self.transferredTaxLiability : transferredTaxLiability // ignore: cast_nullable_to_non_nullable
as bool?,vatPriceMode: freezed == vatPriceMode ? _self.vatPriceMode : vatPriceMode // ignore: cast_nullable_to_non_nullable
as VatPriceMode?,supplyCode: freezed == supplyCode ? _self.supplyCode : supplyCode // ignore: cast_nullable_to_non_nullable
as String?,proportionalVatDeduction: freezed == proportionalVatDeduction ? _self.proportionalVatDeduction : proportionalVatDeduction // ignore: cast_nullable_to_non_nullable
as int?,taxDeductible: freezed == taxDeductible ? _self.taxDeductible : taxDeductible // ignore: cast_nullable_to_non_nullable
as bool?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,nativeSubtotal: freezed == nativeSubtotal ? _self.nativeSubtotal : nativeSubtotal // ignore: cast_nullable_to_non_nullable
as String?,nativeTotal: freezed == nativeTotal ? _self.nativeTotal : nativeTotal // ignore: cast_nullable_to_non_nullable
as String?,lines: freezed == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLine>?,payments: freezed == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<InvoicePayment>?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,subjectUrl: freezed == subjectUrl ? _self.subjectUrl : subjectUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Expense].
extension ExpensePatterns on Expense {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Expense value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Expense() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Expense value)  $default,){
final _that = this;
switch (_that) {
case _Expense():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Expense value)?  $default,){
final _that = this;
switch (_that) {
case _Expense() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String? number, @JsonKey(name: 'original_number')  String? originalNumber, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'supplier_name')  String? supplierName, @JsonKey(name: 'supplier_street')  String? supplierStreet, @JsonKey(name: 'supplier_city')  String? supplierCity, @JsonKey(name: 'supplier_zip')  String? supplierZip, @JsonKey(name: 'supplier_country')  String? supplierCountry, @JsonKey(name: 'supplier_registration_no')  String? supplierRegistrationNo, @JsonKey(name: 'supplier_vat_no')  String? supplierVatNo, @JsonKey(name: 'supplier_local_vat_no')  String? supplierLocalVatNo, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'subject_custom_id')  String? subjectCustomId,  ExpenseStatus? status, @JsonKey(name: 'document_type')  ExpenseDocumentType? documentType, @JsonKey(name: 'issued_on')  String? issuedOn, @JsonKey(name: 'taxable_fulfillment_due')  String? taxableFulfillmentDue, @JsonKey(name: 'received_on')  String? receivedOn, @JsonKey(name: 'due_on')  String? dueOn, @JsonKey(name: 'remind_due_date')  bool? remindDueDate, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'locked_at')  DateTime? lockedAt,  String? description, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'supply_code')  String? supplyCode, @JsonKey(name: 'proportional_vat_deduction')  int? proportionalVatDeduction, @JsonKey(name: 'tax_deductible')  bool? taxDeductible,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal,  List<InvoiceLine>? lines,  List<InvoicePayment>? payments, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Expense() when $default != null:
return $default(_that.id,_that.customId,_that.number,_that.originalNumber,_that.variableSymbol,_that.supplierName,_that.supplierStreet,_that.supplierCity,_that.supplierZip,_that.supplierCountry,_that.supplierRegistrationNo,_that.supplierVatNo,_that.supplierLocalVatNo,_that.subjectId,_that.subjectCustomId,_that.status,_that.documentType,_that.issuedOn,_that.taxableFulfillmentDue,_that.receivedOn,_that.dueOn,_that.remindDueDate,_that.paidOn,_that.lockedAt,_that.description,_that.privateNote,_that.tags,_that.bankAccount,_that.iban,_that.swiftBic,_that.paymentMethod,_that.customPaymentMethod,_that.currency,_that.exchangeRate,_that.transferredTaxLiability,_that.vatPriceMode,_that.supplyCode,_that.proportionalVatDeduction,_that.taxDeductible,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.lines,_that.payments,_that.htmlUrl,_that.url,_that.subjectUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String? number, @JsonKey(name: 'original_number')  String? originalNumber, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'supplier_name')  String? supplierName, @JsonKey(name: 'supplier_street')  String? supplierStreet, @JsonKey(name: 'supplier_city')  String? supplierCity, @JsonKey(name: 'supplier_zip')  String? supplierZip, @JsonKey(name: 'supplier_country')  String? supplierCountry, @JsonKey(name: 'supplier_registration_no')  String? supplierRegistrationNo, @JsonKey(name: 'supplier_vat_no')  String? supplierVatNo, @JsonKey(name: 'supplier_local_vat_no')  String? supplierLocalVatNo, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'subject_custom_id')  String? subjectCustomId,  ExpenseStatus? status, @JsonKey(name: 'document_type')  ExpenseDocumentType? documentType, @JsonKey(name: 'issued_on')  String? issuedOn, @JsonKey(name: 'taxable_fulfillment_due')  String? taxableFulfillmentDue, @JsonKey(name: 'received_on')  String? receivedOn, @JsonKey(name: 'due_on')  String? dueOn, @JsonKey(name: 'remind_due_date')  bool? remindDueDate, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'locked_at')  DateTime? lockedAt,  String? description, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'supply_code')  String? supplyCode, @JsonKey(name: 'proportional_vat_deduction')  int? proportionalVatDeduction, @JsonKey(name: 'tax_deductible')  bool? taxDeductible,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal,  List<InvoiceLine>? lines,  List<InvoicePayment>? payments, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Expense():
return $default(_that.id,_that.customId,_that.number,_that.originalNumber,_that.variableSymbol,_that.supplierName,_that.supplierStreet,_that.supplierCity,_that.supplierZip,_that.supplierCountry,_that.supplierRegistrationNo,_that.supplierVatNo,_that.supplierLocalVatNo,_that.subjectId,_that.subjectCustomId,_that.status,_that.documentType,_that.issuedOn,_that.taxableFulfillmentDue,_that.receivedOn,_that.dueOn,_that.remindDueDate,_that.paidOn,_that.lockedAt,_that.description,_that.privateNote,_that.tags,_that.bankAccount,_that.iban,_that.swiftBic,_that.paymentMethod,_that.customPaymentMethod,_that.currency,_that.exchangeRate,_that.transferredTaxLiability,_that.vatPriceMode,_that.supplyCode,_that.proportionalVatDeduction,_that.taxDeductible,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.lines,_that.payments,_that.htmlUrl,_that.url,_that.subjectUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'custom_id')  String? customId,  String? number, @JsonKey(name: 'original_number')  String? originalNumber, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'supplier_name')  String? supplierName, @JsonKey(name: 'supplier_street')  String? supplierStreet, @JsonKey(name: 'supplier_city')  String? supplierCity, @JsonKey(name: 'supplier_zip')  String? supplierZip, @JsonKey(name: 'supplier_country')  String? supplierCountry, @JsonKey(name: 'supplier_registration_no')  String? supplierRegistrationNo, @JsonKey(name: 'supplier_vat_no')  String? supplierVatNo, @JsonKey(name: 'supplier_local_vat_no')  String? supplierLocalVatNo, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'subject_custom_id')  String? subjectCustomId,  ExpenseStatus? status, @JsonKey(name: 'document_type')  ExpenseDocumentType? documentType, @JsonKey(name: 'issued_on')  String? issuedOn, @JsonKey(name: 'taxable_fulfillment_due')  String? taxableFulfillmentDue, @JsonKey(name: 'received_on')  String? receivedOn, @JsonKey(name: 'due_on')  String? dueOn, @JsonKey(name: 'remind_due_date')  bool? remindDueDate, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'locked_at')  DateTime? lockedAt,  String? description, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'supply_code')  String? supplyCode, @JsonKey(name: 'proportional_vat_deduction')  int? proportionalVatDeduction, @JsonKey(name: 'tax_deductible')  bool? taxDeductible,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal,  List<InvoiceLine>? lines,  List<InvoicePayment>? payments, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'subject_url')  String? subjectUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Expense() when $default != null:
return $default(_that.id,_that.customId,_that.number,_that.originalNumber,_that.variableSymbol,_that.supplierName,_that.supplierStreet,_that.supplierCity,_that.supplierZip,_that.supplierCountry,_that.supplierRegistrationNo,_that.supplierVatNo,_that.supplierLocalVatNo,_that.subjectId,_that.subjectCustomId,_that.status,_that.documentType,_that.issuedOn,_that.taxableFulfillmentDue,_that.receivedOn,_that.dueOn,_that.remindDueDate,_that.paidOn,_that.lockedAt,_that.description,_that.privateNote,_that.tags,_that.bankAccount,_that.iban,_that.swiftBic,_that.paymentMethod,_that.customPaymentMethod,_that.currency,_that.exchangeRate,_that.transferredTaxLiability,_that.vatPriceMode,_that.supplyCode,_that.proportionalVatDeduction,_that.taxDeductible,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.lines,_that.payments,_that.htmlUrl,_that.url,_that.subjectUrl,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Expense implements Expense {
  const _Expense({this.id, @JsonKey(name: 'custom_id') this.customId, this.number, @JsonKey(name: 'original_number') this.originalNumber, @JsonKey(name: 'variable_symbol') this.variableSymbol, @JsonKey(name: 'supplier_name') this.supplierName, @JsonKey(name: 'supplier_street') this.supplierStreet, @JsonKey(name: 'supplier_city') this.supplierCity, @JsonKey(name: 'supplier_zip') this.supplierZip, @JsonKey(name: 'supplier_country') this.supplierCountry, @JsonKey(name: 'supplier_registration_no') this.supplierRegistrationNo, @JsonKey(name: 'supplier_vat_no') this.supplierVatNo, @JsonKey(name: 'supplier_local_vat_no') this.supplierLocalVatNo, @JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'subject_custom_id') this.subjectCustomId, this.status, @JsonKey(name: 'document_type') this.documentType, @JsonKey(name: 'issued_on') this.issuedOn, @JsonKey(name: 'taxable_fulfillment_due') this.taxableFulfillmentDue, @JsonKey(name: 'received_on') this.receivedOn, @JsonKey(name: 'due_on') this.dueOn, @JsonKey(name: 'remind_due_date') this.remindDueDate, @JsonKey(name: 'paid_on') this.paidOn, @JsonKey(name: 'locked_at') this.lockedAt, this.description, @JsonKey(name: 'private_note') this.privateNote, final  List<String>? tags, @JsonKey(name: 'bank_account') this.bankAccount, this.iban, @JsonKey(name: 'swift_bic') this.swiftBic, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'custom_payment_method') this.customPaymentMethod, this.currency, @JsonKey(name: 'exchange_rate') this.exchangeRate, @JsonKey(name: 'transferred_tax_liability') this.transferredTaxLiability, @JsonKey(name: 'vat_price_mode') this.vatPriceMode, @JsonKey(name: 'supply_code') this.supplyCode, @JsonKey(name: 'proportional_vat_deduction') this.proportionalVatDeduction, @JsonKey(name: 'tax_deductible') this.taxDeductible, this.subtotal, this.total, @JsonKey(name: 'native_subtotal') this.nativeSubtotal, @JsonKey(name: 'native_total') this.nativeTotal, final  List<InvoiceLine>? lines, final  List<InvoicePayment>? payments, @JsonKey(name: 'html_url') this.htmlUrl, this.url, @JsonKey(name: 'subject_url') this.subjectUrl, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _tags = tags,_lines = lines,_payments = payments;
  factory _Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'custom_id') final  String? customId;
@override final  String? number;
@override@JsonKey(name: 'original_number') final  String? originalNumber;
@override@JsonKey(name: 'variable_symbol') final  String? variableSymbol;
@override@JsonKey(name: 'supplier_name') final  String? supplierName;
@override@JsonKey(name: 'supplier_street') final  String? supplierStreet;
@override@JsonKey(name: 'supplier_city') final  String? supplierCity;
@override@JsonKey(name: 'supplier_zip') final  String? supplierZip;
@override@JsonKey(name: 'supplier_country') final  String? supplierCountry;
@override@JsonKey(name: 'supplier_registration_no') final  String? supplierRegistrationNo;
@override@JsonKey(name: 'supplier_vat_no') final  String? supplierVatNo;
@override@JsonKey(name: 'supplier_local_vat_no') final  String? supplierLocalVatNo;
@override@JsonKey(name: 'subject_id') final  int subjectId;
@override@JsonKey(name: 'subject_custom_id') final  String? subjectCustomId;
@override final  ExpenseStatus? status;
@override@JsonKey(name: 'document_type') final  ExpenseDocumentType? documentType;
@override@JsonKey(name: 'issued_on') final  String? issuedOn;
@override@JsonKey(name: 'taxable_fulfillment_due') final  String? taxableFulfillmentDue;
@override@JsonKey(name: 'received_on') final  String? receivedOn;
@override@JsonKey(name: 'due_on') final  String? dueOn;
@override@JsonKey(name: 'remind_due_date') final  bool? remindDueDate;
@override@JsonKey(name: 'paid_on') final  String? paidOn;
@override@JsonKey(name: 'locked_at') final  DateTime? lockedAt;
@override final  String? description;
@override@JsonKey(name: 'private_note') final  String? privateNote;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'bank_account') final  String? bankAccount;
@override final  String? iban;
@override@JsonKey(name: 'swift_bic') final  String? swiftBic;
@override@JsonKey(name: 'payment_method') final  PaymentMethod? paymentMethod;
@override@JsonKey(name: 'custom_payment_method') final  String? customPaymentMethod;
@override final  String? currency;
@override@JsonKey(name: 'exchange_rate') final  String? exchangeRate;
@override@JsonKey(name: 'transferred_tax_liability') final  bool? transferredTaxLiability;
@override@JsonKey(name: 'vat_price_mode') final  VatPriceMode? vatPriceMode;
@override@JsonKey(name: 'supply_code') final  String? supplyCode;
@override@JsonKey(name: 'proportional_vat_deduction') final  int? proportionalVatDeduction;
@override@JsonKey(name: 'tax_deductible') final  bool? taxDeductible;
@override final  String? subtotal;
@override final  String? total;
@override@JsonKey(name: 'native_subtotal') final  String? nativeSubtotal;
@override@JsonKey(name: 'native_total') final  String? nativeTotal;
 final  List<InvoiceLine>? _lines;
@override List<InvoiceLine>? get lines {
  final value = _lines;
  if (value == null) return null;
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<InvoicePayment>? _payments;
@override List<InvoicePayment>? get payments {
  final value = _payments;
  if (value == null) return null;
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'html_url') final  String? htmlUrl;
@override final  String? url;
@override@JsonKey(name: 'subject_url') final  String? subjectUrl;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of Expense
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseCopyWith<_Expense> get copyWith => __$ExpenseCopyWithImpl<_Expense>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpenseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Expense&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.number, number) || other.number == number)&&(identical(other.originalNumber, originalNumber) || other.originalNumber == originalNumber)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.supplierName, supplierName) || other.supplierName == supplierName)&&(identical(other.supplierStreet, supplierStreet) || other.supplierStreet == supplierStreet)&&(identical(other.supplierCity, supplierCity) || other.supplierCity == supplierCity)&&(identical(other.supplierZip, supplierZip) || other.supplierZip == supplierZip)&&(identical(other.supplierCountry, supplierCountry) || other.supplierCountry == supplierCountry)&&(identical(other.supplierRegistrationNo, supplierRegistrationNo) || other.supplierRegistrationNo == supplierRegistrationNo)&&(identical(other.supplierVatNo, supplierVatNo) || other.supplierVatNo == supplierVatNo)&&(identical(other.supplierLocalVatNo, supplierLocalVatNo) || other.supplierLocalVatNo == supplierLocalVatNo)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectCustomId, subjectCustomId) || other.subjectCustomId == subjectCustomId)&&(identical(other.status, status) || other.status == status)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.issuedOn, issuedOn) || other.issuedOn == issuedOn)&&(identical(other.taxableFulfillmentDue, taxableFulfillmentDue) || other.taxableFulfillmentDue == taxableFulfillmentDue)&&(identical(other.receivedOn, receivedOn) || other.receivedOn == receivedOn)&&(identical(other.dueOn, dueOn) || other.dueOn == dueOn)&&(identical(other.remindDueDate, remindDueDate) || other.remindDueDate == remindDueDate)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.lockedAt, lockedAt) || other.lockedAt == lockedAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.customPaymentMethod, customPaymentMethod) || other.customPaymentMethod == customPaymentMethod)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.transferredTaxLiability, transferredTaxLiability) || other.transferredTaxLiability == transferredTaxLiability)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.supplyCode, supplyCode) || other.supplyCode == supplyCode)&&(identical(other.proportionalVatDeduction, proportionalVatDeduction) || other.proportionalVatDeduction == proportionalVatDeduction)&&(identical(other.taxDeductible, taxDeductible) || other.taxDeductible == taxDeductible)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.nativeSubtotal, nativeSubtotal) || other.nativeSubtotal == nativeSubtotal)&&(identical(other.nativeTotal, nativeTotal) || other.nativeTotal == nativeTotal)&&const DeepCollectionEquality().equals(other._lines, _lines)&&const DeepCollectionEquality().equals(other._payments, _payments)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.subjectUrl, subjectUrl) || other.subjectUrl == subjectUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,number,originalNumber,variableSymbol,supplierName,supplierStreet,supplierCity,supplierZip,supplierCountry,supplierRegistrationNo,supplierVatNo,supplierLocalVatNo,subjectId,subjectCustomId,status,documentType,issuedOn,taxableFulfillmentDue,receivedOn,dueOn,remindDueDate,paidOn,lockedAt,description,privateNote,const DeepCollectionEquality().hash(_tags),bankAccount,iban,swiftBic,paymentMethod,customPaymentMethod,currency,exchangeRate,transferredTaxLiability,vatPriceMode,supplyCode,proportionalVatDeduction,taxDeductible,subtotal,total,nativeSubtotal,nativeTotal,const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_payments),htmlUrl,url,subjectUrl,createdAt,updatedAt]);

@override
String toString() {
  return 'Expense(id: $id, customId: $customId, number: $number, originalNumber: $originalNumber, variableSymbol: $variableSymbol, supplierName: $supplierName, supplierStreet: $supplierStreet, supplierCity: $supplierCity, supplierZip: $supplierZip, supplierCountry: $supplierCountry, supplierRegistrationNo: $supplierRegistrationNo, supplierVatNo: $supplierVatNo, supplierLocalVatNo: $supplierLocalVatNo, subjectId: $subjectId, subjectCustomId: $subjectCustomId, status: $status, documentType: $documentType, issuedOn: $issuedOn, taxableFulfillmentDue: $taxableFulfillmentDue, receivedOn: $receivedOn, dueOn: $dueOn, remindDueDate: $remindDueDate, paidOn: $paidOn, lockedAt: $lockedAt, description: $description, privateNote: $privateNote, tags: $tags, bankAccount: $bankAccount, iban: $iban, swiftBic: $swiftBic, paymentMethod: $paymentMethod, customPaymentMethod: $customPaymentMethod, currency: $currency, exchangeRate: $exchangeRate, transferredTaxLiability: $transferredTaxLiability, vatPriceMode: $vatPriceMode, supplyCode: $supplyCode, proportionalVatDeduction: $proportionalVatDeduction, taxDeductible: $taxDeductible, subtotal: $subtotal, total: $total, nativeSubtotal: $nativeSubtotal, nativeTotal: $nativeTotal, lines: $lines, payments: $payments, htmlUrl: $htmlUrl, url: $url, subjectUrl: $subjectUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ExpenseCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$ExpenseCopyWith(_Expense value, $Res Function(_Expense) _then) = __$ExpenseCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId, String? number,@JsonKey(name: 'original_number') String? originalNumber,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'supplier_name') String? supplierName,@JsonKey(name: 'supplier_street') String? supplierStreet,@JsonKey(name: 'supplier_city') String? supplierCity,@JsonKey(name: 'supplier_zip') String? supplierZip,@JsonKey(name: 'supplier_country') String? supplierCountry,@JsonKey(name: 'supplier_registration_no') String? supplierRegistrationNo,@JsonKey(name: 'supplier_vat_no') String? supplierVatNo,@JsonKey(name: 'supplier_local_vat_no') String? supplierLocalVatNo,@JsonKey(name: 'subject_id') int subjectId,@JsonKey(name: 'subject_custom_id') String? subjectCustomId, ExpenseStatus? status,@JsonKey(name: 'document_type') ExpenseDocumentType? documentType,@JsonKey(name: 'issued_on') String? issuedOn,@JsonKey(name: 'taxable_fulfillment_due') String? taxableFulfillmentDue,@JsonKey(name: 'received_on') String? receivedOn,@JsonKey(name: 'due_on') String? dueOn,@JsonKey(name: 'remind_due_date') bool? remindDueDate,@JsonKey(name: 'paid_on') String? paidOn,@JsonKey(name: 'locked_at') DateTime? lockedAt, String? description,@JsonKey(name: 'private_note') String? privateNote, List<String>? tags,@JsonKey(name: 'bank_account') String? bankAccount, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'custom_payment_method') String? customPaymentMethod, String? currency,@JsonKey(name: 'exchange_rate') String? exchangeRate,@JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,@JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,@JsonKey(name: 'supply_code') String? supplyCode,@JsonKey(name: 'proportional_vat_deduction') int? proportionalVatDeduction,@JsonKey(name: 'tax_deductible') bool? taxDeductible, String? subtotal, String? total,@JsonKey(name: 'native_subtotal') String? nativeSubtotal,@JsonKey(name: 'native_total') String? nativeTotal, List<InvoiceLine>? lines, List<InvoicePayment>? payments,@JsonKey(name: 'html_url') String? htmlUrl, String? url,@JsonKey(name: 'subject_url') String? subjectUrl,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$ExpenseCopyWithImpl<$Res>
    implements _$ExpenseCopyWith<$Res> {
  __$ExpenseCopyWithImpl(this._self, this._then);

  final _Expense _self;
  final $Res Function(_Expense) _then;

/// Create a copy of Expense
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customId = freezed,Object? number = freezed,Object? originalNumber = freezed,Object? variableSymbol = freezed,Object? supplierName = freezed,Object? supplierStreet = freezed,Object? supplierCity = freezed,Object? supplierZip = freezed,Object? supplierCountry = freezed,Object? supplierRegistrationNo = freezed,Object? supplierVatNo = freezed,Object? supplierLocalVatNo = freezed,Object? subjectId = null,Object? subjectCustomId = freezed,Object? status = freezed,Object? documentType = freezed,Object? issuedOn = freezed,Object? taxableFulfillmentDue = freezed,Object? receivedOn = freezed,Object? dueOn = freezed,Object? remindDueDate = freezed,Object? paidOn = freezed,Object? lockedAt = freezed,Object? description = freezed,Object? privateNote = freezed,Object? tags = freezed,Object? bankAccount = freezed,Object? iban = freezed,Object? swiftBic = freezed,Object? paymentMethod = freezed,Object? customPaymentMethod = freezed,Object? currency = freezed,Object? exchangeRate = freezed,Object? transferredTaxLiability = freezed,Object? vatPriceMode = freezed,Object? supplyCode = freezed,Object? proportionalVatDeduction = freezed,Object? taxDeductible = freezed,Object? subtotal = freezed,Object? total = freezed,Object? nativeSubtotal = freezed,Object? nativeTotal = freezed,Object? lines = freezed,Object? payments = freezed,Object? htmlUrl = freezed,Object? url = freezed,Object? subjectUrl = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Expense(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,originalNumber: freezed == originalNumber ? _self.originalNumber : originalNumber // ignore: cast_nullable_to_non_nullable
as String?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,supplierName: freezed == supplierName ? _self.supplierName : supplierName // ignore: cast_nullable_to_non_nullable
as String?,supplierStreet: freezed == supplierStreet ? _self.supplierStreet : supplierStreet // ignore: cast_nullable_to_non_nullable
as String?,supplierCity: freezed == supplierCity ? _self.supplierCity : supplierCity // ignore: cast_nullable_to_non_nullable
as String?,supplierZip: freezed == supplierZip ? _self.supplierZip : supplierZip // ignore: cast_nullable_to_non_nullable
as String?,supplierCountry: freezed == supplierCountry ? _self.supplierCountry : supplierCountry // ignore: cast_nullable_to_non_nullable
as String?,supplierRegistrationNo: freezed == supplierRegistrationNo ? _self.supplierRegistrationNo : supplierRegistrationNo // ignore: cast_nullable_to_non_nullable
as String?,supplierVatNo: freezed == supplierVatNo ? _self.supplierVatNo : supplierVatNo // ignore: cast_nullable_to_non_nullable
as String?,supplierLocalVatNo: freezed == supplierLocalVatNo ? _self.supplierLocalVatNo : supplierLocalVatNo // ignore: cast_nullable_to_non_nullable
as String?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,subjectCustomId: freezed == subjectCustomId ? _self.subjectCustomId : subjectCustomId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExpenseStatus?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as ExpenseDocumentType?,issuedOn: freezed == issuedOn ? _self.issuedOn : issuedOn // ignore: cast_nullable_to_non_nullable
as String?,taxableFulfillmentDue: freezed == taxableFulfillmentDue ? _self.taxableFulfillmentDue : taxableFulfillmentDue // ignore: cast_nullable_to_non_nullable
as String?,receivedOn: freezed == receivedOn ? _self.receivedOn : receivedOn // ignore: cast_nullable_to_non_nullable
as String?,dueOn: freezed == dueOn ? _self.dueOn : dueOn // ignore: cast_nullable_to_non_nullable
as String?,remindDueDate: freezed == remindDueDate ? _self.remindDueDate : remindDueDate // ignore: cast_nullable_to_non_nullable
as bool?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,lockedAt: freezed == lockedAt ? _self.lockedAt : lockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,customPaymentMethod: freezed == customPaymentMethod ? _self.customPaymentMethod : customPaymentMethod // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,exchangeRate: freezed == exchangeRate ? _self.exchangeRate : exchangeRate // ignore: cast_nullable_to_non_nullable
as String?,transferredTaxLiability: freezed == transferredTaxLiability ? _self.transferredTaxLiability : transferredTaxLiability // ignore: cast_nullable_to_non_nullable
as bool?,vatPriceMode: freezed == vatPriceMode ? _self.vatPriceMode : vatPriceMode // ignore: cast_nullable_to_non_nullable
as VatPriceMode?,supplyCode: freezed == supplyCode ? _self.supplyCode : supplyCode // ignore: cast_nullable_to_non_nullable
as String?,proportionalVatDeduction: freezed == proportionalVatDeduction ? _self.proportionalVatDeduction : proportionalVatDeduction // ignore: cast_nullable_to_non_nullable
as int?,taxDeductible: freezed == taxDeductible ? _self.taxDeductible : taxDeductible // ignore: cast_nullable_to_non_nullable
as bool?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,nativeSubtotal: freezed == nativeSubtotal ? _self.nativeSubtotal : nativeSubtotal // ignore: cast_nullable_to_non_nullable
as String?,nativeTotal: freezed == nativeTotal ? _self.nativeTotal : nativeTotal // ignore: cast_nullable_to_non_nullable
as String?,lines: freezed == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLine>?,payments: freezed == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<InvoicePayment>?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,subjectUrl: freezed == subjectUrl ? _self.subjectUrl : subjectUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
