// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Account {

 String? get subdomain; String? get plan;@JsonKey(name: 'plan_price') int? get planPrice;@JsonKey(name: 'plan_paid_users') int? get planPaidUsers;@JsonKey(name: 'invoice_email') String? get invoiceEmail; String? get phone; String? get web; String? get name;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'registration_no') String? get registrationNo;@JsonKey(name: 'vat_no') String? get vatNo;@JsonKey(name: 'local_vat_no') String? get localVatNo;@JsonKey(name: 'vat_mode') AccountVatMode? get vatMode;@JsonKey(name: 'vat_price_mode') String? get vatPriceMode; String? get street; String? get city; String? get zip; String? get country; String? get currency;@JsonKey(name: 'unit_name') String? get unitName;@JsonKey(name: 'vat_rate') int? get vatRate;@JsonKey(name: 'displayed_note') String? get displayedNote;@JsonKey(name: 'invoice_note') String? get invoiceNote; int? get due;@JsonKey(name: 'invoice_language') String? get invoiceLanguage;@JsonKey(name: 'invoice_payment_method') String? get invoicePaymentMethod;@JsonKey(name: 'invoice_proforma') bool? get invoiceProforma;@JsonKey(name: 'invoice_hide_bank_account_for_payments') List<String>? get invoiceHideBankAccountForPayments;@JsonKey(name: 'fixed_exchange_rate') bool? get fixedExchangeRate;@JsonKey(name: 'invoice_selfbilling') bool? get invoiceSelfbilling;@JsonKey(name: 'default_estimate_type') String? get defaultEstimateType;@JsonKey(name: 'send_overdue_email') bool? get sendOverdueEmail;@JsonKey(name: 'overdue_email_days') int? get overdueEmailDays;@JsonKey(name: 'send_repeated_reminders') bool? get sendRepeatedReminders;@JsonKey(name: 'send_invoice_from_proforma_email') bool? get sendInvoiceFromProformaEmail;@JsonKey(name: 'send_thank_you_email') bool? get sendThankYouEmail;@JsonKey(name: 'invoice_paypal') bool? get invoicePaypal;@JsonKey(name: 'invoice_gopay') bool? get invoiceGopay;@JsonKey(name: 'digitoo_enabled') bool? get digitooEnabled;@JsonKey(name: 'digitoo_auto_processing_enabled') bool? get digitooAutoProcessingEnabled;@JsonKey(name: 'digitoo_remaining_extractions') int? get digitooRemainingExtractions;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountCopyWith<Account> get copyWith => _$AccountCopyWithImpl<Account>(this as Account, _$identity);

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Account&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.planPrice, planPrice) || other.planPrice == planPrice)&&(identical(other.planPaidUsers, planPaidUsers) || other.planPaidUsers == planPaidUsers)&&(identical(other.invoiceEmail, invoiceEmail) || other.invoiceEmail == invoiceEmail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.web, web) || other.web == web)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.registrationNo, registrationNo) || other.registrationNo == registrationNo)&&(identical(other.vatNo, vatNo) || other.vatNo == vatNo)&&(identical(other.localVatNo, localVatNo) || other.localVatNo == localVatNo)&&(identical(other.vatMode, vatMode) || other.vatMode == vatMode)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.country, country) || other.country == country)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.displayedNote, displayedNote) || other.displayedNote == displayedNote)&&(identical(other.invoiceNote, invoiceNote) || other.invoiceNote == invoiceNote)&&(identical(other.due, due) || other.due == due)&&(identical(other.invoiceLanguage, invoiceLanguage) || other.invoiceLanguage == invoiceLanguage)&&(identical(other.invoicePaymentMethod, invoicePaymentMethod) || other.invoicePaymentMethod == invoicePaymentMethod)&&(identical(other.invoiceProforma, invoiceProforma) || other.invoiceProforma == invoiceProforma)&&const DeepCollectionEquality().equals(other.invoiceHideBankAccountForPayments, invoiceHideBankAccountForPayments)&&(identical(other.fixedExchangeRate, fixedExchangeRate) || other.fixedExchangeRate == fixedExchangeRate)&&(identical(other.invoiceSelfbilling, invoiceSelfbilling) || other.invoiceSelfbilling == invoiceSelfbilling)&&(identical(other.defaultEstimateType, defaultEstimateType) || other.defaultEstimateType == defaultEstimateType)&&(identical(other.sendOverdueEmail, sendOverdueEmail) || other.sendOverdueEmail == sendOverdueEmail)&&(identical(other.overdueEmailDays, overdueEmailDays) || other.overdueEmailDays == overdueEmailDays)&&(identical(other.sendRepeatedReminders, sendRepeatedReminders) || other.sendRepeatedReminders == sendRepeatedReminders)&&(identical(other.sendInvoiceFromProformaEmail, sendInvoiceFromProformaEmail) || other.sendInvoiceFromProformaEmail == sendInvoiceFromProformaEmail)&&(identical(other.sendThankYouEmail, sendThankYouEmail) || other.sendThankYouEmail == sendThankYouEmail)&&(identical(other.invoicePaypal, invoicePaypal) || other.invoicePaypal == invoicePaypal)&&(identical(other.invoiceGopay, invoiceGopay) || other.invoiceGopay == invoiceGopay)&&(identical(other.digitooEnabled, digitooEnabled) || other.digitooEnabled == digitooEnabled)&&(identical(other.digitooAutoProcessingEnabled, digitooAutoProcessingEnabled) || other.digitooAutoProcessingEnabled == digitooAutoProcessingEnabled)&&(identical(other.digitooRemainingExtractions, digitooRemainingExtractions) || other.digitooRemainingExtractions == digitooRemainingExtractions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,subdomain,plan,planPrice,planPaidUsers,invoiceEmail,phone,web,name,fullName,registrationNo,vatNo,localVatNo,vatMode,vatPriceMode,street,city,zip,country,currency,unitName,vatRate,displayedNote,invoiceNote,due,invoiceLanguage,invoicePaymentMethod,invoiceProforma,const DeepCollectionEquality().hash(invoiceHideBankAccountForPayments),fixedExchangeRate,invoiceSelfbilling,defaultEstimateType,sendOverdueEmail,overdueEmailDays,sendRepeatedReminders,sendInvoiceFromProformaEmail,sendThankYouEmail,invoicePaypal,invoiceGopay,digitooEnabled,digitooAutoProcessingEnabled,digitooRemainingExtractions,createdAt,updatedAt]);

@override
String toString() {
  return 'Account(subdomain: $subdomain, plan: $plan, planPrice: $planPrice, planPaidUsers: $planPaidUsers, invoiceEmail: $invoiceEmail, phone: $phone, web: $web, name: $name, fullName: $fullName, registrationNo: $registrationNo, vatNo: $vatNo, localVatNo: $localVatNo, vatMode: $vatMode, vatPriceMode: $vatPriceMode, street: $street, city: $city, zip: $zip, country: $country, currency: $currency, unitName: $unitName, vatRate: $vatRate, displayedNote: $displayedNote, invoiceNote: $invoiceNote, due: $due, invoiceLanguage: $invoiceLanguage, invoicePaymentMethod: $invoicePaymentMethod, invoiceProforma: $invoiceProforma, invoiceHideBankAccountForPayments: $invoiceHideBankAccountForPayments, fixedExchangeRate: $fixedExchangeRate, invoiceSelfbilling: $invoiceSelfbilling, defaultEstimateType: $defaultEstimateType, sendOverdueEmail: $sendOverdueEmail, overdueEmailDays: $overdueEmailDays, sendRepeatedReminders: $sendRepeatedReminders, sendInvoiceFromProformaEmail: $sendInvoiceFromProformaEmail, sendThankYouEmail: $sendThankYouEmail, invoicePaypal: $invoicePaypal, invoiceGopay: $invoiceGopay, digitooEnabled: $digitooEnabled, digitooAutoProcessingEnabled: $digitooAutoProcessingEnabled, digitooRemainingExtractions: $digitooRemainingExtractions, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AccountCopyWith<$Res>  {
  factory $AccountCopyWith(Account value, $Res Function(Account) _then) = _$AccountCopyWithImpl;
@useResult
$Res call({
 String? subdomain, String? plan,@JsonKey(name: 'plan_price') int? planPrice,@JsonKey(name: 'plan_paid_users') int? planPaidUsers,@JsonKey(name: 'invoice_email') String? invoiceEmail, String? phone, String? web, String? name,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'registration_no') String? registrationNo,@JsonKey(name: 'vat_no') String? vatNo,@JsonKey(name: 'local_vat_no') String? localVatNo,@JsonKey(name: 'vat_mode') AccountVatMode? vatMode,@JsonKey(name: 'vat_price_mode') String? vatPriceMode, String? street, String? city, String? zip, String? country, String? currency,@JsonKey(name: 'unit_name') String? unitName,@JsonKey(name: 'vat_rate') int? vatRate,@JsonKey(name: 'displayed_note') String? displayedNote,@JsonKey(name: 'invoice_note') String? invoiceNote, int? due,@JsonKey(name: 'invoice_language') String? invoiceLanguage,@JsonKey(name: 'invoice_payment_method') String? invoicePaymentMethod,@JsonKey(name: 'invoice_proforma') bool? invoiceProforma,@JsonKey(name: 'invoice_hide_bank_account_for_payments') List<String>? invoiceHideBankAccountForPayments,@JsonKey(name: 'fixed_exchange_rate') bool? fixedExchangeRate,@JsonKey(name: 'invoice_selfbilling') bool? invoiceSelfbilling,@JsonKey(name: 'default_estimate_type') String? defaultEstimateType,@JsonKey(name: 'send_overdue_email') bool? sendOverdueEmail,@JsonKey(name: 'overdue_email_days') int? overdueEmailDays,@JsonKey(name: 'send_repeated_reminders') bool? sendRepeatedReminders,@JsonKey(name: 'send_invoice_from_proforma_email') bool? sendInvoiceFromProformaEmail,@JsonKey(name: 'send_thank_you_email') bool? sendThankYouEmail,@JsonKey(name: 'invoice_paypal') bool? invoicePaypal,@JsonKey(name: 'invoice_gopay') bool? invoiceGopay,@JsonKey(name: 'digitoo_enabled') bool? digitooEnabled,@JsonKey(name: 'digitoo_auto_processing_enabled') bool? digitooAutoProcessingEnabled,@JsonKey(name: 'digitoo_remaining_extractions') int? digitooRemainingExtractions,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$AccountCopyWithImpl<$Res>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._self, this._then);

  final Account _self;
  final $Res Function(Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subdomain = freezed,Object? plan = freezed,Object? planPrice = freezed,Object? planPaidUsers = freezed,Object? invoiceEmail = freezed,Object? phone = freezed,Object? web = freezed,Object? name = freezed,Object? fullName = freezed,Object? registrationNo = freezed,Object? vatNo = freezed,Object? localVatNo = freezed,Object? vatMode = freezed,Object? vatPriceMode = freezed,Object? street = freezed,Object? city = freezed,Object? zip = freezed,Object? country = freezed,Object? currency = freezed,Object? unitName = freezed,Object? vatRate = freezed,Object? displayedNote = freezed,Object? invoiceNote = freezed,Object? due = freezed,Object? invoiceLanguage = freezed,Object? invoicePaymentMethod = freezed,Object? invoiceProforma = freezed,Object? invoiceHideBankAccountForPayments = freezed,Object? fixedExchangeRate = freezed,Object? invoiceSelfbilling = freezed,Object? defaultEstimateType = freezed,Object? sendOverdueEmail = freezed,Object? overdueEmailDays = freezed,Object? sendRepeatedReminders = freezed,Object? sendInvoiceFromProformaEmail = freezed,Object? sendThankYouEmail = freezed,Object? invoicePaypal = freezed,Object? invoiceGopay = freezed,Object? digitooEnabled = freezed,Object? digitooAutoProcessingEnabled = freezed,Object? digitooRemainingExtractions = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
subdomain: freezed == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String?,planPrice: freezed == planPrice ? _self.planPrice : planPrice // ignore: cast_nullable_to_non_nullable
as int?,planPaidUsers: freezed == planPaidUsers ? _self.planPaidUsers : planPaidUsers // ignore: cast_nullable_to_non_nullable
as int?,invoiceEmail: freezed == invoiceEmail ? _self.invoiceEmail : invoiceEmail // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,web: freezed == web ? _self.web : web // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,registrationNo: freezed == registrationNo ? _self.registrationNo : registrationNo // ignore: cast_nullable_to_non_nullable
as String?,vatNo: freezed == vatNo ? _self.vatNo : vatNo // ignore: cast_nullable_to_non_nullable
as String?,localVatNo: freezed == localVatNo ? _self.localVatNo : localVatNo // ignore: cast_nullable_to_non_nullable
as String?,vatMode: freezed == vatMode ? _self.vatMode : vatMode // ignore: cast_nullable_to_non_nullable
as AccountVatMode?,vatPriceMode: freezed == vatPriceMode ? _self.vatPriceMode : vatPriceMode // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,unitName: freezed == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String?,vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as int?,displayedNote: freezed == displayedNote ? _self.displayedNote : displayedNote // ignore: cast_nullable_to_non_nullable
as String?,invoiceNote: freezed == invoiceNote ? _self.invoiceNote : invoiceNote // ignore: cast_nullable_to_non_nullable
as String?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,invoiceLanguage: freezed == invoiceLanguage ? _self.invoiceLanguage : invoiceLanguage // ignore: cast_nullable_to_non_nullable
as String?,invoicePaymentMethod: freezed == invoicePaymentMethod ? _self.invoicePaymentMethod : invoicePaymentMethod // ignore: cast_nullable_to_non_nullable
as String?,invoiceProforma: freezed == invoiceProforma ? _self.invoiceProforma : invoiceProforma // ignore: cast_nullable_to_non_nullable
as bool?,invoiceHideBankAccountForPayments: freezed == invoiceHideBankAccountForPayments ? _self.invoiceHideBankAccountForPayments : invoiceHideBankAccountForPayments // ignore: cast_nullable_to_non_nullable
as List<String>?,fixedExchangeRate: freezed == fixedExchangeRate ? _self.fixedExchangeRate : fixedExchangeRate // ignore: cast_nullable_to_non_nullable
as bool?,invoiceSelfbilling: freezed == invoiceSelfbilling ? _self.invoiceSelfbilling : invoiceSelfbilling // ignore: cast_nullable_to_non_nullable
as bool?,defaultEstimateType: freezed == defaultEstimateType ? _self.defaultEstimateType : defaultEstimateType // ignore: cast_nullable_to_non_nullable
as String?,sendOverdueEmail: freezed == sendOverdueEmail ? _self.sendOverdueEmail : sendOverdueEmail // ignore: cast_nullable_to_non_nullable
as bool?,overdueEmailDays: freezed == overdueEmailDays ? _self.overdueEmailDays : overdueEmailDays // ignore: cast_nullable_to_non_nullable
as int?,sendRepeatedReminders: freezed == sendRepeatedReminders ? _self.sendRepeatedReminders : sendRepeatedReminders // ignore: cast_nullable_to_non_nullable
as bool?,sendInvoiceFromProformaEmail: freezed == sendInvoiceFromProformaEmail ? _self.sendInvoiceFromProformaEmail : sendInvoiceFromProformaEmail // ignore: cast_nullable_to_non_nullable
as bool?,sendThankYouEmail: freezed == sendThankYouEmail ? _self.sendThankYouEmail : sendThankYouEmail // ignore: cast_nullable_to_non_nullable
as bool?,invoicePaypal: freezed == invoicePaypal ? _self.invoicePaypal : invoicePaypal // ignore: cast_nullable_to_non_nullable
as bool?,invoiceGopay: freezed == invoiceGopay ? _self.invoiceGopay : invoiceGopay // ignore: cast_nullable_to_non_nullable
as bool?,digitooEnabled: freezed == digitooEnabled ? _self.digitooEnabled : digitooEnabled // ignore: cast_nullable_to_non_nullable
as bool?,digitooAutoProcessingEnabled: freezed == digitooAutoProcessingEnabled ? _self.digitooAutoProcessingEnabled : digitooAutoProcessingEnabled // ignore: cast_nullable_to_non_nullable
as bool?,digitooRemainingExtractions: freezed == digitooRemainingExtractions ? _self.digitooRemainingExtractions : digitooRemainingExtractions // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Account].
extension AccountPatterns on Account {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Account value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Account() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Account value)  $default,){
final _that = this;
switch (_that) {
case _Account():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Account value)?  $default,){
final _that = this;
switch (_that) {
case _Account() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? subdomain,  String? plan, @JsonKey(name: 'plan_price')  int? planPrice, @JsonKey(name: 'plan_paid_users')  int? planPaidUsers, @JsonKey(name: 'invoice_email')  String? invoiceEmail,  String? phone,  String? web,  String? name, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'registration_no')  String? registrationNo, @JsonKey(name: 'vat_no')  String? vatNo, @JsonKey(name: 'local_vat_no')  String? localVatNo, @JsonKey(name: 'vat_mode')  AccountVatMode? vatMode, @JsonKey(name: 'vat_price_mode')  String? vatPriceMode,  String? street,  String? city,  String? zip,  String? country,  String? currency, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'vat_rate')  int? vatRate, @JsonKey(name: 'displayed_note')  String? displayedNote, @JsonKey(name: 'invoice_note')  String? invoiceNote,  int? due, @JsonKey(name: 'invoice_language')  String? invoiceLanguage, @JsonKey(name: 'invoice_payment_method')  String? invoicePaymentMethod, @JsonKey(name: 'invoice_proforma')  bool? invoiceProforma, @JsonKey(name: 'invoice_hide_bank_account_for_payments')  List<String>? invoiceHideBankAccountForPayments, @JsonKey(name: 'fixed_exchange_rate')  bool? fixedExchangeRate, @JsonKey(name: 'invoice_selfbilling')  bool? invoiceSelfbilling, @JsonKey(name: 'default_estimate_type')  String? defaultEstimateType, @JsonKey(name: 'send_overdue_email')  bool? sendOverdueEmail, @JsonKey(name: 'overdue_email_days')  int? overdueEmailDays, @JsonKey(name: 'send_repeated_reminders')  bool? sendRepeatedReminders, @JsonKey(name: 'send_invoice_from_proforma_email')  bool? sendInvoiceFromProformaEmail, @JsonKey(name: 'send_thank_you_email')  bool? sendThankYouEmail, @JsonKey(name: 'invoice_paypal')  bool? invoicePaypal, @JsonKey(name: 'invoice_gopay')  bool? invoiceGopay, @JsonKey(name: 'digitoo_enabled')  bool? digitooEnabled, @JsonKey(name: 'digitoo_auto_processing_enabled')  bool? digitooAutoProcessingEnabled, @JsonKey(name: 'digitoo_remaining_extractions')  int? digitooRemainingExtractions, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that.subdomain,_that.plan,_that.planPrice,_that.planPaidUsers,_that.invoiceEmail,_that.phone,_that.web,_that.name,_that.fullName,_that.registrationNo,_that.vatNo,_that.localVatNo,_that.vatMode,_that.vatPriceMode,_that.street,_that.city,_that.zip,_that.country,_that.currency,_that.unitName,_that.vatRate,_that.displayedNote,_that.invoiceNote,_that.due,_that.invoiceLanguage,_that.invoicePaymentMethod,_that.invoiceProforma,_that.invoiceHideBankAccountForPayments,_that.fixedExchangeRate,_that.invoiceSelfbilling,_that.defaultEstimateType,_that.sendOverdueEmail,_that.overdueEmailDays,_that.sendRepeatedReminders,_that.sendInvoiceFromProformaEmail,_that.sendThankYouEmail,_that.invoicePaypal,_that.invoiceGopay,_that.digitooEnabled,_that.digitooAutoProcessingEnabled,_that.digitooRemainingExtractions,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? subdomain,  String? plan, @JsonKey(name: 'plan_price')  int? planPrice, @JsonKey(name: 'plan_paid_users')  int? planPaidUsers, @JsonKey(name: 'invoice_email')  String? invoiceEmail,  String? phone,  String? web,  String? name, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'registration_no')  String? registrationNo, @JsonKey(name: 'vat_no')  String? vatNo, @JsonKey(name: 'local_vat_no')  String? localVatNo, @JsonKey(name: 'vat_mode')  AccountVatMode? vatMode, @JsonKey(name: 'vat_price_mode')  String? vatPriceMode,  String? street,  String? city,  String? zip,  String? country,  String? currency, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'vat_rate')  int? vatRate, @JsonKey(name: 'displayed_note')  String? displayedNote, @JsonKey(name: 'invoice_note')  String? invoiceNote,  int? due, @JsonKey(name: 'invoice_language')  String? invoiceLanguage, @JsonKey(name: 'invoice_payment_method')  String? invoicePaymentMethod, @JsonKey(name: 'invoice_proforma')  bool? invoiceProforma, @JsonKey(name: 'invoice_hide_bank_account_for_payments')  List<String>? invoiceHideBankAccountForPayments, @JsonKey(name: 'fixed_exchange_rate')  bool? fixedExchangeRate, @JsonKey(name: 'invoice_selfbilling')  bool? invoiceSelfbilling, @JsonKey(name: 'default_estimate_type')  String? defaultEstimateType, @JsonKey(name: 'send_overdue_email')  bool? sendOverdueEmail, @JsonKey(name: 'overdue_email_days')  int? overdueEmailDays, @JsonKey(name: 'send_repeated_reminders')  bool? sendRepeatedReminders, @JsonKey(name: 'send_invoice_from_proforma_email')  bool? sendInvoiceFromProformaEmail, @JsonKey(name: 'send_thank_you_email')  bool? sendThankYouEmail, @JsonKey(name: 'invoice_paypal')  bool? invoicePaypal, @JsonKey(name: 'invoice_gopay')  bool? invoiceGopay, @JsonKey(name: 'digitoo_enabled')  bool? digitooEnabled, @JsonKey(name: 'digitoo_auto_processing_enabled')  bool? digitooAutoProcessingEnabled, @JsonKey(name: 'digitoo_remaining_extractions')  int? digitooRemainingExtractions, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Account():
return $default(_that.subdomain,_that.plan,_that.planPrice,_that.planPaidUsers,_that.invoiceEmail,_that.phone,_that.web,_that.name,_that.fullName,_that.registrationNo,_that.vatNo,_that.localVatNo,_that.vatMode,_that.vatPriceMode,_that.street,_that.city,_that.zip,_that.country,_that.currency,_that.unitName,_that.vatRate,_that.displayedNote,_that.invoiceNote,_that.due,_that.invoiceLanguage,_that.invoicePaymentMethod,_that.invoiceProforma,_that.invoiceHideBankAccountForPayments,_that.fixedExchangeRate,_that.invoiceSelfbilling,_that.defaultEstimateType,_that.sendOverdueEmail,_that.overdueEmailDays,_that.sendRepeatedReminders,_that.sendInvoiceFromProformaEmail,_that.sendThankYouEmail,_that.invoicePaypal,_that.invoiceGopay,_that.digitooEnabled,_that.digitooAutoProcessingEnabled,_that.digitooRemainingExtractions,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? subdomain,  String? plan, @JsonKey(name: 'plan_price')  int? planPrice, @JsonKey(name: 'plan_paid_users')  int? planPaidUsers, @JsonKey(name: 'invoice_email')  String? invoiceEmail,  String? phone,  String? web,  String? name, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'registration_no')  String? registrationNo, @JsonKey(name: 'vat_no')  String? vatNo, @JsonKey(name: 'local_vat_no')  String? localVatNo, @JsonKey(name: 'vat_mode')  AccountVatMode? vatMode, @JsonKey(name: 'vat_price_mode')  String? vatPriceMode,  String? street,  String? city,  String? zip,  String? country,  String? currency, @JsonKey(name: 'unit_name')  String? unitName, @JsonKey(name: 'vat_rate')  int? vatRate, @JsonKey(name: 'displayed_note')  String? displayedNote, @JsonKey(name: 'invoice_note')  String? invoiceNote,  int? due, @JsonKey(name: 'invoice_language')  String? invoiceLanguage, @JsonKey(name: 'invoice_payment_method')  String? invoicePaymentMethod, @JsonKey(name: 'invoice_proforma')  bool? invoiceProforma, @JsonKey(name: 'invoice_hide_bank_account_for_payments')  List<String>? invoiceHideBankAccountForPayments, @JsonKey(name: 'fixed_exchange_rate')  bool? fixedExchangeRate, @JsonKey(name: 'invoice_selfbilling')  bool? invoiceSelfbilling, @JsonKey(name: 'default_estimate_type')  String? defaultEstimateType, @JsonKey(name: 'send_overdue_email')  bool? sendOverdueEmail, @JsonKey(name: 'overdue_email_days')  int? overdueEmailDays, @JsonKey(name: 'send_repeated_reminders')  bool? sendRepeatedReminders, @JsonKey(name: 'send_invoice_from_proforma_email')  bool? sendInvoiceFromProformaEmail, @JsonKey(name: 'send_thank_you_email')  bool? sendThankYouEmail, @JsonKey(name: 'invoice_paypal')  bool? invoicePaypal, @JsonKey(name: 'invoice_gopay')  bool? invoiceGopay, @JsonKey(name: 'digitoo_enabled')  bool? digitooEnabled, @JsonKey(name: 'digitoo_auto_processing_enabled')  bool? digitooAutoProcessingEnabled, @JsonKey(name: 'digitoo_remaining_extractions')  int? digitooRemainingExtractions, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that.subdomain,_that.plan,_that.planPrice,_that.planPaidUsers,_that.invoiceEmail,_that.phone,_that.web,_that.name,_that.fullName,_that.registrationNo,_that.vatNo,_that.localVatNo,_that.vatMode,_that.vatPriceMode,_that.street,_that.city,_that.zip,_that.country,_that.currency,_that.unitName,_that.vatRate,_that.displayedNote,_that.invoiceNote,_that.due,_that.invoiceLanguage,_that.invoicePaymentMethod,_that.invoiceProforma,_that.invoiceHideBankAccountForPayments,_that.fixedExchangeRate,_that.invoiceSelfbilling,_that.defaultEstimateType,_that.sendOverdueEmail,_that.overdueEmailDays,_that.sendRepeatedReminders,_that.sendInvoiceFromProformaEmail,_that.sendThankYouEmail,_that.invoicePaypal,_that.invoiceGopay,_that.digitooEnabled,_that.digitooAutoProcessingEnabled,_that.digitooRemainingExtractions,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Account implements Account {
  const _Account({this.subdomain, this.plan, @JsonKey(name: 'plan_price') this.planPrice, @JsonKey(name: 'plan_paid_users') this.planPaidUsers, @JsonKey(name: 'invoice_email') this.invoiceEmail, this.phone, this.web, this.name, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'registration_no') this.registrationNo, @JsonKey(name: 'vat_no') this.vatNo, @JsonKey(name: 'local_vat_no') this.localVatNo, @JsonKey(name: 'vat_mode') this.vatMode, @JsonKey(name: 'vat_price_mode') this.vatPriceMode, this.street, this.city, this.zip, this.country, this.currency, @JsonKey(name: 'unit_name') this.unitName, @JsonKey(name: 'vat_rate') this.vatRate, @JsonKey(name: 'displayed_note') this.displayedNote, @JsonKey(name: 'invoice_note') this.invoiceNote, this.due, @JsonKey(name: 'invoice_language') this.invoiceLanguage, @JsonKey(name: 'invoice_payment_method') this.invoicePaymentMethod, @JsonKey(name: 'invoice_proforma') this.invoiceProforma, @JsonKey(name: 'invoice_hide_bank_account_for_payments') final  List<String>? invoiceHideBankAccountForPayments, @JsonKey(name: 'fixed_exchange_rate') this.fixedExchangeRate, @JsonKey(name: 'invoice_selfbilling') this.invoiceSelfbilling, @JsonKey(name: 'default_estimate_type') this.defaultEstimateType, @JsonKey(name: 'send_overdue_email') this.sendOverdueEmail, @JsonKey(name: 'overdue_email_days') this.overdueEmailDays, @JsonKey(name: 'send_repeated_reminders') this.sendRepeatedReminders, @JsonKey(name: 'send_invoice_from_proforma_email') this.sendInvoiceFromProformaEmail, @JsonKey(name: 'send_thank_you_email') this.sendThankYouEmail, @JsonKey(name: 'invoice_paypal') this.invoicePaypal, @JsonKey(name: 'invoice_gopay') this.invoiceGopay, @JsonKey(name: 'digitoo_enabled') this.digitooEnabled, @JsonKey(name: 'digitoo_auto_processing_enabled') this.digitooAutoProcessingEnabled, @JsonKey(name: 'digitoo_remaining_extractions') this.digitooRemainingExtractions, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _invoiceHideBankAccountForPayments = invoiceHideBankAccountForPayments;
  factory _Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

@override final  String? subdomain;
@override final  String? plan;
@override@JsonKey(name: 'plan_price') final  int? planPrice;
@override@JsonKey(name: 'plan_paid_users') final  int? planPaidUsers;
@override@JsonKey(name: 'invoice_email') final  String? invoiceEmail;
@override final  String? phone;
@override final  String? web;
@override final  String? name;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'registration_no') final  String? registrationNo;
@override@JsonKey(name: 'vat_no') final  String? vatNo;
@override@JsonKey(name: 'local_vat_no') final  String? localVatNo;
@override@JsonKey(name: 'vat_mode') final  AccountVatMode? vatMode;
@override@JsonKey(name: 'vat_price_mode') final  String? vatPriceMode;
@override final  String? street;
@override final  String? city;
@override final  String? zip;
@override final  String? country;
@override final  String? currency;
@override@JsonKey(name: 'unit_name') final  String? unitName;
@override@JsonKey(name: 'vat_rate') final  int? vatRate;
@override@JsonKey(name: 'displayed_note') final  String? displayedNote;
@override@JsonKey(name: 'invoice_note') final  String? invoiceNote;
@override final  int? due;
@override@JsonKey(name: 'invoice_language') final  String? invoiceLanguage;
@override@JsonKey(name: 'invoice_payment_method') final  String? invoicePaymentMethod;
@override@JsonKey(name: 'invoice_proforma') final  bool? invoiceProforma;
 final  List<String>? _invoiceHideBankAccountForPayments;
@override@JsonKey(name: 'invoice_hide_bank_account_for_payments') List<String>? get invoiceHideBankAccountForPayments {
  final value = _invoiceHideBankAccountForPayments;
  if (value == null) return null;
  if (_invoiceHideBankAccountForPayments is EqualUnmodifiableListView) return _invoiceHideBankAccountForPayments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'fixed_exchange_rate') final  bool? fixedExchangeRate;
@override@JsonKey(name: 'invoice_selfbilling') final  bool? invoiceSelfbilling;
@override@JsonKey(name: 'default_estimate_type') final  String? defaultEstimateType;
@override@JsonKey(name: 'send_overdue_email') final  bool? sendOverdueEmail;
@override@JsonKey(name: 'overdue_email_days') final  int? overdueEmailDays;
@override@JsonKey(name: 'send_repeated_reminders') final  bool? sendRepeatedReminders;
@override@JsonKey(name: 'send_invoice_from_proforma_email') final  bool? sendInvoiceFromProformaEmail;
@override@JsonKey(name: 'send_thank_you_email') final  bool? sendThankYouEmail;
@override@JsonKey(name: 'invoice_paypal') final  bool? invoicePaypal;
@override@JsonKey(name: 'invoice_gopay') final  bool? invoiceGopay;
@override@JsonKey(name: 'digitoo_enabled') final  bool? digitooEnabled;
@override@JsonKey(name: 'digitoo_auto_processing_enabled') final  bool? digitooAutoProcessingEnabled;
@override@JsonKey(name: 'digitoo_remaining_extractions') final  int? digitooRemainingExtractions;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountCopyWith<_Account> get copyWith => __$AccountCopyWithImpl<_Account>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Account&&(identical(other.subdomain, subdomain) || other.subdomain == subdomain)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.planPrice, planPrice) || other.planPrice == planPrice)&&(identical(other.planPaidUsers, planPaidUsers) || other.planPaidUsers == planPaidUsers)&&(identical(other.invoiceEmail, invoiceEmail) || other.invoiceEmail == invoiceEmail)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.web, web) || other.web == web)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.registrationNo, registrationNo) || other.registrationNo == registrationNo)&&(identical(other.vatNo, vatNo) || other.vatNo == vatNo)&&(identical(other.localVatNo, localVatNo) || other.localVatNo == localVatNo)&&(identical(other.vatMode, vatMode) || other.vatMode == vatMode)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.street, street) || other.street == street)&&(identical(other.city, city) || other.city == city)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.country, country) || other.country == country)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.vatRate, vatRate) || other.vatRate == vatRate)&&(identical(other.displayedNote, displayedNote) || other.displayedNote == displayedNote)&&(identical(other.invoiceNote, invoiceNote) || other.invoiceNote == invoiceNote)&&(identical(other.due, due) || other.due == due)&&(identical(other.invoiceLanguage, invoiceLanguage) || other.invoiceLanguage == invoiceLanguage)&&(identical(other.invoicePaymentMethod, invoicePaymentMethod) || other.invoicePaymentMethod == invoicePaymentMethod)&&(identical(other.invoiceProforma, invoiceProforma) || other.invoiceProforma == invoiceProforma)&&const DeepCollectionEquality().equals(other._invoiceHideBankAccountForPayments, _invoiceHideBankAccountForPayments)&&(identical(other.fixedExchangeRate, fixedExchangeRate) || other.fixedExchangeRate == fixedExchangeRate)&&(identical(other.invoiceSelfbilling, invoiceSelfbilling) || other.invoiceSelfbilling == invoiceSelfbilling)&&(identical(other.defaultEstimateType, defaultEstimateType) || other.defaultEstimateType == defaultEstimateType)&&(identical(other.sendOverdueEmail, sendOverdueEmail) || other.sendOverdueEmail == sendOverdueEmail)&&(identical(other.overdueEmailDays, overdueEmailDays) || other.overdueEmailDays == overdueEmailDays)&&(identical(other.sendRepeatedReminders, sendRepeatedReminders) || other.sendRepeatedReminders == sendRepeatedReminders)&&(identical(other.sendInvoiceFromProformaEmail, sendInvoiceFromProformaEmail) || other.sendInvoiceFromProformaEmail == sendInvoiceFromProformaEmail)&&(identical(other.sendThankYouEmail, sendThankYouEmail) || other.sendThankYouEmail == sendThankYouEmail)&&(identical(other.invoicePaypal, invoicePaypal) || other.invoicePaypal == invoicePaypal)&&(identical(other.invoiceGopay, invoiceGopay) || other.invoiceGopay == invoiceGopay)&&(identical(other.digitooEnabled, digitooEnabled) || other.digitooEnabled == digitooEnabled)&&(identical(other.digitooAutoProcessingEnabled, digitooAutoProcessingEnabled) || other.digitooAutoProcessingEnabled == digitooAutoProcessingEnabled)&&(identical(other.digitooRemainingExtractions, digitooRemainingExtractions) || other.digitooRemainingExtractions == digitooRemainingExtractions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,subdomain,plan,planPrice,planPaidUsers,invoiceEmail,phone,web,name,fullName,registrationNo,vatNo,localVatNo,vatMode,vatPriceMode,street,city,zip,country,currency,unitName,vatRate,displayedNote,invoiceNote,due,invoiceLanguage,invoicePaymentMethod,invoiceProforma,const DeepCollectionEquality().hash(_invoiceHideBankAccountForPayments),fixedExchangeRate,invoiceSelfbilling,defaultEstimateType,sendOverdueEmail,overdueEmailDays,sendRepeatedReminders,sendInvoiceFromProformaEmail,sendThankYouEmail,invoicePaypal,invoiceGopay,digitooEnabled,digitooAutoProcessingEnabled,digitooRemainingExtractions,createdAt,updatedAt]);

@override
String toString() {
  return 'Account(subdomain: $subdomain, plan: $plan, planPrice: $planPrice, planPaidUsers: $planPaidUsers, invoiceEmail: $invoiceEmail, phone: $phone, web: $web, name: $name, fullName: $fullName, registrationNo: $registrationNo, vatNo: $vatNo, localVatNo: $localVatNo, vatMode: $vatMode, vatPriceMode: $vatPriceMode, street: $street, city: $city, zip: $zip, country: $country, currency: $currency, unitName: $unitName, vatRate: $vatRate, displayedNote: $displayedNote, invoiceNote: $invoiceNote, due: $due, invoiceLanguage: $invoiceLanguage, invoicePaymentMethod: $invoicePaymentMethod, invoiceProforma: $invoiceProforma, invoiceHideBankAccountForPayments: $invoiceHideBankAccountForPayments, fixedExchangeRate: $fixedExchangeRate, invoiceSelfbilling: $invoiceSelfbilling, defaultEstimateType: $defaultEstimateType, sendOverdueEmail: $sendOverdueEmail, overdueEmailDays: $overdueEmailDays, sendRepeatedReminders: $sendRepeatedReminders, sendInvoiceFromProformaEmail: $sendInvoiceFromProformaEmail, sendThankYouEmail: $sendThankYouEmail, invoicePaypal: $invoicePaypal, invoiceGopay: $invoiceGopay, digitooEnabled: $digitooEnabled, digitooAutoProcessingEnabled: $digitooAutoProcessingEnabled, digitooRemainingExtractions: $digitooRemainingExtractions, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) _then) = __$AccountCopyWithImpl;
@override @useResult
$Res call({
 String? subdomain, String? plan,@JsonKey(name: 'plan_price') int? planPrice,@JsonKey(name: 'plan_paid_users') int? planPaidUsers,@JsonKey(name: 'invoice_email') String? invoiceEmail, String? phone, String? web, String? name,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'registration_no') String? registrationNo,@JsonKey(name: 'vat_no') String? vatNo,@JsonKey(name: 'local_vat_no') String? localVatNo,@JsonKey(name: 'vat_mode') AccountVatMode? vatMode,@JsonKey(name: 'vat_price_mode') String? vatPriceMode, String? street, String? city, String? zip, String? country, String? currency,@JsonKey(name: 'unit_name') String? unitName,@JsonKey(name: 'vat_rate') int? vatRate,@JsonKey(name: 'displayed_note') String? displayedNote,@JsonKey(name: 'invoice_note') String? invoiceNote, int? due,@JsonKey(name: 'invoice_language') String? invoiceLanguage,@JsonKey(name: 'invoice_payment_method') String? invoicePaymentMethod,@JsonKey(name: 'invoice_proforma') bool? invoiceProforma,@JsonKey(name: 'invoice_hide_bank_account_for_payments') List<String>? invoiceHideBankAccountForPayments,@JsonKey(name: 'fixed_exchange_rate') bool? fixedExchangeRate,@JsonKey(name: 'invoice_selfbilling') bool? invoiceSelfbilling,@JsonKey(name: 'default_estimate_type') String? defaultEstimateType,@JsonKey(name: 'send_overdue_email') bool? sendOverdueEmail,@JsonKey(name: 'overdue_email_days') int? overdueEmailDays,@JsonKey(name: 'send_repeated_reminders') bool? sendRepeatedReminders,@JsonKey(name: 'send_invoice_from_proforma_email') bool? sendInvoiceFromProformaEmail,@JsonKey(name: 'send_thank_you_email') bool? sendThankYouEmail,@JsonKey(name: 'invoice_paypal') bool? invoicePaypal,@JsonKey(name: 'invoice_gopay') bool? invoiceGopay,@JsonKey(name: 'digitoo_enabled') bool? digitooEnabled,@JsonKey(name: 'digitoo_auto_processing_enabled') bool? digitooAutoProcessingEnabled,@JsonKey(name: 'digitoo_remaining_extractions') int? digitooRemainingExtractions,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(this._self, this._then);

  final _Account _self;
  final $Res Function(_Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subdomain = freezed,Object? plan = freezed,Object? planPrice = freezed,Object? planPaidUsers = freezed,Object? invoiceEmail = freezed,Object? phone = freezed,Object? web = freezed,Object? name = freezed,Object? fullName = freezed,Object? registrationNo = freezed,Object? vatNo = freezed,Object? localVatNo = freezed,Object? vatMode = freezed,Object? vatPriceMode = freezed,Object? street = freezed,Object? city = freezed,Object? zip = freezed,Object? country = freezed,Object? currency = freezed,Object? unitName = freezed,Object? vatRate = freezed,Object? displayedNote = freezed,Object? invoiceNote = freezed,Object? due = freezed,Object? invoiceLanguage = freezed,Object? invoicePaymentMethod = freezed,Object? invoiceProforma = freezed,Object? invoiceHideBankAccountForPayments = freezed,Object? fixedExchangeRate = freezed,Object? invoiceSelfbilling = freezed,Object? defaultEstimateType = freezed,Object? sendOverdueEmail = freezed,Object? overdueEmailDays = freezed,Object? sendRepeatedReminders = freezed,Object? sendInvoiceFromProformaEmail = freezed,Object? sendThankYouEmail = freezed,Object? invoicePaypal = freezed,Object? invoiceGopay = freezed,Object? digitooEnabled = freezed,Object? digitooAutoProcessingEnabled = freezed,Object? digitooRemainingExtractions = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Account(
subdomain: freezed == subdomain ? _self.subdomain : subdomain // ignore: cast_nullable_to_non_nullable
as String?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String?,planPrice: freezed == planPrice ? _self.planPrice : planPrice // ignore: cast_nullable_to_non_nullable
as int?,planPaidUsers: freezed == planPaidUsers ? _self.planPaidUsers : planPaidUsers // ignore: cast_nullable_to_non_nullable
as int?,invoiceEmail: freezed == invoiceEmail ? _self.invoiceEmail : invoiceEmail // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,web: freezed == web ? _self.web : web // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,registrationNo: freezed == registrationNo ? _self.registrationNo : registrationNo // ignore: cast_nullable_to_non_nullable
as String?,vatNo: freezed == vatNo ? _self.vatNo : vatNo // ignore: cast_nullable_to_non_nullable
as String?,localVatNo: freezed == localVatNo ? _self.localVatNo : localVatNo // ignore: cast_nullable_to_non_nullable
as String?,vatMode: freezed == vatMode ? _self.vatMode : vatMode // ignore: cast_nullable_to_non_nullable
as AccountVatMode?,vatPriceMode: freezed == vatPriceMode ? _self.vatPriceMode : vatPriceMode // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,unitName: freezed == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String?,vatRate: freezed == vatRate ? _self.vatRate : vatRate // ignore: cast_nullable_to_non_nullable
as int?,displayedNote: freezed == displayedNote ? _self.displayedNote : displayedNote // ignore: cast_nullable_to_non_nullable
as String?,invoiceNote: freezed == invoiceNote ? _self.invoiceNote : invoiceNote // ignore: cast_nullable_to_non_nullable
as String?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,invoiceLanguage: freezed == invoiceLanguage ? _self.invoiceLanguage : invoiceLanguage // ignore: cast_nullable_to_non_nullable
as String?,invoicePaymentMethod: freezed == invoicePaymentMethod ? _self.invoicePaymentMethod : invoicePaymentMethod // ignore: cast_nullable_to_non_nullable
as String?,invoiceProforma: freezed == invoiceProforma ? _self.invoiceProforma : invoiceProforma // ignore: cast_nullable_to_non_nullable
as bool?,invoiceHideBankAccountForPayments: freezed == invoiceHideBankAccountForPayments ? _self._invoiceHideBankAccountForPayments : invoiceHideBankAccountForPayments // ignore: cast_nullable_to_non_nullable
as List<String>?,fixedExchangeRate: freezed == fixedExchangeRate ? _self.fixedExchangeRate : fixedExchangeRate // ignore: cast_nullable_to_non_nullable
as bool?,invoiceSelfbilling: freezed == invoiceSelfbilling ? _self.invoiceSelfbilling : invoiceSelfbilling // ignore: cast_nullable_to_non_nullable
as bool?,defaultEstimateType: freezed == defaultEstimateType ? _self.defaultEstimateType : defaultEstimateType // ignore: cast_nullable_to_non_nullable
as String?,sendOverdueEmail: freezed == sendOverdueEmail ? _self.sendOverdueEmail : sendOverdueEmail // ignore: cast_nullable_to_non_nullable
as bool?,overdueEmailDays: freezed == overdueEmailDays ? _self.overdueEmailDays : overdueEmailDays // ignore: cast_nullable_to_non_nullable
as int?,sendRepeatedReminders: freezed == sendRepeatedReminders ? _self.sendRepeatedReminders : sendRepeatedReminders // ignore: cast_nullable_to_non_nullable
as bool?,sendInvoiceFromProformaEmail: freezed == sendInvoiceFromProformaEmail ? _self.sendInvoiceFromProformaEmail : sendInvoiceFromProformaEmail // ignore: cast_nullable_to_non_nullable
as bool?,sendThankYouEmail: freezed == sendThankYouEmail ? _self.sendThankYouEmail : sendThankYouEmail // ignore: cast_nullable_to_non_nullable
as bool?,invoicePaypal: freezed == invoicePaypal ? _self.invoicePaypal : invoicePaypal // ignore: cast_nullable_to_non_nullable
as bool?,invoiceGopay: freezed == invoiceGopay ? _self.invoiceGopay : invoiceGopay // ignore: cast_nullable_to_non_nullable
as bool?,digitooEnabled: freezed == digitooEnabled ? _self.digitooEnabled : digitooEnabled // ignore: cast_nullable_to_non_nullable
as bool?,digitooAutoProcessingEnabled: freezed == digitooAutoProcessingEnabled ? _self.digitooAutoProcessingEnabled : digitooAutoProcessingEnabled // ignore: cast_nullable_to_non_nullable
as bool?,digitooRemainingExtractions: freezed == digitooRemainingExtractions ? _self.digitooRemainingExtractions : digitooRemainingExtractions // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
