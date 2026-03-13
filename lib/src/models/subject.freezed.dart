// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Subject {

 int? get id;@JsonKey(name: 'custom_id') String? get customId;@JsonKey(name: 'user_id') int? get userId; SubjectType? get type; String get name;@JsonKey(name: 'full_name') String? get fullName; String? get email;@JsonKey(name: 'email_copy') String? get emailCopy; String? get phone; String? get web; String? get street; String? get street2; String? get city; String? get zip; String? get country;@JsonKey(name: 'has_delivery_address') bool? get hasDeliveryAddress;@JsonKey(name: 'delivery_name') String? get deliveryName;@JsonKey(name: 'delivery_street') String? get deliveryStreet;@JsonKey(name: 'delivery_city') String? get deliveryCity;@JsonKey(name: 'delivery_zip') String? get deliveryZip;@JsonKey(name: 'delivery_country') String? get deliveryCountry; int? get due; String? get currency; String? get language;@JsonKey(name: 'footer_note') String? get footerNote;@JsonKey(name: 'private_note') String? get privateNote; List<String>? get tags;@JsonKey(name: 'registration_no') String? get registrationNo;@JsonKey(name: 'vat_no') String? get vatNo;@JsonKey(name: 'local_vat_no') String? get localVatNo; bool? get unreliable;@JsonKey(name: 'unreliable_checked_at') DateTime? get unreliableCheckedAt;@JsonKey(name: 'legal_form') String? get legalForm;@JsonKey(name: 'vat_mode') String? get vatMode;@JsonKey(name: 'bank_account') String? get bankAccount; String? get iban;@JsonKey(name: 'swift_bic') String? get swiftBic;@JsonKey(name: 'variable_symbol') String? get variableSymbol;@JsonKey(name: 'setting_update_from_ares') SubjectSetting? get settingUpdateFromAres;@JsonKey(name: 'ares_update') bool? get aresUpdate;@JsonKey(name: 'setting_invoice_pdf_attachments') SubjectSetting? get settingInvoicePdfAttachments;@JsonKey(name: 'setting_estimate_pdf_attachments') SubjectSetting? get settingEstimatePdfAttachments;@JsonKey(name: 'setting_invoice_send_reminders') SubjectSetting? get settingInvoiceSendReminders;@JsonKey(name: 'suggestion_enabled') bool? get suggestionEnabled;@JsonKey(name: 'custom_email_text') String? get customEmailText;@JsonKey(name: 'overdue_email_text') String? get overdueEmailText;@JsonKey(name: 'invoice_from_proforma_email_text') String? get invoiceFromProformaEmailText;@JsonKey(name: 'thank_you_email_text') String? get thankYouEmailText;@JsonKey(name: 'custom_estimate_email_text') String? get customEstimateEmailText;@JsonKey(name: 'webinvoice_history') WebinvoiceHistory? get webinvoiceHistory;@JsonKey(name: 'html_url') String? get htmlUrl; String? get url;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of Subject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectCopyWith<Subject> get copyWith => _$SubjectCopyWithImpl<Subject>(this as Subject, _$identity);

  /// Serializes this Subject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subject&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailCopy, emailCopy) || other.emailCopy == emailCopy)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.web, web) || other.web == web)&&(identical(other.street, street) || other.street == street)&&(identical(other.street2, street2) || other.street2 == street2)&&(identical(other.city, city) || other.city == city)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.country, country) || other.country == country)&&(identical(other.hasDeliveryAddress, hasDeliveryAddress) || other.hasDeliveryAddress == hasDeliveryAddress)&&(identical(other.deliveryName, deliveryName) || other.deliveryName == deliveryName)&&(identical(other.deliveryStreet, deliveryStreet) || other.deliveryStreet == deliveryStreet)&&(identical(other.deliveryCity, deliveryCity) || other.deliveryCity == deliveryCity)&&(identical(other.deliveryZip, deliveryZip) || other.deliveryZip == deliveryZip)&&(identical(other.deliveryCountry, deliveryCountry) || other.deliveryCountry == deliveryCountry)&&(identical(other.due, due) || other.due == due)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.language, language) || other.language == language)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.registrationNo, registrationNo) || other.registrationNo == registrationNo)&&(identical(other.vatNo, vatNo) || other.vatNo == vatNo)&&(identical(other.localVatNo, localVatNo) || other.localVatNo == localVatNo)&&(identical(other.unreliable, unreliable) || other.unreliable == unreliable)&&(identical(other.unreliableCheckedAt, unreliableCheckedAt) || other.unreliableCheckedAt == unreliableCheckedAt)&&(identical(other.legalForm, legalForm) || other.legalForm == legalForm)&&(identical(other.vatMode, vatMode) || other.vatMode == vatMode)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.settingUpdateFromAres, settingUpdateFromAres) || other.settingUpdateFromAres == settingUpdateFromAres)&&(identical(other.aresUpdate, aresUpdate) || other.aresUpdate == aresUpdate)&&(identical(other.settingInvoicePdfAttachments, settingInvoicePdfAttachments) || other.settingInvoicePdfAttachments == settingInvoicePdfAttachments)&&(identical(other.settingEstimatePdfAttachments, settingEstimatePdfAttachments) || other.settingEstimatePdfAttachments == settingEstimatePdfAttachments)&&(identical(other.settingInvoiceSendReminders, settingInvoiceSendReminders) || other.settingInvoiceSendReminders == settingInvoiceSendReminders)&&(identical(other.suggestionEnabled, suggestionEnabled) || other.suggestionEnabled == suggestionEnabled)&&(identical(other.customEmailText, customEmailText) || other.customEmailText == customEmailText)&&(identical(other.overdueEmailText, overdueEmailText) || other.overdueEmailText == overdueEmailText)&&(identical(other.invoiceFromProformaEmailText, invoiceFromProformaEmailText) || other.invoiceFromProformaEmailText == invoiceFromProformaEmailText)&&(identical(other.thankYouEmailText, thankYouEmailText) || other.thankYouEmailText == thankYouEmailText)&&(identical(other.customEstimateEmailText, customEstimateEmailText) || other.customEstimateEmailText == customEstimateEmailText)&&(identical(other.webinvoiceHistory, webinvoiceHistory) || other.webinvoiceHistory == webinvoiceHistory)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,userId,type,name,fullName,email,emailCopy,phone,web,street,street2,city,zip,country,hasDeliveryAddress,deliveryName,deliveryStreet,deliveryCity,deliveryZip,deliveryCountry,due,currency,language,footerNote,privateNote,const DeepCollectionEquality().hash(tags),registrationNo,vatNo,localVatNo,unreliable,unreliableCheckedAt,legalForm,vatMode,bankAccount,iban,swiftBic,variableSymbol,settingUpdateFromAres,aresUpdate,settingInvoicePdfAttachments,settingEstimatePdfAttachments,settingInvoiceSendReminders,suggestionEnabled,customEmailText,overdueEmailText,invoiceFromProformaEmailText,thankYouEmailText,customEstimateEmailText,webinvoiceHistory,htmlUrl,url,createdAt,updatedAt]);

@override
String toString() {
  return 'Subject(id: $id, customId: $customId, userId: $userId, type: $type, name: $name, fullName: $fullName, email: $email, emailCopy: $emailCopy, phone: $phone, web: $web, street: $street, street2: $street2, city: $city, zip: $zip, country: $country, hasDeliveryAddress: $hasDeliveryAddress, deliveryName: $deliveryName, deliveryStreet: $deliveryStreet, deliveryCity: $deliveryCity, deliveryZip: $deliveryZip, deliveryCountry: $deliveryCountry, due: $due, currency: $currency, language: $language, footerNote: $footerNote, privateNote: $privateNote, tags: $tags, registrationNo: $registrationNo, vatNo: $vatNo, localVatNo: $localVatNo, unreliable: $unreliable, unreliableCheckedAt: $unreliableCheckedAt, legalForm: $legalForm, vatMode: $vatMode, bankAccount: $bankAccount, iban: $iban, swiftBic: $swiftBic, variableSymbol: $variableSymbol, settingUpdateFromAres: $settingUpdateFromAres, aresUpdate: $aresUpdate, settingInvoicePdfAttachments: $settingInvoicePdfAttachments, settingEstimatePdfAttachments: $settingEstimatePdfAttachments, settingInvoiceSendReminders: $settingInvoiceSendReminders, suggestionEnabled: $suggestionEnabled, customEmailText: $customEmailText, overdueEmailText: $overdueEmailText, invoiceFromProformaEmailText: $invoiceFromProformaEmailText, thankYouEmailText: $thankYouEmailText, customEstimateEmailText: $customEstimateEmailText, webinvoiceHistory: $webinvoiceHistory, htmlUrl: $htmlUrl, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SubjectCopyWith<$Res>  {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) _then) = _$SubjectCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId,@JsonKey(name: 'user_id') int? userId, SubjectType? type, String name,@JsonKey(name: 'full_name') String? fullName, String? email,@JsonKey(name: 'email_copy') String? emailCopy, String? phone, String? web, String? street, String? street2, String? city, String? zip, String? country,@JsonKey(name: 'has_delivery_address') bool? hasDeliveryAddress,@JsonKey(name: 'delivery_name') String? deliveryName,@JsonKey(name: 'delivery_street') String? deliveryStreet,@JsonKey(name: 'delivery_city') String? deliveryCity,@JsonKey(name: 'delivery_zip') String? deliveryZip,@JsonKey(name: 'delivery_country') String? deliveryCountry, int? due, String? currency, String? language,@JsonKey(name: 'footer_note') String? footerNote,@JsonKey(name: 'private_note') String? privateNote, List<String>? tags,@JsonKey(name: 'registration_no') String? registrationNo,@JsonKey(name: 'vat_no') String? vatNo,@JsonKey(name: 'local_vat_no') String? localVatNo, bool? unreliable,@JsonKey(name: 'unreliable_checked_at') DateTime? unreliableCheckedAt,@JsonKey(name: 'legal_form') String? legalForm,@JsonKey(name: 'vat_mode') String? vatMode,@JsonKey(name: 'bank_account') String? bankAccount, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'setting_update_from_ares') SubjectSetting? settingUpdateFromAres,@JsonKey(name: 'ares_update') bool? aresUpdate,@JsonKey(name: 'setting_invoice_pdf_attachments') SubjectSetting? settingInvoicePdfAttachments,@JsonKey(name: 'setting_estimate_pdf_attachments') SubjectSetting? settingEstimatePdfAttachments,@JsonKey(name: 'setting_invoice_send_reminders') SubjectSetting? settingInvoiceSendReminders,@JsonKey(name: 'suggestion_enabled') bool? suggestionEnabled,@JsonKey(name: 'custom_email_text') String? customEmailText,@JsonKey(name: 'overdue_email_text') String? overdueEmailText,@JsonKey(name: 'invoice_from_proforma_email_text') String? invoiceFromProformaEmailText,@JsonKey(name: 'thank_you_email_text') String? thankYouEmailText,@JsonKey(name: 'custom_estimate_email_text') String? customEstimateEmailText,@JsonKey(name: 'webinvoice_history') WebinvoiceHistory? webinvoiceHistory,@JsonKey(name: 'html_url') String? htmlUrl, String? url,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$SubjectCopyWithImpl<$Res>
    implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._self, this._then);

  final Subject _self;
  final $Res Function(Subject) _then;

/// Create a copy of Subject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customId = freezed,Object? userId = freezed,Object? type = freezed,Object? name = null,Object? fullName = freezed,Object? email = freezed,Object? emailCopy = freezed,Object? phone = freezed,Object? web = freezed,Object? street = freezed,Object? street2 = freezed,Object? city = freezed,Object? zip = freezed,Object? country = freezed,Object? hasDeliveryAddress = freezed,Object? deliveryName = freezed,Object? deliveryStreet = freezed,Object? deliveryCity = freezed,Object? deliveryZip = freezed,Object? deliveryCountry = freezed,Object? due = freezed,Object? currency = freezed,Object? language = freezed,Object? footerNote = freezed,Object? privateNote = freezed,Object? tags = freezed,Object? registrationNo = freezed,Object? vatNo = freezed,Object? localVatNo = freezed,Object? unreliable = freezed,Object? unreliableCheckedAt = freezed,Object? legalForm = freezed,Object? vatMode = freezed,Object? bankAccount = freezed,Object? iban = freezed,Object? swiftBic = freezed,Object? variableSymbol = freezed,Object? settingUpdateFromAres = freezed,Object? aresUpdate = freezed,Object? settingInvoicePdfAttachments = freezed,Object? settingEstimatePdfAttachments = freezed,Object? settingInvoiceSendReminders = freezed,Object? suggestionEnabled = freezed,Object? customEmailText = freezed,Object? overdueEmailText = freezed,Object? invoiceFromProformaEmailText = freezed,Object? thankYouEmailText = freezed,Object? customEstimateEmailText = freezed,Object? webinvoiceHistory = freezed,Object? htmlUrl = freezed,Object? url = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SubjectType?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailCopy: freezed == emailCopy ? _self.emailCopy : emailCopy // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,web: freezed == web ? _self.web : web // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,street2: freezed == street2 ? _self.street2 : street2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,hasDeliveryAddress: freezed == hasDeliveryAddress ? _self.hasDeliveryAddress : hasDeliveryAddress // ignore: cast_nullable_to_non_nullable
as bool?,deliveryName: freezed == deliveryName ? _self.deliveryName : deliveryName // ignore: cast_nullable_to_non_nullable
as String?,deliveryStreet: freezed == deliveryStreet ? _self.deliveryStreet : deliveryStreet // ignore: cast_nullable_to_non_nullable
as String?,deliveryCity: freezed == deliveryCity ? _self.deliveryCity : deliveryCity // ignore: cast_nullable_to_non_nullable
as String?,deliveryZip: freezed == deliveryZip ? _self.deliveryZip : deliveryZip // ignore: cast_nullable_to_non_nullable
as String?,deliveryCountry: freezed == deliveryCountry ? _self.deliveryCountry : deliveryCountry // ignore: cast_nullable_to_non_nullable
as String?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,footerNote: freezed == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,registrationNo: freezed == registrationNo ? _self.registrationNo : registrationNo // ignore: cast_nullable_to_non_nullable
as String?,vatNo: freezed == vatNo ? _self.vatNo : vatNo // ignore: cast_nullable_to_non_nullable
as String?,localVatNo: freezed == localVatNo ? _self.localVatNo : localVatNo // ignore: cast_nullable_to_non_nullable
as String?,unreliable: freezed == unreliable ? _self.unreliable : unreliable // ignore: cast_nullable_to_non_nullable
as bool?,unreliableCheckedAt: freezed == unreliableCheckedAt ? _self.unreliableCheckedAt : unreliableCheckedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,legalForm: freezed == legalForm ? _self.legalForm : legalForm // ignore: cast_nullable_to_non_nullable
as String?,vatMode: freezed == vatMode ? _self.vatMode : vatMode // ignore: cast_nullable_to_non_nullable
as String?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,settingUpdateFromAres: freezed == settingUpdateFromAres ? _self.settingUpdateFromAres : settingUpdateFromAres // ignore: cast_nullable_to_non_nullable
as SubjectSetting?,aresUpdate: freezed == aresUpdate ? _self.aresUpdate : aresUpdate // ignore: cast_nullable_to_non_nullable
as bool?,settingInvoicePdfAttachments: freezed == settingInvoicePdfAttachments ? _self.settingInvoicePdfAttachments : settingInvoicePdfAttachments // ignore: cast_nullable_to_non_nullable
as SubjectSetting?,settingEstimatePdfAttachments: freezed == settingEstimatePdfAttachments ? _self.settingEstimatePdfAttachments : settingEstimatePdfAttachments // ignore: cast_nullable_to_non_nullable
as SubjectSetting?,settingInvoiceSendReminders: freezed == settingInvoiceSendReminders ? _self.settingInvoiceSendReminders : settingInvoiceSendReminders // ignore: cast_nullable_to_non_nullable
as SubjectSetting?,suggestionEnabled: freezed == suggestionEnabled ? _self.suggestionEnabled : suggestionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,customEmailText: freezed == customEmailText ? _self.customEmailText : customEmailText // ignore: cast_nullable_to_non_nullable
as String?,overdueEmailText: freezed == overdueEmailText ? _self.overdueEmailText : overdueEmailText // ignore: cast_nullable_to_non_nullable
as String?,invoiceFromProformaEmailText: freezed == invoiceFromProformaEmailText ? _self.invoiceFromProformaEmailText : invoiceFromProformaEmailText // ignore: cast_nullable_to_non_nullable
as String?,thankYouEmailText: freezed == thankYouEmailText ? _self.thankYouEmailText : thankYouEmailText // ignore: cast_nullable_to_non_nullable
as String?,customEstimateEmailText: freezed == customEstimateEmailText ? _self.customEstimateEmailText : customEstimateEmailText // ignore: cast_nullable_to_non_nullable
as String?,webinvoiceHistory: freezed == webinvoiceHistory ? _self.webinvoiceHistory : webinvoiceHistory // ignore: cast_nullable_to_non_nullable
as WebinvoiceHistory?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Subject].
extension SubjectPatterns on Subject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Subject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Subject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Subject value)  $default,){
final _that = this;
switch (_that) {
case _Subject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Subject value)?  $default,){
final _that = this;
switch (_that) {
case _Subject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId, @JsonKey(name: 'user_id')  int? userId,  SubjectType? type,  String name, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'email_copy')  String? emailCopy,  String? phone,  String? web,  String? street,  String? street2,  String? city,  String? zip,  String? country, @JsonKey(name: 'has_delivery_address')  bool? hasDeliveryAddress, @JsonKey(name: 'delivery_name')  String? deliveryName, @JsonKey(name: 'delivery_street')  String? deliveryStreet, @JsonKey(name: 'delivery_city')  String? deliveryCity, @JsonKey(name: 'delivery_zip')  String? deliveryZip, @JsonKey(name: 'delivery_country')  String? deliveryCountry,  int? due,  String? currency,  String? language, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'registration_no')  String? registrationNo, @JsonKey(name: 'vat_no')  String? vatNo, @JsonKey(name: 'local_vat_no')  String? localVatNo,  bool? unreliable, @JsonKey(name: 'unreliable_checked_at')  DateTime? unreliableCheckedAt, @JsonKey(name: 'legal_form')  String? legalForm, @JsonKey(name: 'vat_mode')  String? vatMode, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'setting_update_from_ares')  SubjectSetting? settingUpdateFromAres, @JsonKey(name: 'ares_update')  bool? aresUpdate, @JsonKey(name: 'setting_invoice_pdf_attachments')  SubjectSetting? settingInvoicePdfAttachments, @JsonKey(name: 'setting_estimate_pdf_attachments')  SubjectSetting? settingEstimatePdfAttachments, @JsonKey(name: 'setting_invoice_send_reminders')  SubjectSetting? settingInvoiceSendReminders, @JsonKey(name: 'suggestion_enabled')  bool? suggestionEnabled, @JsonKey(name: 'custom_email_text')  String? customEmailText, @JsonKey(name: 'overdue_email_text')  String? overdueEmailText, @JsonKey(name: 'invoice_from_proforma_email_text')  String? invoiceFromProformaEmailText, @JsonKey(name: 'thank_you_email_text')  String? thankYouEmailText, @JsonKey(name: 'custom_estimate_email_text')  String? customEstimateEmailText, @JsonKey(name: 'webinvoice_history')  WebinvoiceHistory? webinvoiceHistory, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Subject() when $default != null:
return $default(_that.id,_that.customId,_that.userId,_that.type,_that.name,_that.fullName,_that.email,_that.emailCopy,_that.phone,_that.web,_that.street,_that.street2,_that.city,_that.zip,_that.country,_that.hasDeliveryAddress,_that.deliveryName,_that.deliveryStreet,_that.deliveryCity,_that.deliveryZip,_that.deliveryCountry,_that.due,_that.currency,_that.language,_that.footerNote,_that.privateNote,_that.tags,_that.registrationNo,_that.vatNo,_that.localVatNo,_that.unreliable,_that.unreliableCheckedAt,_that.legalForm,_that.vatMode,_that.bankAccount,_that.iban,_that.swiftBic,_that.variableSymbol,_that.settingUpdateFromAres,_that.aresUpdate,_that.settingInvoicePdfAttachments,_that.settingEstimatePdfAttachments,_that.settingInvoiceSendReminders,_that.suggestionEnabled,_that.customEmailText,_that.overdueEmailText,_that.invoiceFromProformaEmailText,_that.thankYouEmailText,_that.customEstimateEmailText,_that.webinvoiceHistory,_that.htmlUrl,_that.url,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId, @JsonKey(name: 'user_id')  int? userId,  SubjectType? type,  String name, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'email_copy')  String? emailCopy,  String? phone,  String? web,  String? street,  String? street2,  String? city,  String? zip,  String? country, @JsonKey(name: 'has_delivery_address')  bool? hasDeliveryAddress, @JsonKey(name: 'delivery_name')  String? deliveryName, @JsonKey(name: 'delivery_street')  String? deliveryStreet, @JsonKey(name: 'delivery_city')  String? deliveryCity, @JsonKey(name: 'delivery_zip')  String? deliveryZip, @JsonKey(name: 'delivery_country')  String? deliveryCountry,  int? due,  String? currency,  String? language, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'registration_no')  String? registrationNo, @JsonKey(name: 'vat_no')  String? vatNo, @JsonKey(name: 'local_vat_no')  String? localVatNo,  bool? unreliable, @JsonKey(name: 'unreliable_checked_at')  DateTime? unreliableCheckedAt, @JsonKey(name: 'legal_form')  String? legalForm, @JsonKey(name: 'vat_mode')  String? vatMode, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'setting_update_from_ares')  SubjectSetting? settingUpdateFromAres, @JsonKey(name: 'ares_update')  bool? aresUpdate, @JsonKey(name: 'setting_invoice_pdf_attachments')  SubjectSetting? settingInvoicePdfAttachments, @JsonKey(name: 'setting_estimate_pdf_attachments')  SubjectSetting? settingEstimatePdfAttachments, @JsonKey(name: 'setting_invoice_send_reminders')  SubjectSetting? settingInvoiceSendReminders, @JsonKey(name: 'suggestion_enabled')  bool? suggestionEnabled, @JsonKey(name: 'custom_email_text')  String? customEmailText, @JsonKey(name: 'overdue_email_text')  String? overdueEmailText, @JsonKey(name: 'invoice_from_proforma_email_text')  String? invoiceFromProformaEmailText, @JsonKey(name: 'thank_you_email_text')  String? thankYouEmailText, @JsonKey(name: 'custom_estimate_email_text')  String? customEstimateEmailText, @JsonKey(name: 'webinvoice_history')  WebinvoiceHistory? webinvoiceHistory, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Subject():
return $default(_that.id,_that.customId,_that.userId,_that.type,_that.name,_that.fullName,_that.email,_that.emailCopy,_that.phone,_that.web,_that.street,_that.street2,_that.city,_that.zip,_that.country,_that.hasDeliveryAddress,_that.deliveryName,_that.deliveryStreet,_that.deliveryCity,_that.deliveryZip,_that.deliveryCountry,_that.due,_that.currency,_that.language,_that.footerNote,_that.privateNote,_that.tags,_that.registrationNo,_that.vatNo,_that.localVatNo,_that.unreliable,_that.unreliableCheckedAt,_that.legalForm,_that.vatMode,_that.bankAccount,_that.iban,_that.swiftBic,_that.variableSymbol,_that.settingUpdateFromAres,_that.aresUpdate,_that.settingInvoicePdfAttachments,_that.settingEstimatePdfAttachments,_that.settingInvoiceSendReminders,_that.suggestionEnabled,_that.customEmailText,_that.overdueEmailText,_that.invoiceFromProformaEmailText,_that.thankYouEmailText,_that.customEstimateEmailText,_that.webinvoiceHistory,_that.htmlUrl,_that.url,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'custom_id')  String? customId, @JsonKey(name: 'user_id')  int? userId,  SubjectType? type,  String name, @JsonKey(name: 'full_name')  String? fullName,  String? email, @JsonKey(name: 'email_copy')  String? emailCopy,  String? phone,  String? web,  String? street,  String? street2,  String? city,  String? zip,  String? country, @JsonKey(name: 'has_delivery_address')  bool? hasDeliveryAddress, @JsonKey(name: 'delivery_name')  String? deliveryName, @JsonKey(name: 'delivery_street')  String? deliveryStreet, @JsonKey(name: 'delivery_city')  String? deliveryCity, @JsonKey(name: 'delivery_zip')  String? deliveryZip, @JsonKey(name: 'delivery_country')  String? deliveryCountry,  int? due,  String? currency,  String? language, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'registration_no')  String? registrationNo, @JsonKey(name: 'vat_no')  String? vatNo, @JsonKey(name: 'local_vat_no')  String? localVatNo,  bool? unreliable, @JsonKey(name: 'unreliable_checked_at')  DateTime? unreliableCheckedAt, @JsonKey(name: 'legal_form')  String? legalForm, @JsonKey(name: 'vat_mode')  String? vatMode, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'setting_update_from_ares')  SubjectSetting? settingUpdateFromAres, @JsonKey(name: 'ares_update')  bool? aresUpdate, @JsonKey(name: 'setting_invoice_pdf_attachments')  SubjectSetting? settingInvoicePdfAttachments, @JsonKey(name: 'setting_estimate_pdf_attachments')  SubjectSetting? settingEstimatePdfAttachments, @JsonKey(name: 'setting_invoice_send_reminders')  SubjectSetting? settingInvoiceSendReminders, @JsonKey(name: 'suggestion_enabled')  bool? suggestionEnabled, @JsonKey(name: 'custom_email_text')  String? customEmailText, @JsonKey(name: 'overdue_email_text')  String? overdueEmailText, @JsonKey(name: 'invoice_from_proforma_email_text')  String? invoiceFromProformaEmailText, @JsonKey(name: 'thank_you_email_text')  String? thankYouEmailText, @JsonKey(name: 'custom_estimate_email_text')  String? customEstimateEmailText, @JsonKey(name: 'webinvoice_history')  WebinvoiceHistory? webinvoiceHistory, @JsonKey(name: 'html_url')  String? htmlUrl,  String? url, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Subject() when $default != null:
return $default(_that.id,_that.customId,_that.userId,_that.type,_that.name,_that.fullName,_that.email,_that.emailCopy,_that.phone,_that.web,_that.street,_that.street2,_that.city,_that.zip,_that.country,_that.hasDeliveryAddress,_that.deliveryName,_that.deliveryStreet,_that.deliveryCity,_that.deliveryZip,_that.deliveryCountry,_that.due,_that.currency,_that.language,_that.footerNote,_that.privateNote,_that.tags,_that.registrationNo,_that.vatNo,_that.localVatNo,_that.unreliable,_that.unreliableCheckedAt,_that.legalForm,_that.vatMode,_that.bankAccount,_that.iban,_that.swiftBic,_that.variableSymbol,_that.settingUpdateFromAres,_that.aresUpdate,_that.settingInvoicePdfAttachments,_that.settingEstimatePdfAttachments,_that.settingInvoiceSendReminders,_that.suggestionEnabled,_that.customEmailText,_that.overdueEmailText,_that.invoiceFromProformaEmailText,_that.thankYouEmailText,_that.customEstimateEmailText,_that.webinvoiceHistory,_that.htmlUrl,_that.url,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Subject implements Subject {
  const _Subject({this.id, @JsonKey(name: 'custom_id') this.customId, @JsonKey(name: 'user_id') this.userId, this.type, required this.name, @JsonKey(name: 'full_name') this.fullName, this.email, @JsonKey(name: 'email_copy') this.emailCopy, this.phone, this.web, this.street, this.street2, this.city, this.zip, this.country, @JsonKey(name: 'has_delivery_address') this.hasDeliveryAddress, @JsonKey(name: 'delivery_name') this.deliveryName, @JsonKey(name: 'delivery_street') this.deliveryStreet, @JsonKey(name: 'delivery_city') this.deliveryCity, @JsonKey(name: 'delivery_zip') this.deliveryZip, @JsonKey(name: 'delivery_country') this.deliveryCountry, this.due, this.currency, this.language, @JsonKey(name: 'footer_note') this.footerNote, @JsonKey(name: 'private_note') this.privateNote, final  List<String>? tags, @JsonKey(name: 'registration_no') this.registrationNo, @JsonKey(name: 'vat_no') this.vatNo, @JsonKey(name: 'local_vat_no') this.localVatNo, this.unreliable, @JsonKey(name: 'unreliable_checked_at') this.unreliableCheckedAt, @JsonKey(name: 'legal_form') this.legalForm, @JsonKey(name: 'vat_mode') this.vatMode, @JsonKey(name: 'bank_account') this.bankAccount, this.iban, @JsonKey(name: 'swift_bic') this.swiftBic, @JsonKey(name: 'variable_symbol') this.variableSymbol, @JsonKey(name: 'setting_update_from_ares') this.settingUpdateFromAres, @JsonKey(name: 'ares_update') this.aresUpdate, @JsonKey(name: 'setting_invoice_pdf_attachments') this.settingInvoicePdfAttachments, @JsonKey(name: 'setting_estimate_pdf_attachments') this.settingEstimatePdfAttachments, @JsonKey(name: 'setting_invoice_send_reminders') this.settingInvoiceSendReminders, @JsonKey(name: 'suggestion_enabled') this.suggestionEnabled, @JsonKey(name: 'custom_email_text') this.customEmailText, @JsonKey(name: 'overdue_email_text') this.overdueEmailText, @JsonKey(name: 'invoice_from_proforma_email_text') this.invoiceFromProformaEmailText, @JsonKey(name: 'thank_you_email_text') this.thankYouEmailText, @JsonKey(name: 'custom_estimate_email_text') this.customEstimateEmailText, @JsonKey(name: 'webinvoice_history') this.webinvoiceHistory, @JsonKey(name: 'html_url') this.htmlUrl, this.url, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _tags = tags;
  factory _Subject.fromJson(Map<String, dynamic> json) => _$SubjectFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'custom_id') final  String? customId;
@override@JsonKey(name: 'user_id') final  int? userId;
@override final  SubjectType? type;
@override final  String name;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override final  String? email;
@override@JsonKey(name: 'email_copy') final  String? emailCopy;
@override final  String? phone;
@override final  String? web;
@override final  String? street;
@override final  String? street2;
@override final  String? city;
@override final  String? zip;
@override final  String? country;
@override@JsonKey(name: 'has_delivery_address') final  bool? hasDeliveryAddress;
@override@JsonKey(name: 'delivery_name') final  String? deliveryName;
@override@JsonKey(name: 'delivery_street') final  String? deliveryStreet;
@override@JsonKey(name: 'delivery_city') final  String? deliveryCity;
@override@JsonKey(name: 'delivery_zip') final  String? deliveryZip;
@override@JsonKey(name: 'delivery_country') final  String? deliveryCountry;
@override final  int? due;
@override final  String? currency;
@override final  String? language;
@override@JsonKey(name: 'footer_note') final  String? footerNote;
@override@JsonKey(name: 'private_note') final  String? privateNote;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'registration_no') final  String? registrationNo;
@override@JsonKey(name: 'vat_no') final  String? vatNo;
@override@JsonKey(name: 'local_vat_no') final  String? localVatNo;
@override final  bool? unreliable;
@override@JsonKey(name: 'unreliable_checked_at') final  DateTime? unreliableCheckedAt;
@override@JsonKey(name: 'legal_form') final  String? legalForm;
@override@JsonKey(name: 'vat_mode') final  String? vatMode;
@override@JsonKey(name: 'bank_account') final  String? bankAccount;
@override final  String? iban;
@override@JsonKey(name: 'swift_bic') final  String? swiftBic;
@override@JsonKey(name: 'variable_symbol') final  String? variableSymbol;
@override@JsonKey(name: 'setting_update_from_ares') final  SubjectSetting? settingUpdateFromAres;
@override@JsonKey(name: 'ares_update') final  bool? aresUpdate;
@override@JsonKey(name: 'setting_invoice_pdf_attachments') final  SubjectSetting? settingInvoicePdfAttachments;
@override@JsonKey(name: 'setting_estimate_pdf_attachments') final  SubjectSetting? settingEstimatePdfAttachments;
@override@JsonKey(name: 'setting_invoice_send_reminders') final  SubjectSetting? settingInvoiceSendReminders;
@override@JsonKey(name: 'suggestion_enabled') final  bool? suggestionEnabled;
@override@JsonKey(name: 'custom_email_text') final  String? customEmailText;
@override@JsonKey(name: 'overdue_email_text') final  String? overdueEmailText;
@override@JsonKey(name: 'invoice_from_proforma_email_text') final  String? invoiceFromProformaEmailText;
@override@JsonKey(name: 'thank_you_email_text') final  String? thankYouEmailText;
@override@JsonKey(name: 'custom_estimate_email_text') final  String? customEstimateEmailText;
@override@JsonKey(name: 'webinvoice_history') final  WebinvoiceHistory? webinvoiceHistory;
@override@JsonKey(name: 'html_url') final  String? htmlUrl;
@override final  String? url;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of Subject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectCopyWith<_Subject> get copyWith => __$SubjectCopyWithImpl<_Subject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subject&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailCopy, emailCopy) || other.emailCopy == emailCopy)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.web, web) || other.web == web)&&(identical(other.street, street) || other.street == street)&&(identical(other.street2, street2) || other.street2 == street2)&&(identical(other.city, city) || other.city == city)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.country, country) || other.country == country)&&(identical(other.hasDeliveryAddress, hasDeliveryAddress) || other.hasDeliveryAddress == hasDeliveryAddress)&&(identical(other.deliveryName, deliveryName) || other.deliveryName == deliveryName)&&(identical(other.deliveryStreet, deliveryStreet) || other.deliveryStreet == deliveryStreet)&&(identical(other.deliveryCity, deliveryCity) || other.deliveryCity == deliveryCity)&&(identical(other.deliveryZip, deliveryZip) || other.deliveryZip == deliveryZip)&&(identical(other.deliveryCountry, deliveryCountry) || other.deliveryCountry == deliveryCountry)&&(identical(other.due, due) || other.due == due)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.language, language) || other.language == language)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.registrationNo, registrationNo) || other.registrationNo == registrationNo)&&(identical(other.vatNo, vatNo) || other.vatNo == vatNo)&&(identical(other.localVatNo, localVatNo) || other.localVatNo == localVatNo)&&(identical(other.unreliable, unreliable) || other.unreliable == unreliable)&&(identical(other.unreliableCheckedAt, unreliableCheckedAt) || other.unreliableCheckedAt == unreliableCheckedAt)&&(identical(other.legalForm, legalForm) || other.legalForm == legalForm)&&(identical(other.vatMode, vatMode) || other.vatMode == vatMode)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.settingUpdateFromAres, settingUpdateFromAres) || other.settingUpdateFromAres == settingUpdateFromAres)&&(identical(other.aresUpdate, aresUpdate) || other.aresUpdate == aresUpdate)&&(identical(other.settingInvoicePdfAttachments, settingInvoicePdfAttachments) || other.settingInvoicePdfAttachments == settingInvoicePdfAttachments)&&(identical(other.settingEstimatePdfAttachments, settingEstimatePdfAttachments) || other.settingEstimatePdfAttachments == settingEstimatePdfAttachments)&&(identical(other.settingInvoiceSendReminders, settingInvoiceSendReminders) || other.settingInvoiceSendReminders == settingInvoiceSendReminders)&&(identical(other.suggestionEnabled, suggestionEnabled) || other.suggestionEnabled == suggestionEnabled)&&(identical(other.customEmailText, customEmailText) || other.customEmailText == customEmailText)&&(identical(other.overdueEmailText, overdueEmailText) || other.overdueEmailText == overdueEmailText)&&(identical(other.invoiceFromProformaEmailText, invoiceFromProformaEmailText) || other.invoiceFromProformaEmailText == invoiceFromProformaEmailText)&&(identical(other.thankYouEmailText, thankYouEmailText) || other.thankYouEmailText == thankYouEmailText)&&(identical(other.customEstimateEmailText, customEstimateEmailText) || other.customEstimateEmailText == customEstimateEmailText)&&(identical(other.webinvoiceHistory, webinvoiceHistory) || other.webinvoiceHistory == webinvoiceHistory)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,userId,type,name,fullName,email,emailCopy,phone,web,street,street2,city,zip,country,hasDeliveryAddress,deliveryName,deliveryStreet,deliveryCity,deliveryZip,deliveryCountry,due,currency,language,footerNote,privateNote,const DeepCollectionEquality().hash(_tags),registrationNo,vatNo,localVatNo,unreliable,unreliableCheckedAt,legalForm,vatMode,bankAccount,iban,swiftBic,variableSymbol,settingUpdateFromAres,aresUpdate,settingInvoicePdfAttachments,settingEstimatePdfAttachments,settingInvoiceSendReminders,suggestionEnabled,customEmailText,overdueEmailText,invoiceFromProformaEmailText,thankYouEmailText,customEstimateEmailText,webinvoiceHistory,htmlUrl,url,createdAt,updatedAt]);

@override
String toString() {
  return 'Subject(id: $id, customId: $customId, userId: $userId, type: $type, name: $name, fullName: $fullName, email: $email, emailCopy: $emailCopy, phone: $phone, web: $web, street: $street, street2: $street2, city: $city, zip: $zip, country: $country, hasDeliveryAddress: $hasDeliveryAddress, deliveryName: $deliveryName, deliveryStreet: $deliveryStreet, deliveryCity: $deliveryCity, deliveryZip: $deliveryZip, deliveryCountry: $deliveryCountry, due: $due, currency: $currency, language: $language, footerNote: $footerNote, privateNote: $privateNote, tags: $tags, registrationNo: $registrationNo, vatNo: $vatNo, localVatNo: $localVatNo, unreliable: $unreliable, unreliableCheckedAt: $unreliableCheckedAt, legalForm: $legalForm, vatMode: $vatMode, bankAccount: $bankAccount, iban: $iban, swiftBic: $swiftBic, variableSymbol: $variableSymbol, settingUpdateFromAres: $settingUpdateFromAres, aresUpdate: $aresUpdate, settingInvoicePdfAttachments: $settingInvoicePdfAttachments, settingEstimatePdfAttachments: $settingEstimatePdfAttachments, settingInvoiceSendReminders: $settingInvoiceSendReminders, suggestionEnabled: $suggestionEnabled, customEmailText: $customEmailText, overdueEmailText: $overdueEmailText, invoiceFromProformaEmailText: $invoiceFromProformaEmailText, thankYouEmailText: $thankYouEmailText, customEstimateEmailText: $customEstimateEmailText, webinvoiceHistory: $webinvoiceHistory, htmlUrl: $htmlUrl, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SubjectCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$SubjectCopyWith(_Subject value, $Res Function(_Subject) _then) = __$SubjectCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId,@JsonKey(name: 'user_id') int? userId, SubjectType? type, String name,@JsonKey(name: 'full_name') String? fullName, String? email,@JsonKey(name: 'email_copy') String? emailCopy, String? phone, String? web, String? street, String? street2, String? city, String? zip, String? country,@JsonKey(name: 'has_delivery_address') bool? hasDeliveryAddress,@JsonKey(name: 'delivery_name') String? deliveryName,@JsonKey(name: 'delivery_street') String? deliveryStreet,@JsonKey(name: 'delivery_city') String? deliveryCity,@JsonKey(name: 'delivery_zip') String? deliveryZip,@JsonKey(name: 'delivery_country') String? deliveryCountry, int? due, String? currency, String? language,@JsonKey(name: 'footer_note') String? footerNote,@JsonKey(name: 'private_note') String? privateNote, List<String>? tags,@JsonKey(name: 'registration_no') String? registrationNo,@JsonKey(name: 'vat_no') String? vatNo,@JsonKey(name: 'local_vat_no') String? localVatNo, bool? unreliable,@JsonKey(name: 'unreliable_checked_at') DateTime? unreliableCheckedAt,@JsonKey(name: 'legal_form') String? legalForm,@JsonKey(name: 'vat_mode') String? vatMode,@JsonKey(name: 'bank_account') String? bankAccount, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'setting_update_from_ares') SubjectSetting? settingUpdateFromAres,@JsonKey(name: 'ares_update') bool? aresUpdate,@JsonKey(name: 'setting_invoice_pdf_attachments') SubjectSetting? settingInvoicePdfAttachments,@JsonKey(name: 'setting_estimate_pdf_attachments') SubjectSetting? settingEstimatePdfAttachments,@JsonKey(name: 'setting_invoice_send_reminders') SubjectSetting? settingInvoiceSendReminders,@JsonKey(name: 'suggestion_enabled') bool? suggestionEnabled,@JsonKey(name: 'custom_email_text') String? customEmailText,@JsonKey(name: 'overdue_email_text') String? overdueEmailText,@JsonKey(name: 'invoice_from_proforma_email_text') String? invoiceFromProformaEmailText,@JsonKey(name: 'thank_you_email_text') String? thankYouEmailText,@JsonKey(name: 'custom_estimate_email_text') String? customEstimateEmailText,@JsonKey(name: 'webinvoice_history') WebinvoiceHistory? webinvoiceHistory,@JsonKey(name: 'html_url') String? htmlUrl, String? url,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$SubjectCopyWithImpl<$Res>
    implements _$SubjectCopyWith<$Res> {
  __$SubjectCopyWithImpl(this._self, this._then);

  final _Subject _self;
  final $Res Function(_Subject) _then;

/// Create a copy of Subject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customId = freezed,Object? userId = freezed,Object? type = freezed,Object? name = null,Object? fullName = freezed,Object? email = freezed,Object? emailCopy = freezed,Object? phone = freezed,Object? web = freezed,Object? street = freezed,Object? street2 = freezed,Object? city = freezed,Object? zip = freezed,Object? country = freezed,Object? hasDeliveryAddress = freezed,Object? deliveryName = freezed,Object? deliveryStreet = freezed,Object? deliveryCity = freezed,Object? deliveryZip = freezed,Object? deliveryCountry = freezed,Object? due = freezed,Object? currency = freezed,Object? language = freezed,Object? footerNote = freezed,Object? privateNote = freezed,Object? tags = freezed,Object? registrationNo = freezed,Object? vatNo = freezed,Object? localVatNo = freezed,Object? unreliable = freezed,Object? unreliableCheckedAt = freezed,Object? legalForm = freezed,Object? vatMode = freezed,Object? bankAccount = freezed,Object? iban = freezed,Object? swiftBic = freezed,Object? variableSymbol = freezed,Object? settingUpdateFromAres = freezed,Object? aresUpdate = freezed,Object? settingInvoicePdfAttachments = freezed,Object? settingEstimatePdfAttachments = freezed,Object? settingInvoiceSendReminders = freezed,Object? suggestionEnabled = freezed,Object? customEmailText = freezed,Object? overdueEmailText = freezed,Object? invoiceFromProformaEmailText = freezed,Object? thankYouEmailText = freezed,Object? customEstimateEmailText = freezed,Object? webinvoiceHistory = freezed,Object? htmlUrl = freezed,Object? url = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Subject(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SubjectType?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailCopy: freezed == emailCopy ? _self.emailCopy : emailCopy // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,web: freezed == web ? _self.web : web // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,street2: freezed == street2 ? _self.street2 : street2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,hasDeliveryAddress: freezed == hasDeliveryAddress ? _self.hasDeliveryAddress : hasDeliveryAddress // ignore: cast_nullable_to_non_nullable
as bool?,deliveryName: freezed == deliveryName ? _self.deliveryName : deliveryName // ignore: cast_nullable_to_non_nullable
as String?,deliveryStreet: freezed == deliveryStreet ? _self.deliveryStreet : deliveryStreet // ignore: cast_nullable_to_non_nullable
as String?,deliveryCity: freezed == deliveryCity ? _self.deliveryCity : deliveryCity // ignore: cast_nullable_to_non_nullable
as String?,deliveryZip: freezed == deliveryZip ? _self.deliveryZip : deliveryZip // ignore: cast_nullable_to_non_nullable
as String?,deliveryCountry: freezed == deliveryCountry ? _self.deliveryCountry : deliveryCountry // ignore: cast_nullable_to_non_nullable
as String?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,footerNote: freezed == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,registrationNo: freezed == registrationNo ? _self.registrationNo : registrationNo // ignore: cast_nullable_to_non_nullable
as String?,vatNo: freezed == vatNo ? _self.vatNo : vatNo // ignore: cast_nullable_to_non_nullable
as String?,localVatNo: freezed == localVatNo ? _self.localVatNo : localVatNo // ignore: cast_nullable_to_non_nullable
as String?,unreliable: freezed == unreliable ? _self.unreliable : unreliable // ignore: cast_nullable_to_non_nullable
as bool?,unreliableCheckedAt: freezed == unreliableCheckedAt ? _self.unreliableCheckedAt : unreliableCheckedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,legalForm: freezed == legalForm ? _self.legalForm : legalForm // ignore: cast_nullable_to_non_nullable
as String?,vatMode: freezed == vatMode ? _self.vatMode : vatMode // ignore: cast_nullable_to_non_nullable
as String?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,settingUpdateFromAres: freezed == settingUpdateFromAres ? _self.settingUpdateFromAres : settingUpdateFromAres // ignore: cast_nullable_to_non_nullable
as SubjectSetting?,aresUpdate: freezed == aresUpdate ? _self.aresUpdate : aresUpdate // ignore: cast_nullable_to_non_nullable
as bool?,settingInvoicePdfAttachments: freezed == settingInvoicePdfAttachments ? _self.settingInvoicePdfAttachments : settingInvoicePdfAttachments // ignore: cast_nullable_to_non_nullable
as SubjectSetting?,settingEstimatePdfAttachments: freezed == settingEstimatePdfAttachments ? _self.settingEstimatePdfAttachments : settingEstimatePdfAttachments // ignore: cast_nullable_to_non_nullable
as SubjectSetting?,settingInvoiceSendReminders: freezed == settingInvoiceSendReminders ? _self.settingInvoiceSendReminders : settingInvoiceSendReminders // ignore: cast_nullable_to_non_nullable
as SubjectSetting?,suggestionEnabled: freezed == suggestionEnabled ? _self.suggestionEnabled : suggestionEnabled // ignore: cast_nullable_to_non_nullable
as bool?,customEmailText: freezed == customEmailText ? _self.customEmailText : customEmailText // ignore: cast_nullable_to_non_nullable
as String?,overdueEmailText: freezed == overdueEmailText ? _self.overdueEmailText : overdueEmailText // ignore: cast_nullable_to_non_nullable
as String?,invoiceFromProformaEmailText: freezed == invoiceFromProformaEmailText ? _self.invoiceFromProformaEmailText : invoiceFromProformaEmailText // ignore: cast_nullable_to_non_nullable
as String?,thankYouEmailText: freezed == thankYouEmailText ? _self.thankYouEmailText : thankYouEmailText // ignore: cast_nullable_to_non_nullable
as String?,customEstimateEmailText: freezed == customEstimateEmailText ? _self.customEstimateEmailText : customEstimateEmailText // ignore: cast_nullable_to_non_nullable
as String?,webinvoiceHistory: freezed == webinvoiceHistory ? _self.webinvoiceHistory : webinvoiceHistory // ignore: cast_nullable_to_non_nullable
as WebinvoiceHistory?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
