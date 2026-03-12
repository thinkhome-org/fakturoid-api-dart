// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Invoice {

 int? get id;@JsonKey(name: 'custom_id') String? get customId;@JsonKey(name: 'document_type') DocumentType? get documentType;@JsonKey(name: 'proforma_followup_document') ProformaFollowupDocument? get proformaFollowupDocument;@JsonKey(name: 'tax_document_ids') List<int>? get taxDocumentIds;@JsonKey(name: 'correction_id') int? get correctionId; String? get number;@JsonKey(name: 'number_format_id') int? get numberFormatId;@JsonKey(name: 'variable_symbol') String? get variableSymbol;@JsonKey(name: 'your_name') String? get yourName;@JsonKey(name: 'your_street') String? get yourStreet;@JsonKey(name: 'your_city') String? get yourCity;@JsonKey(name: 'your_zip') String? get yourZip;@JsonKey(name: 'your_country') String? get yourCountry;@JsonKey(name: 'your_registration_no') String? get yourRegistrationNo;@JsonKey(name: 'your_vat_no') String? get yourVatNo;@JsonKey(name: 'your_local_vat_no') String? get yourLocalVatNo;@JsonKey(name: 'client_name') String? get clientName;@JsonKey(name: 'client_street') String? get clientStreet;@JsonKey(name: 'client_city') String? get clientCity;@JsonKey(name: 'client_zip') String? get clientZip;@JsonKey(name: 'client_country') String? get clientCountry;@JsonKey(name: 'client_registration_no') String? get clientRegistrationNo;@JsonKey(name: 'client_vat_no') String? get clientVatNo;@JsonKey(name: 'client_local_vat_no') String? get clientLocalVatNo;@JsonKey(name: 'subject_id') int get subjectId;@JsonKey(name: 'subject_custom_id') String? get subjectCustomId;@JsonKey(name: 'generator_id') int? get generatorId;@JsonKey(name: 'related_id') int? get relatedId; bool? get paypal; bool? get gopay; String? get token; InvoiceStatus? get status;@JsonKey(name: 'order_number') String? get orderNumber;@JsonKey(name: 'issued_on') String? get issuedOn;// Datum ve formátu YYYY-MM-DD
@JsonKey(name: 'taxable_fulfillment_due') String? get taxableFulfillmentDue; int? get due;@JsonKey(name: 'due_on') String? get dueOn;@JsonKey(name: 'sent_at') DateTime? get sentAt;@JsonKey(name: 'paid_on') String? get paidOn;@JsonKey(name: 'reminder_sent_at') DateTime? get reminderSentAt;@JsonKey(name: 'last_reminder_sent_at') DateTime? get lastReminderSentAt;@JsonKey(name: 'cancelled_at') DateTime? get cancelledAt;@JsonKey(name: 'uncollectible_at') DateTime? get uncollectibleAt;@JsonKey(name: 'locked_at') DateTime? get lockedAt;@JsonKey(name: 'webinvoice_seen_on') String? get webinvoiceSeenOn; String? get note;@JsonKey(name: 'footer_note') String? get footerNote;@JsonKey(name: 'private_note') String? get privateNote; List<String>? get tags;@JsonKey(name: 'bank_account_id') int? get bankAccountId;@JsonKey(name: 'bank_account') String? get bankAccount; String? get iban;@JsonKey(name: 'swift_bic') String? get swiftBic;@JsonKey(name: 'iban_visibility') IbanVisibility? get ibanVisibility;@JsonKey(name: 'payment_method') PaymentMethod? get paymentMethod;@JsonKey(name: 'custom_payment_method') String? get customPaymentMethod; String? get currency;@JsonKey(name: 'exchange_rate') String? get exchangeRate; DocumentLanguage? get language;@JsonKey(name: 'transferred_tax_liability') bool? get transferredTaxLiability;@JsonKey(name: 'supply_code') String? get supplyCode; OssMode? get oss;@JsonKey(name: 'vat_price_mode') VatPriceMode? get vatPriceMode;@JsonKey(name: 'round_total') bool? get roundTotal; String? get subtotal; String? get total;@JsonKey(name: 'native_subtotal') String? get nativeSubtotal;@JsonKey(name: 'native_total') String? get nativeTotal;@JsonKey(name: 'remaining_amount') String? get remainingAmount;@JsonKey(name: 'remaining_native_amount') String? get remainingNativeAmount; List<InvoiceLine>? get lines; List<InvoicePayment>? get payments;@JsonKey(name: 'html_url') String? get htmlUrl;@JsonKey(name: 'public_html_url') String? get publicHtmlUrl; String? get url;@JsonKey(name: 'pdf_url') String? get pdfUrl;@JsonKey(name: 'subject_url') String? get subjectUrl;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of Invoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceCopyWith<Invoice> get copyWith => _$InvoiceCopyWithImpl<Invoice>(this as Invoice, _$identity);

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Invoice&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.proformaFollowupDocument, proformaFollowupDocument) || other.proformaFollowupDocument == proformaFollowupDocument)&&const DeepCollectionEquality().equals(other.taxDocumentIds, taxDocumentIds)&&(identical(other.correctionId, correctionId) || other.correctionId == correctionId)&&(identical(other.number, number) || other.number == number)&&(identical(other.numberFormatId, numberFormatId) || other.numberFormatId == numberFormatId)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.yourName, yourName) || other.yourName == yourName)&&(identical(other.yourStreet, yourStreet) || other.yourStreet == yourStreet)&&(identical(other.yourCity, yourCity) || other.yourCity == yourCity)&&(identical(other.yourZip, yourZip) || other.yourZip == yourZip)&&(identical(other.yourCountry, yourCountry) || other.yourCountry == yourCountry)&&(identical(other.yourRegistrationNo, yourRegistrationNo) || other.yourRegistrationNo == yourRegistrationNo)&&(identical(other.yourVatNo, yourVatNo) || other.yourVatNo == yourVatNo)&&(identical(other.yourLocalVatNo, yourLocalVatNo) || other.yourLocalVatNo == yourLocalVatNo)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.clientStreet, clientStreet) || other.clientStreet == clientStreet)&&(identical(other.clientCity, clientCity) || other.clientCity == clientCity)&&(identical(other.clientZip, clientZip) || other.clientZip == clientZip)&&(identical(other.clientCountry, clientCountry) || other.clientCountry == clientCountry)&&(identical(other.clientRegistrationNo, clientRegistrationNo) || other.clientRegistrationNo == clientRegistrationNo)&&(identical(other.clientVatNo, clientVatNo) || other.clientVatNo == clientVatNo)&&(identical(other.clientLocalVatNo, clientLocalVatNo) || other.clientLocalVatNo == clientLocalVatNo)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectCustomId, subjectCustomId) || other.subjectCustomId == subjectCustomId)&&(identical(other.generatorId, generatorId) || other.generatorId == generatorId)&&(identical(other.relatedId, relatedId) || other.relatedId == relatedId)&&(identical(other.paypal, paypal) || other.paypal == paypal)&&(identical(other.gopay, gopay) || other.gopay == gopay)&&(identical(other.token, token) || other.token == token)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.issuedOn, issuedOn) || other.issuedOn == issuedOn)&&(identical(other.taxableFulfillmentDue, taxableFulfillmentDue) || other.taxableFulfillmentDue == taxableFulfillmentDue)&&(identical(other.due, due) || other.due == due)&&(identical(other.dueOn, dueOn) || other.dueOn == dueOn)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.reminderSentAt, reminderSentAt) || other.reminderSentAt == reminderSentAt)&&(identical(other.lastReminderSentAt, lastReminderSentAt) || other.lastReminderSentAt == lastReminderSentAt)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.uncollectibleAt, uncollectibleAt) || other.uncollectibleAt == uncollectibleAt)&&(identical(other.lockedAt, lockedAt) || other.lockedAt == lockedAt)&&(identical(other.webinvoiceSeenOn, webinvoiceSeenOn) || other.webinvoiceSeenOn == webinvoiceSeenOn)&&(identical(other.note, note) || other.note == note)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic)&&(identical(other.ibanVisibility, ibanVisibility) || other.ibanVisibility == ibanVisibility)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.customPaymentMethod, customPaymentMethod) || other.customPaymentMethod == customPaymentMethod)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.language, language) || other.language == language)&&(identical(other.transferredTaxLiability, transferredTaxLiability) || other.transferredTaxLiability == transferredTaxLiability)&&(identical(other.supplyCode, supplyCode) || other.supplyCode == supplyCode)&&(identical(other.oss, oss) || other.oss == oss)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.roundTotal, roundTotal) || other.roundTotal == roundTotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.nativeSubtotal, nativeSubtotal) || other.nativeSubtotal == nativeSubtotal)&&(identical(other.nativeTotal, nativeTotal) || other.nativeTotal == nativeTotal)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount)&&(identical(other.remainingNativeAmount, remainingNativeAmount) || other.remainingNativeAmount == remainingNativeAmount)&&const DeepCollectionEquality().equals(other.lines, lines)&&const DeepCollectionEquality().equals(other.payments, payments)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.publicHtmlUrl, publicHtmlUrl) || other.publicHtmlUrl == publicHtmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.subjectUrl, subjectUrl) || other.subjectUrl == subjectUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,documentType,proformaFollowupDocument,const DeepCollectionEquality().hash(taxDocumentIds),correctionId,number,numberFormatId,variableSymbol,yourName,yourStreet,yourCity,yourZip,yourCountry,yourRegistrationNo,yourVatNo,yourLocalVatNo,clientName,clientStreet,clientCity,clientZip,clientCountry,clientRegistrationNo,clientVatNo,clientLocalVatNo,subjectId,subjectCustomId,generatorId,relatedId,paypal,gopay,token,status,orderNumber,issuedOn,taxableFulfillmentDue,due,dueOn,sentAt,paidOn,reminderSentAt,lastReminderSentAt,cancelledAt,uncollectibleAt,lockedAt,webinvoiceSeenOn,note,footerNote,privateNote,const DeepCollectionEquality().hash(tags),bankAccountId,bankAccount,iban,swiftBic,ibanVisibility,paymentMethod,customPaymentMethod,currency,exchangeRate,language,transferredTaxLiability,supplyCode,oss,vatPriceMode,roundTotal,subtotal,total,nativeSubtotal,nativeTotal,remainingAmount,remainingNativeAmount,const DeepCollectionEquality().hash(lines),const DeepCollectionEquality().hash(payments),htmlUrl,publicHtmlUrl,url,pdfUrl,subjectUrl,createdAt,updatedAt]);

@override
String toString() {
  return 'Invoice(id: $id, customId: $customId, documentType: $documentType, proformaFollowupDocument: $proformaFollowupDocument, taxDocumentIds: $taxDocumentIds, correctionId: $correctionId, number: $number, numberFormatId: $numberFormatId, variableSymbol: $variableSymbol, yourName: $yourName, yourStreet: $yourStreet, yourCity: $yourCity, yourZip: $yourZip, yourCountry: $yourCountry, yourRegistrationNo: $yourRegistrationNo, yourVatNo: $yourVatNo, yourLocalVatNo: $yourLocalVatNo, clientName: $clientName, clientStreet: $clientStreet, clientCity: $clientCity, clientZip: $clientZip, clientCountry: $clientCountry, clientRegistrationNo: $clientRegistrationNo, clientVatNo: $clientVatNo, clientLocalVatNo: $clientLocalVatNo, subjectId: $subjectId, subjectCustomId: $subjectCustomId, generatorId: $generatorId, relatedId: $relatedId, paypal: $paypal, gopay: $gopay, token: $token, status: $status, orderNumber: $orderNumber, issuedOn: $issuedOn, taxableFulfillmentDue: $taxableFulfillmentDue, due: $due, dueOn: $dueOn, sentAt: $sentAt, paidOn: $paidOn, reminderSentAt: $reminderSentAt, lastReminderSentAt: $lastReminderSentAt, cancelledAt: $cancelledAt, uncollectibleAt: $uncollectibleAt, lockedAt: $lockedAt, webinvoiceSeenOn: $webinvoiceSeenOn, note: $note, footerNote: $footerNote, privateNote: $privateNote, tags: $tags, bankAccountId: $bankAccountId, bankAccount: $bankAccount, iban: $iban, swiftBic: $swiftBic, ibanVisibility: $ibanVisibility, paymentMethod: $paymentMethod, customPaymentMethod: $customPaymentMethod, currency: $currency, exchangeRate: $exchangeRate, language: $language, transferredTaxLiability: $transferredTaxLiability, supplyCode: $supplyCode, oss: $oss, vatPriceMode: $vatPriceMode, roundTotal: $roundTotal, subtotal: $subtotal, total: $total, nativeSubtotal: $nativeSubtotal, nativeTotal: $nativeTotal, remainingAmount: $remainingAmount, remainingNativeAmount: $remainingNativeAmount, lines: $lines, payments: $payments, htmlUrl: $htmlUrl, publicHtmlUrl: $publicHtmlUrl, url: $url, pdfUrl: $pdfUrl, subjectUrl: $subjectUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $InvoiceCopyWith<$Res>  {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) _then) = _$InvoiceCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId,@JsonKey(name: 'document_type') DocumentType? documentType,@JsonKey(name: 'proforma_followup_document') ProformaFollowupDocument? proformaFollowupDocument,@JsonKey(name: 'tax_document_ids') List<int>? taxDocumentIds,@JsonKey(name: 'correction_id') int? correctionId, String? number,@JsonKey(name: 'number_format_id') int? numberFormatId,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'your_name') String? yourName,@JsonKey(name: 'your_street') String? yourStreet,@JsonKey(name: 'your_city') String? yourCity,@JsonKey(name: 'your_zip') String? yourZip,@JsonKey(name: 'your_country') String? yourCountry,@JsonKey(name: 'your_registration_no') String? yourRegistrationNo,@JsonKey(name: 'your_vat_no') String? yourVatNo,@JsonKey(name: 'your_local_vat_no') String? yourLocalVatNo,@JsonKey(name: 'client_name') String? clientName,@JsonKey(name: 'client_street') String? clientStreet,@JsonKey(name: 'client_city') String? clientCity,@JsonKey(name: 'client_zip') String? clientZip,@JsonKey(name: 'client_country') String? clientCountry,@JsonKey(name: 'client_registration_no') String? clientRegistrationNo,@JsonKey(name: 'client_vat_no') String? clientVatNo,@JsonKey(name: 'client_local_vat_no') String? clientLocalVatNo,@JsonKey(name: 'subject_id') int subjectId,@JsonKey(name: 'subject_custom_id') String? subjectCustomId,@JsonKey(name: 'generator_id') int? generatorId,@JsonKey(name: 'related_id') int? relatedId, bool? paypal, bool? gopay, String? token, InvoiceStatus? status,@JsonKey(name: 'order_number') String? orderNumber,@JsonKey(name: 'issued_on') String? issuedOn,@JsonKey(name: 'taxable_fulfillment_due') String? taxableFulfillmentDue, int? due,@JsonKey(name: 'due_on') String? dueOn,@JsonKey(name: 'sent_at') DateTime? sentAt,@JsonKey(name: 'paid_on') String? paidOn,@JsonKey(name: 'reminder_sent_at') DateTime? reminderSentAt,@JsonKey(name: 'last_reminder_sent_at') DateTime? lastReminderSentAt,@JsonKey(name: 'cancelled_at') DateTime? cancelledAt,@JsonKey(name: 'uncollectible_at') DateTime? uncollectibleAt,@JsonKey(name: 'locked_at') DateTime? lockedAt,@JsonKey(name: 'webinvoice_seen_on') String? webinvoiceSeenOn, String? note,@JsonKey(name: 'footer_note') String? footerNote,@JsonKey(name: 'private_note') String? privateNote, List<String>? tags,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'bank_account') String? bankAccount, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic,@JsonKey(name: 'iban_visibility') IbanVisibility? ibanVisibility,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'custom_payment_method') String? customPaymentMethod, String? currency,@JsonKey(name: 'exchange_rate') String? exchangeRate, DocumentLanguage? language,@JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,@JsonKey(name: 'supply_code') String? supplyCode, OssMode? oss,@JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,@JsonKey(name: 'round_total') bool? roundTotal, String? subtotal, String? total,@JsonKey(name: 'native_subtotal') String? nativeSubtotal,@JsonKey(name: 'native_total') String? nativeTotal,@JsonKey(name: 'remaining_amount') String? remainingAmount,@JsonKey(name: 'remaining_native_amount') String? remainingNativeAmount, List<InvoiceLine>? lines, List<InvoicePayment>? payments,@JsonKey(name: 'html_url') String? htmlUrl,@JsonKey(name: 'public_html_url') String? publicHtmlUrl, String? url,@JsonKey(name: 'pdf_url') String? pdfUrl,@JsonKey(name: 'subject_url') String? subjectUrl,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$InvoiceCopyWithImpl<$Res>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._self, this._then);

  final Invoice _self;
  final $Res Function(Invoice) _then;

/// Create a copy of Invoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? customId = freezed,Object? documentType = freezed,Object? proformaFollowupDocument = freezed,Object? taxDocumentIds = freezed,Object? correctionId = freezed,Object? number = freezed,Object? numberFormatId = freezed,Object? variableSymbol = freezed,Object? yourName = freezed,Object? yourStreet = freezed,Object? yourCity = freezed,Object? yourZip = freezed,Object? yourCountry = freezed,Object? yourRegistrationNo = freezed,Object? yourVatNo = freezed,Object? yourLocalVatNo = freezed,Object? clientName = freezed,Object? clientStreet = freezed,Object? clientCity = freezed,Object? clientZip = freezed,Object? clientCountry = freezed,Object? clientRegistrationNo = freezed,Object? clientVatNo = freezed,Object? clientLocalVatNo = freezed,Object? subjectId = null,Object? subjectCustomId = freezed,Object? generatorId = freezed,Object? relatedId = freezed,Object? paypal = freezed,Object? gopay = freezed,Object? token = freezed,Object? status = freezed,Object? orderNumber = freezed,Object? issuedOn = freezed,Object? taxableFulfillmentDue = freezed,Object? due = freezed,Object? dueOn = freezed,Object? sentAt = freezed,Object? paidOn = freezed,Object? reminderSentAt = freezed,Object? lastReminderSentAt = freezed,Object? cancelledAt = freezed,Object? uncollectibleAt = freezed,Object? lockedAt = freezed,Object? webinvoiceSeenOn = freezed,Object? note = freezed,Object? footerNote = freezed,Object? privateNote = freezed,Object? tags = freezed,Object? bankAccountId = freezed,Object? bankAccount = freezed,Object? iban = freezed,Object? swiftBic = freezed,Object? ibanVisibility = freezed,Object? paymentMethod = freezed,Object? customPaymentMethod = freezed,Object? currency = freezed,Object? exchangeRate = freezed,Object? language = freezed,Object? transferredTaxLiability = freezed,Object? supplyCode = freezed,Object? oss = freezed,Object? vatPriceMode = freezed,Object? roundTotal = freezed,Object? subtotal = freezed,Object? total = freezed,Object? nativeSubtotal = freezed,Object? nativeTotal = freezed,Object? remainingAmount = freezed,Object? remainingNativeAmount = freezed,Object? lines = freezed,Object? payments = freezed,Object? htmlUrl = freezed,Object? publicHtmlUrl = freezed,Object? url = freezed,Object? pdfUrl = freezed,Object? subjectUrl = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as DocumentType?,proformaFollowupDocument: freezed == proformaFollowupDocument ? _self.proformaFollowupDocument : proformaFollowupDocument // ignore: cast_nullable_to_non_nullable
as ProformaFollowupDocument?,taxDocumentIds: freezed == taxDocumentIds ? _self.taxDocumentIds : taxDocumentIds // ignore: cast_nullable_to_non_nullable
as List<int>?,correctionId: freezed == correctionId ? _self.correctionId : correctionId // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,numberFormatId: freezed == numberFormatId ? _self.numberFormatId : numberFormatId // ignore: cast_nullable_to_non_nullable
as int?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,yourName: freezed == yourName ? _self.yourName : yourName // ignore: cast_nullable_to_non_nullable
as String?,yourStreet: freezed == yourStreet ? _self.yourStreet : yourStreet // ignore: cast_nullable_to_non_nullable
as String?,yourCity: freezed == yourCity ? _self.yourCity : yourCity // ignore: cast_nullable_to_non_nullable
as String?,yourZip: freezed == yourZip ? _self.yourZip : yourZip // ignore: cast_nullable_to_non_nullable
as String?,yourCountry: freezed == yourCountry ? _self.yourCountry : yourCountry // ignore: cast_nullable_to_non_nullable
as String?,yourRegistrationNo: freezed == yourRegistrationNo ? _self.yourRegistrationNo : yourRegistrationNo // ignore: cast_nullable_to_non_nullable
as String?,yourVatNo: freezed == yourVatNo ? _self.yourVatNo : yourVatNo // ignore: cast_nullable_to_non_nullable
as String?,yourLocalVatNo: freezed == yourLocalVatNo ? _self.yourLocalVatNo : yourLocalVatNo // ignore: cast_nullable_to_non_nullable
as String?,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,clientStreet: freezed == clientStreet ? _self.clientStreet : clientStreet // ignore: cast_nullable_to_non_nullable
as String?,clientCity: freezed == clientCity ? _self.clientCity : clientCity // ignore: cast_nullable_to_non_nullable
as String?,clientZip: freezed == clientZip ? _self.clientZip : clientZip // ignore: cast_nullable_to_non_nullable
as String?,clientCountry: freezed == clientCountry ? _self.clientCountry : clientCountry // ignore: cast_nullable_to_non_nullable
as String?,clientRegistrationNo: freezed == clientRegistrationNo ? _self.clientRegistrationNo : clientRegistrationNo // ignore: cast_nullable_to_non_nullable
as String?,clientVatNo: freezed == clientVatNo ? _self.clientVatNo : clientVatNo // ignore: cast_nullable_to_non_nullable
as String?,clientLocalVatNo: freezed == clientLocalVatNo ? _self.clientLocalVatNo : clientLocalVatNo // ignore: cast_nullable_to_non_nullable
as String?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,subjectCustomId: freezed == subjectCustomId ? _self.subjectCustomId : subjectCustomId // ignore: cast_nullable_to_non_nullable
as String?,generatorId: freezed == generatorId ? _self.generatorId : generatorId // ignore: cast_nullable_to_non_nullable
as int?,relatedId: freezed == relatedId ? _self.relatedId : relatedId // ignore: cast_nullable_to_non_nullable
as int?,paypal: freezed == paypal ? _self.paypal : paypal // ignore: cast_nullable_to_non_nullable
as bool?,gopay: freezed == gopay ? _self.gopay : gopay // ignore: cast_nullable_to_non_nullable
as bool?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvoiceStatus?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,issuedOn: freezed == issuedOn ? _self.issuedOn : issuedOn // ignore: cast_nullable_to_non_nullable
as String?,taxableFulfillmentDue: freezed == taxableFulfillmentDue ? _self.taxableFulfillmentDue : taxableFulfillmentDue // ignore: cast_nullable_to_non_nullable
as String?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,dueOn: freezed == dueOn ? _self.dueOn : dueOn // ignore: cast_nullable_to_non_nullable
as String?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,reminderSentAt: freezed == reminderSentAt ? _self.reminderSentAt : reminderSentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastReminderSentAt: freezed == lastReminderSentAt ? _self.lastReminderSentAt : lastReminderSentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,uncollectibleAt: freezed == uncollectibleAt ? _self.uncollectibleAt : uncollectibleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lockedAt: freezed == lockedAt ? _self.lockedAt : lockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,webinvoiceSeenOn: freezed == webinvoiceSeenOn ? _self.webinvoiceSeenOn : webinvoiceSeenOn // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,footerNote: freezed == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,ibanVisibility: freezed == ibanVisibility ? _self.ibanVisibility : ibanVisibility // ignore: cast_nullable_to_non_nullable
as IbanVisibility?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,customPaymentMethod: freezed == customPaymentMethod ? _self.customPaymentMethod : customPaymentMethod // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,exchangeRate: freezed == exchangeRate ? _self.exchangeRate : exchangeRate // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as DocumentLanguage?,transferredTaxLiability: freezed == transferredTaxLiability ? _self.transferredTaxLiability : transferredTaxLiability // ignore: cast_nullable_to_non_nullable
as bool?,supplyCode: freezed == supplyCode ? _self.supplyCode : supplyCode // ignore: cast_nullable_to_non_nullable
as String?,oss: freezed == oss ? _self.oss : oss // ignore: cast_nullable_to_non_nullable
as OssMode?,vatPriceMode: freezed == vatPriceMode ? _self.vatPriceMode : vatPriceMode // ignore: cast_nullable_to_non_nullable
as VatPriceMode?,roundTotal: freezed == roundTotal ? _self.roundTotal : roundTotal // ignore: cast_nullable_to_non_nullable
as bool?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,nativeSubtotal: freezed == nativeSubtotal ? _self.nativeSubtotal : nativeSubtotal // ignore: cast_nullable_to_non_nullable
as String?,nativeTotal: freezed == nativeTotal ? _self.nativeTotal : nativeTotal // ignore: cast_nullable_to_non_nullable
as String?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as String?,remainingNativeAmount: freezed == remainingNativeAmount ? _self.remainingNativeAmount : remainingNativeAmount // ignore: cast_nullable_to_non_nullable
as String?,lines: freezed == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLine>?,payments: freezed == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<InvoicePayment>?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,publicHtmlUrl: freezed == publicHtmlUrl ? _self.publicHtmlUrl : publicHtmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,subjectUrl: freezed == subjectUrl ? _self.subjectUrl : subjectUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Invoice].
extension InvoicePatterns on Invoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Invoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Invoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Invoice value)  $default,){
final _that = this;
switch (_that) {
case _Invoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Invoice value)?  $default,){
final _that = this;
switch (_that) {
case _Invoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId, @JsonKey(name: 'document_type')  DocumentType? documentType, @JsonKey(name: 'proforma_followup_document')  ProformaFollowupDocument? proformaFollowupDocument, @JsonKey(name: 'tax_document_ids')  List<int>? taxDocumentIds, @JsonKey(name: 'correction_id')  int? correctionId,  String? number, @JsonKey(name: 'number_format_id')  int? numberFormatId, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'your_name')  String? yourName, @JsonKey(name: 'your_street')  String? yourStreet, @JsonKey(name: 'your_city')  String? yourCity, @JsonKey(name: 'your_zip')  String? yourZip, @JsonKey(name: 'your_country')  String? yourCountry, @JsonKey(name: 'your_registration_no')  String? yourRegistrationNo, @JsonKey(name: 'your_vat_no')  String? yourVatNo, @JsonKey(name: 'your_local_vat_no')  String? yourLocalVatNo, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'client_street')  String? clientStreet, @JsonKey(name: 'client_city')  String? clientCity, @JsonKey(name: 'client_zip')  String? clientZip, @JsonKey(name: 'client_country')  String? clientCountry, @JsonKey(name: 'client_registration_no')  String? clientRegistrationNo, @JsonKey(name: 'client_vat_no')  String? clientVatNo, @JsonKey(name: 'client_local_vat_no')  String? clientLocalVatNo, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'subject_custom_id')  String? subjectCustomId, @JsonKey(name: 'generator_id')  int? generatorId, @JsonKey(name: 'related_id')  int? relatedId,  bool? paypal,  bool? gopay,  String? token,  InvoiceStatus? status, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'issued_on')  String? issuedOn, @JsonKey(name: 'taxable_fulfillment_due')  String? taxableFulfillmentDue,  int? due, @JsonKey(name: 'due_on')  String? dueOn, @JsonKey(name: 'sent_at')  DateTime? sentAt, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'reminder_sent_at')  DateTime? reminderSentAt, @JsonKey(name: 'last_reminder_sent_at')  DateTime? lastReminderSentAt, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'uncollectible_at')  DateTime? uncollectibleAt, @JsonKey(name: 'locked_at')  DateTime? lockedAt, @JsonKey(name: 'webinvoice_seen_on')  String? webinvoiceSeenOn,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'supply_code')  String? supplyCode,  OssMode? oss, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'remaining_amount')  String? remainingAmount, @JsonKey(name: 'remaining_native_amount')  String? remainingNativeAmount,  List<InvoiceLine>? lines,  List<InvoicePayment>? payments, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'public_html_url')  String? publicHtmlUrl,  String? url, @JsonKey(name: 'pdf_url')  String? pdfUrl, @JsonKey(name: 'subject_url')  String? subjectUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Invoice() when $default != null:
return $default(_that.id,_that.customId,_that.documentType,_that.proformaFollowupDocument,_that.taxDocumentIds,_that.correctionId,_that.number,_that.numberFormatId,_that.variableSymbol,_that.yourName,_that.yourStreet,_that.yourCity,_that.yourZip,_that.yourCountry,_that.yourRegistrationNo,_that.yourVatNo,_that.yourLocalVatNo,_that.clientName,_that.clientStreet,_that.clientCity,_that.clientZip,_that.clientCountry,_that.clientRegistrationNo,_that.clientVatNo,_that.clientLocalVatNo,_that.subjectId,_that.subjectCustomId,_that.generatorId,_that.relatedId,_that.paypal,_that.gopay,_that.token,_that.status,_that.orderNumber,_that.issuedOn,_that.taxableFulfillmentDue,_that.due,_that.dueOn,_that.sentAt,_that.paidOn,_that.reminderSentAt,_that.lastReminderSentAt,_that.cancelledAt,_that.uncollectibleAt,_that.lockedAt,_that.webinvoiceSeenOn,_that.note,_that.footerNote,_that.privateNote,_that.tags,_that.bankAccountId,_that.bankAccount,_that.iban,_that.swiftBic,_that.ibanVisibility,_that.paymentMethod,_that.customPaymentMethod,_that.currency,_that.exchangeRate,_that.language,_that.transferredTaxLiability,_that.supplyCode,_that.oss,_that.vatPriceMode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.remainingAmount,_that.remainingNativeAmount,_that.lines,_that.payments,_that.htmlUrl,_that.publicHtmlUrl,_that.url,_that.pdfUrl,_that.subjectUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'custom_id')  String? customId, @JsonKey(name: 'document_type')  DocumentType? documentType, @JsonKey(name: 'proforma_followup_document')  ProformaFollowupDocument? proformaFollowupDocument, @JsonKey(name: 'tax_document_ids')  List<int>? taxDocumentIds, @JsonKey(name: 'correction_id')  int? correctionId,  String? number, @JsonKey(name: 'number_format_id')  int? numberFormatId, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'your_name')  String? yourName, @JsonKey(name: 'your_street')  String? yourStreet, @JsonKey(name: 'your_city')  String? yourCity, @JsonKey(name: 'your_zip')  String? yourZip, @JsonKey(name: 'your_country')  String? yourCountry, @JsonKey(name: 'your_registration_no')  String? yourRegistrationNo, @JsonKey(name: 'your_vat_no')  String? yourVatNo, @JsonKey(name: 'your_local_vat_no')  String? yourLocalVatNo, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'client_street')  String? clientStreet, @JsonKey(name: 'client_city')  String? clientCity, @JsonKey(name: 'client_zip')  String? clientZip, @JsonKey(name: 'client_country')  String? clientCountry, @JsonKey(name: 'client_registration_no')  String? clientRegistrationNo, @JsonKey(name: 'client_vat_no')  String? clientVatNo, @JsonKey(name: 'client_local_vat_no')  String? clientLocalVatNo, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'subject_custom_id')  String? subjectCustomId, @JsonKey(name: 'generator_id')  int? generatorId, @JsonKey(name: 'related_id')  int? relatedId,  bool? paypal,  bool? gopay,  String? token,  InvoiceStatus? status, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'issued_on')  String? issuedOn, @JsonKey(name: 'taxable_fulfillment_due')  String? taxableFulfillmentDue,  int? due, @JsonKey(name: 'due_on')  String? dueOn, @JsonKey(name: 'sent_at')  DateTime? sentAt, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'reminder_sent_at')  DateTime? reminderSentAt, @JsonKey(name: 'last_reminder_sent_at')  DateTime? lastReminderSentAt, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'uncollectible_at')  DateTime? uncollectibleAt, @JsonKey(name: 'locked_at')  DateTime? lockedAt, @JsonKey(name: 'webinvoice_seen_on')  String? webinvoiceSeenOn,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'supply_code')  String? supplyCode,  OssMode? oss, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'remaining_amount')  String? remainingAmount, @JsonKey(name: 'remaining_native_amount')  String? remainingNativeAmount,  List<InvoiceLine>? lines,  List<InvoicePayment>? payments, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'public_html_url')  String? publicHtmlUrl,  String? url, @JsonKey(name: 'pdf_url')  String? pdfUrl, @JsonKey(name: 'subject_url')  String? subjectUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Invoice():
return $default(_that.id,_that.customId,_that.documentType,_that.proformaFollowupDocument,_that.taxDocumentIds,_that.correctionId,_that.number,_that.numberFormatId,_that.variableSymbol,_that.yourName,_that.yourStreet,_that.yourCity,_that.yourZip,_that.yourCountry,_that.yourRegistrationNo,_that.yourVatNo,_that.yourLocalVatNo,_that.clientName,_that.clientStreet,_that.clientCity,_that.clientZip,_that.clientCountry,_that.clientRegistrationNo,_that.clientVatNo,_that.clientLocalVatNo,_that.subjectId,_that.subjectCustomId,_that.generatorId,_that.relatedId,_that.paypal,_that.gopay,_that.token,_that.status,_that.orderNumber,_that.issuedOn,_that.taxableFulfillmentDue,_that.due,_that.dueOn,_that.sentAt,_that.paidOn,_that.reminderSentAt,_that.lastReminderSentAt,_that.cancelledAt,_that.uncollectibleAt,_that.lockedAt,_that.webinvoiceSeenOn,_that.note,_that.footerNote,_that.privateNote,_that.tags,_that.bankAccountId,_that.bankAccount,_that.iban,_that.swiftBic,_that.ibanVisibility,_that.paymentMethod,_that.customPaymentMethod,_that.currency,_that.exchangeRate,_that.language,_that.transferredTaxLiability,_that.supplyCode,_that.oss,_that.vatPriceMode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.remainingAmount,_that.remainingNativeAmount,_that.lines,_that.payments,_that.htmlUrl,_that.publicHtmlUrl,_that.url,_that.pdfUrl,_that.subjectUrl,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'custom_id')  String? customId, @JsonKey(name: 'document_type')  DocumentType? documentType, @JsonKey(name: 'proforma_followup_document')  ProformaFollowupDocument? proformaFollowupDocument, @JsonKey(name: 'tax_document_ids')  List<int>? taxDocumentIds, @JsonKey(name: 'correction_id')  int? correctionId,  String? number, @JsonKey(name: 'number_format_id')  int? numberFormatId, @JsonKey(name: 'variable_symbol')  String? variableSymbol, @JsonKey(name: 'your_name')  String? yourName, @JsonKey(name: 'your_street')  String? yourStreet, @JsonKey(name: 'your_city')  String? yourCity, @JsonKey(name: 'your_zip')  String? yourZip, @JsonKey(name: 'your_country')  String? yourCountry, @JsonKey(name: 'your_registration_no')  String? yourRegistrationNo, @JsonKey(name: 'your_vat_no')  String? yourVatNo, @JsonKey(name: 'your_local_vat_no')  String? yourLocalVatNo, @JsonKey(name: 'client_name')  String? clientName, @JsonKey(name: 'client_street')  String? clientStreet, @JsonKey(name: 'client_city')  String? clientCity, @JsonKey(name: 'client_zip')  String? clientZip, @JsonKey(name: 'client_country')  String? clientCountry, @JsonKey(name: 'client_registration_no')  String? clientRegistrationNo, @JsonKey(name: 'client_vat_no')  String? clientVatNo, @JsonKey(name: 'client_local_vat_no')  String? clientLocalVatNo, @JsonKey(name: 'subject_id')  int subjectId, @JsonKey(name: 'subject_custom_id')  String? subjectCustomId, @JsonKey(name: 'generator_id')  int? generatorId, @JsonKey(name: 'related_id')  int? relatedId,  bool? paypal,  bool? gopay,  String? token,  InvoiceStatus? status, @JsonKey(name: 'order_number')  String? orderNumber, @JsonKey(name: 'issued_on')  String? issuedOn, @JsonKey(name: 'taxable_fulfillment_due')  String? taxableFulfillmentDue,  int? due, @JsonKey(name: 'due_on')  String? dueOn, @JsonKey(name: 'sent_at')  DateTime? sentAt, @JsonKey(name: 'paid_on')  String? paidOn, @JsonKey(name: 'reminder_sent_at')  DateTime? reminderSentAt, @JsonKey(name: 'last_reminder_sent_at')  DateTime? lastReminderSentAt, @JsonKey(name: 'cancelled_at')  DateTime? cancelledAt, @JsonKey(name: 'uncollectible_at')  DateTime? uncollectibleAt, @JsonKey(name: 'locked_at')  DateTime? lockedAt, @JsonKey(name: 'webinvoice_seen_on')  String? webinvoiceSeenOn,  String? note, @JsonKey(name: 'footer_note')  String? footerNote, @JsonKey(name: 'private_note')  String? privateNote,  List<String>? tags, @JsonKey(name: 'bank_account_id')  int? bankAccountId, @JsonKey(name: 'bank_account')  String? bankAccount,  String? iban, @JsonKey(name: 'swift_bic')  String? swiftBic, @JsonKey(name: 'iban_visibility')  IbanVisibility? ibanVisibility, @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod, @JsonKey(name: 'custom_payment_method')  String? customPaymentMethod,  String? currency, @JsonKey(name: 'exchange_rate')  String? exchangeRate,  DocumentLanguage? language, @JsonKey(name: 'transferred_tax_liability')  bool? transferredTaxLiability, @JsonKey(name: 'supply_code')  String? supplyCode,  OssMode? oss, @JsonKey(name: 'vat_price_mode')  VatPriceMode? vatPriceMode, @JsonKey(name: 'round_total')  bool? roundTotal,  String? subtotal,  String? total, @JsonKey(name: 'native_subtotal')  String? nativeSubtotal, @JsonKey(name: 'native_total')  String? nativeTotal, @JsonKey(name: 'remaining_amount')  String? remainingAmount, @JsonKey(name: 'remaining_native_amount')  String? remainingNativeAmount,  List<InvoiceLine>? lines,  List<InvoicePayment>? payments, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'public_html_url')  String? publicHtmlUrl,  String? url, @JsonKey(name: 'pdf_url')  String? pdfUrl, @JsonKey(name: 'subject_url')  String? subjectUrl, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Invoice() when $default != null:
return $default(_that.id,_that.customId,_that.documentType,_that.proformaFollowupDocument,_that.taxDocumentIds,_that.correctionId,_that.number,_that.numberFormatId,_that.variableSymbol,_that.yourName,_that.yourStreet,_that.yourCity,_that.yourZip,_that.yourCountry,_that.yourRegistrationNo,_that.yourVatNo,_that.yourLocalVatNo,_that.clientName,_that.clientStreet,_that.clientCity,_that.clientZip,_that.clientCountry,_that.clientRegistrationNo,_that.clientVatNo,_that.clientLocalVatNo,_that.subjectId,_that.subjectCustomId,_that.generatorId,_that.relatedId,_that.paypal,_that.gopay,_that.token,_that.status,_that.orderNumber,_that.issuedOn,_that.taxableFulfillmentDue,_that.due,_that.dueOn,_that.sentAt,_that.paidOn,_that.reminderSentAt,_that.lastReminderSentAt,_that.cancelledAt,_that.uncollectibleAt,_that.lockedAt,_that.webinvoiceSeenOn,_that.note,_that.footerNote,_that.privateNote,_that.tags,_that.bankAccountId,_that.bankAccount,_that.iban,_that.swiftBic,_that.ibanVisibility,_that.paymentMethod,_that.customPaymentMethod,_that.currency,_that.exchangeRate,_that.language,_that.transferredTaxLiability,_that.supplyCode,_that.oss,_that.vatPriceMode,_that.roundTotal,_that.subtotal,_that.total,_that.nativeSubtotal,_that.nativeTotal,_that.remainingAmount,_that.remainingNativeAmount,_that.lines,_that.payments,_that.htmlUrl,_that.publicHtmlUrl,_that.url,_that.pdfUrl,_that.subjectUrl,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Invoice implements Invoice {
  const _Invoice({this.id, @JsonKey(name: 'custom_id') this.customId, @JsonKey(name: 'document_type') this.documentType, @JsonKey(name: 'proforma_followup_document') this.proformaFollowupDocument, @JsonKey(name: 'tax_document_ids') final  List<int>? taxDocumentIds, @JsonKey(name: 'correction_id') this.correctionId, this.number, @JsonKey(name: 'number_format_id') this.numberFormatId, @JsonKey(name: 'variable_symbol') this.variableSymbol, @JsonKey(name: 'your_name') this.yourName, @JsonKey(name: 'your_street') this.yourStreet, @JsonKey(name: 'your_city') this.yourCity, @JsonKey(name: 'your_zip') this.yourZip, @JsonKey(name: 'your_country') this.yourCountry, @JsonKey(name: 'your_registration_no') this.yourRegistrationNo, @JsonKey(name: 'your_vat_no') this.yourVatNo, @JsonKey(name: 'your_local_vat_no') this.yourLocalVatNo, @JsonKey(name: 'client_name') this.clientName, @JsonKey(name: 'client_street') this.clientStreet, @JsonKey(name: 'client_city') this.clientCity, @JsonKey(name: 'client_zip') this.clientZip, @JsonKey(name: 'client_country') this.clientCountry, @JsonKey(name: 'client_registration_no') this.clientRegistrationNo, @JsonKey(name: 'client_vat_no') this.clientVatNo, @JsonKey(name: 'client_local_vat_no') this.clientLocalVatNo, @JsonKey(name: 'subject_id') required this.subjectId, @JsonKey(name: 'subject_custom_id') this.subjectCustomId, @JsonKey(name: 'generator_id') this.generatorId, @JsonKey(name: 'related_id') this.relatedId, this.paypal, this.gopay, this.token, this.status, @JsonKey(name: 'order_number') this.orderNumber, @JsonKey(name: 'issued_on') this.issuedOn, @JsonKey(name: 'taxable_fulfillment_due') this.taxableFulfillmentDue, this.due, @JsonKey(name: 'due_on') this.dueOn, @JsonKey(name: 'sent_at') this.sentAt, @JsonKey(name: 'paid_on') this.paidOn, @JsonKey(name: 'reminder_sent_at') this.reminderSentAt, @JsonKey(name: 'last_reminder_sent_at') this.lastReminderSentAt, @JsonKey(name: 'cancelled_at') this.cancelledAt, @JsonKey(name: 'uncollectible_at') this.uncollectibleAt, @JsonKey(name: 'locked_at') this.lockedAt, @JsonKey(name: 'webinvoice_seen_on') this.webinvoiceSeenOn, this.note, @JsonKey(name: 'footer_note') this.footerNote, @JsonKey(name: 'private_note') this.privateNote, final  List<String>? tags, @JsonKey(name: 'bank_account_id') this.bankAccountId, @JsonKey(name: 'bank_account') this.bankAccount, this.iban, @JsonKey(name: 'swift_bic') this.swiftBic, @JsonKey(name: 'iban_visibility') this.ibanVisibility, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'custom_payment_method') this.customPaymentMethod, this.currency, @JsonKey(name: 'exchange_rate') this.exchangeRate, this.language, @JsonKey(name: 'transferred_tax_liability') this.transferredTaxLiability, @JsonKey(name: 'supply_code') this.supplyCode, this.oss, @JsonKey(name: 'vat_price_mode') this.vatPriceMode, @JsonKey(name: 'round_total') this.roundTotal, this.subtotal, this.total, @JsonKey(name: 'native_subtotal') this.nativeSubtotal, @JsonKey(name: 'native_total') this.nativeTotal, @JsonKey(name: 'remaining_amount') this.remainingAmount, @JsonKey(name: 'remaining_native_amount') this.remainingNativeAmount, final  List<InvoiceLine>? lines, final  List<InvoicePayment>? payments, @JsonKey(name: 'html_url') this.htmlUrl, @JsonKey(name: 'public_html_url') this.publicHtmlUrl, this.url, @JsonKey(name: 'pdf_url') this.pdfUrl, @JsonKey(name: 'subject_url') this.subjectUrl, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _taxDocumentIds = taxDocumentIds,_tags = tags,_lines = lines,_payments = payments;
  factory _Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'custom_id') final  String? customId;
@override@JsonKey(name: 'document_type') final  DocumentType? documentType;
@override@JsonKey(name: 'proforma_followup_document') final  ProformaFollowupDocument? proformaFollowupDocument;
 final  List<int>? _taxDocumentIds;
@override@JsonKey(name: 'tax_document_ids') List<int>? get taxDocumentIds {
  final value = _taxDocumentIds;
  if (value == null) return null;
  if (_taxDocumentIds is EqualUnmodifiableListView) return _taxDocumentIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'correction_id') final  int? correctionId;
@override final  String? number;
@override@JsonKey(name: 'number_format_id') final  int? numberFormatId;
@override@JsonKey(name: 'variable_symbol') final  String? variableSymbol;
@override@JsonKey(name: 'your_name') final  String? yourName;
@override@JsonKey(name: 'your_street') final  String? yourStreet;
@override@JsonKey(name: 'your_city') final  String? yourCity;
@override@JsonKey(name: 'your_zip') final  String? yourZip;
@override@JsonKey(name: 'your_country') final  String? yourCountry;
@override@JsonKey(name: 'your_registration_no') final  String? yourRegistrationNo;
@override@JsonKey(name: 'your_vat_no') final  String? yourVatNo;
@override@JsonKey(name: 'your_local_vat_no') final  String? yourLocalVatNo;
@override@JsonKey(name: 'client_name') final  String? clientName;
@override@JsonKey(name: 'client_street') final  String? clientStreet;
@override@JsonKey(name: 'client_city') final  String? clientCity;
@override@JsonKey(name: 'client_zip') final  String? clientZip;
@override@JsonKey(name: 'client_country') final  String? clientCountry;
@override@JsonKey(name: 'client_registration_no') final  String? clientRegistrationNo;
@override@JsonKey(name: 'client_vat_no') final  String? clientVatNo;
@override@JsonKey(name: 'client_local_vat_no') final  String? clientLocalVatNo;
@override@JsonKey(name: 'subject_id') final  int subjectId;
@override@JsonKey(name: 'subject_custom_id') final  String? subjectCustomId;
@override@JsonKey(name: 'generator_id') final  int? generatorId;
@override@JsonKey(name: 'related_id') final  int? relatedId;
@override final  bool? paypal;
@override final  bool? gopay;
@override final  String? token;
@override final  InvoiceStatus? status;
@override@JsonKey(name: 'order_number') final  String? orderNumber;
@override@JsonKey(name: 'issued_on') final  String? issuedOn;
// Datum ve formátu YYYY-MM-DD
@override@JsonKey(name: 'taxable_fulfillment_due') final  String? taxableFulfillmentDue;
@override final  int? due;
@override@JsonKey(name: 'due_on') final  String? dueOn;
@override@JsonKey(name: 'sent_at') final  DateTime? sentAt;
@override@JsonKey(name: 'paid_on') final  String? paidOn;
@override@JsonKey(name: 'reminder_sent_at') final  DateTime? reminderSentAt;
@override@JsonKey(name: 'last_reminder_sent_at') final  DateTime? lastReminderSentAt;
@override@JsonKey(name: 'cancelled_at') final  DateTime? cancelledAt;
@override@JsonKey(name: 'uncollectible_at') final  DateTime? uncollectibleAt;
@override@JsonKey(name: 'locked_at') final  DateTime? lockedAt;
@override@JsonKey(name: 'webinvoice_seen_on') final  String? webinvoiceSeenOn;
@override final  String? note;
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

@override@JsonKey(name: 'bank_account_id') final  int? bankAccountId;
@override@JsonKey(name: 'bank_account') final  String? bankAccount;
@override final  String? iban;
@override@JsonKey(name: 'swift_bic') final  String? swiftBic;
@override@JsonKey(name: 'iban_visibility') final  IbanVisibility? ibanVisibility;
@override@JsonKey(name: 'payment_method') final  PaymentMethod? paymentMethod;
@override@JsonKey(name: 'custom_payment_method') final  String? customPaymentMethod;
@override final  String? currency;
@override@JsonKey(name: 'exchange_rate') final  String? exchangeRate;
@override final  DocumentLanguage? language;
@override@JsonKey(name: 'transferred_tax_liability') final  bool? transferredTaxLiability;
@override@JsonKey(name: 'supply_code') final  String? supplyCode;
@override final  OssMode? oss;
@override@JsonKey(name: 'vat_price_mode') final  VatPriceMode? vatPriceMode;
@override@JsonKey(name: 'round_total') final  bool? roundTotal;
@override final  String? subtotal;
@override final  String? total;
@override@JsonKey(name: 'native_subtotal') final  String? nativeSubtotal;
@override@JsonKey(name: 'native_total') final  String? nativeTotal;
@override@JsonKey(name: 'remaining_amount') final  String? remainingAmount;
@override@JsonKey(name: 'remaining_native_amount') final  String? remainingNativeAmount;
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
@override@JsonKey(name: 'public_html_url') final  String? publicHtmlUrl;
@override final  String? url;
@override@JsonKey(name: 'pdf_url') final  String? pdfUrl;
@override@JsonKey(name: 'subject_url') final  String? subjectUrl;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of Invoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceCopyWith<_Invoice> get copyWith => __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Invoice&&(identical(other.id, id) || other.id == id)&&(identical(other.customId, customId) || other.customId == customId)&&(identical(other.documentType, documentType) || other.documentType == documentType)&&(identical(other.proformaFollowupDocument, proformaFollowupDocument) || other.proformaFollowupDocument == proformaFollowupDocument)&&const DeepCollectionEquality().equals(other._taxDocumentIds, _taxDocumentIds)&&(identical(other.correctionId, correctionId) || other.correctionId == correctionId)&&(identical(other.number, number) || other.number == number)&&(identical(other.numberFormatId, numberFormatId) || other.numberFormatId == numberFormatId)&&(identical(other.variableSymbol, variableSymbol) || other.variableSymbol == variableSymbol)&&(identical(other.yourName, yourName) || other.yourName == yourName)&&(identical(other.yourStreet, yourStreet) || other.yourStreet == yourStreet)&&(identical(other.yourCity, yourCity) || other.yourCity == yourCity)&&(identical(other.yourZip, yourZip) || other.yourZip == yourZip)&&(identical(other.yourCountry, yourCountry) || other.yourCountry == yourCountry)&&(identical(other.yourRegistrationNo, yourRegistrationNo) || other.yourRegistrationNo == yourRegistrationNo)&&(identical(other.yourVatNo, yourVatNo) || other.yourVatNo == yourVatNo)&&(identical(other.yourLocalVatNo, yourLocalVatNo) || other.yourLocalVatNo == yourLocalVatNo)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.clientStreet, clientStreet) || other.clientStreet == clientStreet)&&(identical(other.clientCity, clientCity) || other.clientCity == clientCity)&&(identical(other.clientZip, clientZip) || other.clientZip == clientZip)&&(identical(other.clientCountry, clientCountry) || other.clientCountry == clientCountry)&&(identical(other.clientRegistrationNo, clientRegistrationNo) || other.clientRegistrationNo == clientRegistrationNo)&&(identical(other.clientVatNo, clientVatNo) || other.clientVatNo == clientVatNo)&&(identical(other.clientLocalVatNo, clientLocalVatNo) || other.clientLocalVatNo == clientLocalVatNo)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectCustomId, subjectCustomId) || other.subjectCustomId == subjectCustomId)&&(identical(other.generatorId, generatorId) || other.generatorId == generatorId)&&(identical(other.relatedId, relatedId) || other.relatedId == relatedId)&&(identical(other.paypal, paypal) || other.paypal == paypal)&&(identical(other.gopay, gopay) || other.gopay == gopay)&&(identical(other.token, token) || other.token == token)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.issuedOn, issuedOn) || other.issuedOn == issuedOn)&&(identical(other.taxableFulfillmentDue, taxableFulfillmentDue) || other.taxableFulfillmentDue == taxableFulfillmentDue)&&(identical(other.due, due) || other.due == due)&&(identical(other.dueOn, dueOn) || other.dueOn == dueOn)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.paidOn, paidOn) || other.paidOn == paidOn)&&(identical(other.reminderSentAt, reminderSentAt) || other.reminderSentAt == reminderSentAt)&&(identical(other.lastReminderSentAt, lastReminderSentAt) || other.lastReminderSentAt == lastReminderSentAt)&&(identical(other.cancelledAt, cancelledAt) || other.cancelledAt == cancelledAt)&&(identical(other.uncollectibleAt, uncollectibleAt) || other.uncollectibleAt == uncollectibleAt)&&(identical(other.lockedAt, lockedAt) || other.lockedAt == lockedAt)&&(identical(other.webinvoiceSeenOn, webinvoiceSeenOn) || other.webinvoiceSeenOn == webinvoiceSeenOn)&&(identical(other.note, note) || other.note == note)&&(identical(other.footerNote, footerNote) || other.footerNote == footerNote)&&(identical(other.privateNote, privateNote) || other.privateNote == privateNote)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.iban, iban) || other.iban == iban)&&(identical(other.swiftBic, swiftBic) || other.swiftBic == swiftBic)&&(identical(other.ibanVisibility, ibanVisibility) || other.ibanVisibility == ibanVisibility)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.customPaymentMethod, customPaymentMethod) || other.customPaymentMethod == customPaymentMethod)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.language, language) || other.language == language)&&(identical(other.transferredTaxLiability, transferredTaxLiability) || other.transferredTaxLiability == transferredTaxLiability)&&(identical(other.supplyCode, supplyCode) || other.supplyCode == supplyCode)&&(identical(other.oss, oss) || other.oss == oss)&&(identical(other.vatPriceMode, vatPriceMode) || other.vatPriceMode == vatPriceMode)&&(identical(other.roundTotal, roundTotal) || other.roundTotal == roundTotal)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.nativeSubtotal, nativeSubtotal) || other.nativeSubtotal == nativeSubtotal)&&(identical(other.nativeTotal, nativeTotal) || other.nativeTotal == nativeTotal)&&(identical(other.remainingAmount, remainingAmount) || other.remainingAmount == remainingAmount)&&(identical(other.remainingNativeAmount, remainingNativeAmount) || other.remainingNativeAmount == remainingNativeAmount)&&const DeepCollectionEquality().equals(other._lines, _lines)&&const DeepCollectionEquality().equals(other._payments, _payments)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.publicHtmlUrl, publicHtmlUrl) || other.publicHtmlUrl == publicHtmlUrl)&&(identical(other.url, url) || other.url == url)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.subjectUrl, subjectUrl) || other.subjectUrl == subjectUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,customId,documentType,proformaFollowupDocument,const DeepCollectionEquality().hash(_taxDocumentIds),correctionId,number,numberFormatId,variableSymbol,yourName,yourStreet,yourCity,yourZip,yourCountry,yourRegistrationNo,yourVatNo,yourLocalVatNo,clientName,clientStreet,clientCity,clientZip,clientCountry,clientRegistrationNo,clientVatNo,clientLocalVatNo,subjectId,subjectCustomId,generatorId,relatedId,paypal,gopay,token,status,orderNumber,issuedOn,taxableFulfillmentDue,due,dueOn,sentAt,paidOn,reminderSentAt,lastReminderSentAt,cancelledAt,uncollectibleAt,lockedAt,webinvoiceSeenOn,note,footerNote,privateNote,const DeepCollectionEquality().hash(_tags),bankAccountId,bankAccount,iban,swiftBic,ibanVisibility,paymentMethod,customPaymentMethod,currency,exchangeRate,language,transferredTaxLiability,supplyCode,oss,vatPriceMode,roundTotal,subtotal,total,nativeSubtotal,nativeTotal,remainingAmount,remainingNativeAmount,const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_payments),htmlUrl,publicHtmlUrl,url,pdfUrl,subjectUrl,createdAt,updatedAt]);

@override
String toString() {
  return 'Invoice(id: $id, customId: $customId, documentType: $documentType, proformaFollowupDocument: $proformaFollowupDocument, taxDocumentIds: $taxDocumentIds, correctionId: $correctionId, number: $number, numberFormatId: $numberFormatId, variableSymbol: $variableSymbol, yourName: $yourName, yourStreet: $yourStreet, yourCity: $yourCity, yourZip: $yourZip, yourCountry: $yourCountry, yourRegistrationNo: $yourRegistrationNo, yourVatNo: $yourVatNo, yourLocalVatNo: $yourLocalVatNo, clientName: $clientName, clientStreet: $clientStreet, clientCity: $clientCity, clientZip: $clientZip, clientCountry: $clientCountry, clientRegistrationNo: $clientRegistrationNo, clientVatNo: $clientVatNo, clientLocalVatNo: $clientLocalVatNo, subjectId: $subjectId, subjectCustomId: $subjectCustomId, generatorId: $generatorId, relatedId: $relatedId, paypal: $paypal, gopay: $gopay, token: $token, status: $status, orderNumber: $orderNumber, issuedOn: $issuedOn, taxableFulfillmentDue: $taxableFulfillmentDue, due: $due, dueOn: $dueOn, sentAt: $sentAt, paidOn: $paidOn, reminderSentAt: $reminderSentAt, lastReminderSentAt: $lastReminderSentAt, cancelledAt: $cancelledAt, uncollectibleAt: $uncollectibleAt, lockedAt: $lockedAt, webinvoiceSeenOn: $webinvoiceSeenOn, note: $note, footerNote: $footerNote, privateNote: $privateNote, tags: $tags, bankAccountId: $bankAccountId, bankAccount: $bankAccount, iban: $iban, swiftBic: $swiftBic, ibanVisibility: $ibanVisibility, paymentMethod: $paymentMethod, customPaymentMethod: $customPaymentMethod, currency: $currency, exchangeRate: $exchangeRate, language: $language, transferredTaxLiability: $transferredTaxLiability, supplyCode: $supplyCode, oss: $oss, vatPriceMode: $vatPriceMode, roundTotal: $roundTotal, subtotal: $subtotal, total: $total, nativeSubtotal: $nativeSubtotal, nativeTotal: $nativeTotal, remainingAmount: $remainingAmount, remainingNativeAmount: $remainingNativeAmount, lines: $lines, payments: $payments, htmlUrl: $htmlUrl, publicHtmlUrl: $publicHtmlUrl, url: $url, pdfUrl: $pdfUrl, subjectUrl: $subjectUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) _then) = __$InvoiceCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'custom_id') String? customId,@JsonKey(name: 'document_type') DocumentType? documentType,@JsonKey(name: 'proforma_followup_document') ProformaFollowupDocument? proformaFollowupDocument,@JsonKey(name: 'tax_document_ids') List<int>? taxDocumentIds,@JsonKey(name: 'correction_id') int? correctionId, String? number,@JsonKey(name: 'number_format_id') int? numberFormatId,@JsonKey(name: 'variable_symbol') String? variableSymbol,@JsonKey(name: 'your_name') String? yourName,@JsonKey(name: 'your_street') String? yourStreet,@JsonKey(name: 'your_city') String? yourCity,@JsonKey(name: 'your_zip') String? yourZip,@JsonKey(name: 'your_country') String? yourCountry,@JsonKey(name: 'your_registration_no') String? yourRegistrationNo,@JsonKey(name: 'your_vat_no') String? yourVatNo,@JsonKey(name: 'your_local_vat_no') String? yourLocalVatNo,@JsonKey(name: 'client_name') String? clientName,@JsonKey(name: 'client_street') String? clientStreet,@JsonKey(name: 'client_city') String? clientCity,@JsonKey(name: 'client_zip') String? clientZip,@JsonKey(name: 'client_country') String? clientCountry,@JsonKey(name: 'client_registration_no') String? clientRegistrationNo,@JsonKey(name: 'client_vat_no') String? clientVatNo,@JsonKey(name: 'client_local_vat_no') String? clientLocalVatNo,@JsonKey(name: 'subject_id') int subjectId,@JsonKey(name: 'subject_custom_id') String? subjectCustomId,@JsonKey(name: 'generator_id') int? generatorId,@JsonKey(name: 'related_id') int? relatedId, bool? paypal, bool? gopay, String? token, InvoiceStatus? status,@JsonKey(name: 'order_number') String? orderNumber,@JsonKey(name: 'issued_on') String? issuedOn,@JsonKey(name: 'taxable_fulfillment_due') String? taxableFulfillmentDue, int? due,@JsonKey(name: 'due_on') String? dueOn,@JsonKey(name: 'sent_at') DateTime? sentAt,@JsonKey(name: 'paid_on') String? paidOn,@JsonKey(name: 'reminder_sent_at') DateTime? reminderSentAt,@JsonKey(name: 'last_reminder_sent_at') DateTime? lastReminderSentAt,@JsonKey(name: 'cancelled_at') DateTime? cancelledAt,@JsonKey(name: 'uncollectible_at') DateTime? uncollectibleAt,@JsonKey(name: 'locked_at') DateTime? lockedAt,@JsonKey(name: 'webinvoice_seen_on') String? webinvoiceSeenOn, String? note,@JsonKey(name: 'footer_note') String? footerNote,@JsonKey(name: 'private_note') String? privateNote, List<String>? tags,@JsonKey(name: 'bank_account_id') int? bankAccountId,@JsonKey(name: 'bank_account') String? bankAccount, String? iban,@JsonKey(name: 'swift_bic') String? swiftBic,@JsonKey(name: 'iban_visibility') IbanVisibility? ibanVisibility,@JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,@JsonKey(name: 'custom_payment_method') String? customPaymentMethod, String? currency,@JsonKey(name: 'exchange_rate') String? exchangeRate, DocumentLanguage? language,@JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,@JsonKey(name: 'supply_code') String? supplyCode, OssMode? oss,@JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,@JsonKey(name: 'round_total') bool? roundTotal, String? subtotal, String? total,@JsonKey(name: 'native_subtotal') String? nativeSubtotal,@JsonKey(name: 'native_total') String? nativeTotal,@JsonKey(name: 'remaining_amount') String? remainingAmount,@JsonKey(name: 'remaining_native_amount') String? remainingNativeAmount, List<InvoiceLine>? lines, List<InvoicePayment>? payments,@JsonKey(name: 'html_url') String? htmlUrl,@JsonKey(name: 'public_html_url') String? publicHtmlUrl, String? url,@JsonKey(name: 'pdf_url') String? pdfUrl,@JsonKey(name: 'subject_url') String? subjectUrl,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$InvoiceCopyWithImpl<$Res>
    implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(this._self, this._then);

  final _Invoice _self;
  final $Res Function(_Invoice) _then;

/// Create a copy of Invoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? customId = freezed,Object? documentType = freezed,Object? proformaFollowupDocument = freezed,Object? taxDocumentIds = freezed,Object? correctionId = freezed,Object? number = freezed,Object? numberFormatId = freezed,Object? variableSymbol = freezed,Object? yourName = freezed,Object? yourStreet = freezed,Object? yourCity = freezed,Object? yourZip = freezed,Object? yourCountry = freezed,Object? yourRegistrationNo = freezed,Object? yourVatNo = freezed,Object? yourLocalVatNo = freezed,Object? clientName = freezed,Object? clientStreet = freezed,Object? clientCity = freezed,Object? clientZip = freezed,Object? clientCountry = freezed,Object? clientRegistrationNo = freezed,Object? clientVatNo = freezed,Object? clientLocalVatNo = freezed,Object? subjectId = null,Object? subjectCustomId = freezed,Object? generatorId = freezed,Object? relatedId = freezed,Object? paypal = freezed,Object? gopay = freezed,Object? token = freezed,Object? status = freezed,Object? orderNumber = freezed,Object? issuedOn = freezed,Object? taxableFulfillmentDue = freezed,Object? due = freezed,Object? dueOn = freezed,Object? sentAt = freezed,Object? paidOn = freezed,Object? reminderSentAt = freezed,Object? lastReminderSentAt = freezed,Object? cancelledAt = freezed,Object? uncollectibleAt = freezed,Object? lockedAt = freezed,Object? webinvoiceSeenOn = freezed,Object? note = freezed,Object? footerNote = freezed,Object? privateNote = freezed,Object? tags = freezed,Object? bankAccountId = freezed,Object? bankAccount = freezed,Object? iban = freezed,Object? swiftBic = freezed,Object? ibanVisibility = freezed,Object? paymentMethod = freezed,Object? customPaymentMethod = freezed,Object? currency = freezed,Object? exchangeRate = freezed,Object? language = freezed,Object? transferredTaxLiability = freezed,Object? supplyCode = freezed,Object? oss = freezed,Object? vatPriceMode = freezed,Object? roundTotal = freezed,Object? subtotal = freezed,Object? total = freezed,Object? nativeSubtotal = freezed,Object? nativeTotal = freezed,Object? remainingAmount = freezed,Object? remainingNativeAmount = freezed,Object? lines = freezed,Object? payments = freezed,Object? htmlUrl = freezed,Object? publicHtmlUrl = freezed,Object? url = freezed,Object? pdfUrl = freezed,Object? subjectUrl = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Invoice(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,customId: freezed == customId ? _self.customId : customId // ignore: cast_nullable_to_non_nullable
as String?,documentType: freezed == documentType ? _self.documentType : documentType // ignore: cast_nullable_to_non_nullable
as DocumentType?,proformaFollowupDocument: freezed == proformaFollowupDocument ? _self.proformaFollowupDocument : proformaFollowupDocument // ignore: cast_nullable_to_non_nullable
as ProformaFollowupDocument?,taxDocumentIds: freezed == taxDocumentIds ? _self._taxDocumentIds : taxDocumentIds // ignore: cast_nullable_to_non_nullable
as List<int>?,correctionId: freezed == correctionId ? _self.correctionId : correctionId // ignore: cast_nullable_to_non_nullable
as int?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String?,numberFormatId: freezed == numberFormatId ? _self.numberFormatId : numberFormatId // ignore: cast_nullable_to_non_nullable
as int?,variableSymbol: freezed == variableSymbol ? _self.variableSymbol : variableSymbol // ignore: cast_nullable_to_non_nullable
as String?,yourName: freezed == yourName ? _self.yourName : yourName // ignore: cast_nullable_to_non_nullable
as String?,yourStreet: freezed == yourStreet ? _self.yourStreet : yourStreet // ignore: cast_nullable_to_non_nullable
as String?,yourCity: freezed == yourCity ? _self.yourCity : yourCity // ignore: cast_nullable_to_non_nullable
as String?,yourZip: freezed == yourZip ? _self.yourZip : yourZip // ignore: cast_nullable_to_non_nullable
as String?,yourCountry: freezed == yourCountry ? _self.yourCountry : yourCountry // ignore: cast_nullable_to_non_nullable
as String?,yourRegistrationNo: freezed == yourRegistrationNo ? _self.yourRegistrationNo : yourRegistrationNo // ignore: cast_nullable_to_non_nullable
as String?,yourVatNo: freezed == yourVatNo ? _self.yourVatNo : yourVatNo // ignore: cast_nullable_to_non_nullable
as String?,yourLocalVatNo: freezed == yourLocalVatNo ? _self.yourLocalVatNo : yourLocalVatNo // ignore: cast_nullable_to_non_nullable
as String?,clientName: freezed == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String?,clientStreet: freezed == clientStreet ? _self.clientStreet : clientStreet // ignore: cast_nullable_to_non_nullable
as String?,clientCity: freezed == clientCity ? _self.clientCity : clientCity // ignore: cast_nullable_to_non_nullable
as String?,clientZip: freezed == clientZip ? _self.clientZip : clientZip // ignore: cast_nullable_to_non_nullable
as String?,clientCountry: freezed == clientCountry ? _self.clientCountry : clientCountry // ignore: cast_nullable_to_non_nullable
as String?,clientRegistrationNo: freezed == clientRegistrationNo ? _self.clientRegistrationNo : clientRegistrationNo // ignore: cast_nullable_to_non_nullable
as String?,clientVatNo: freezed == clientVatNo ? _self.clientVatNo : clientVatNo // ignore: cast_nullable_to_non_nullable
as String?,clientLocalVatNo: freezed == clientLocalVatNo ? _self.clientLocalVatNo : clientLocalVatNo // ignore: cast_nullable_to_non_nullable
as String?,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,subjectCustomId: freezed == subjectCustomId ? _self.subjectCustomId : subjectCustomId // ignore: cast_nullable_to_non_nullable
as String?,generatorId: freezed == generatorId ? _self.generatorId : generatorId // ignore: cast_nullable_to_non_nullable
as int?,relatedId: freezed == relatedId ? _self.relatedId : relatedId // ignore: cast_nullable_to_non_nullable
as int?,paypal: freezed == paypal ? _self.paypal : paypal // ignore: cast_nullable_to_non_nullable
as bool?,gopay: freezed == gopay ? _self.gopay : gopay // ignore: cast_nullable_to_non_nullable
as bool?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvoiceStatus?,orderNumber: freezed == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String?,issuedOn: freezed == issuedOn ? _self.issuedOn : issuedOn // ignore: cast_nullable_to_non_nullable
as String?,taxableFulfillmentDue: freezed == taxableFulfillmentDue ? _self.taxableFulfillmentDue : taxableFulfillmentDue // ignore: cast_nullable_to_non_nullable
as String?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,dueOn: freezed == dueOn ? _self.dueOn : dueOn // ignore: cast_nullable_to_non_nullable
as String?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paidOn: freezed == paidOn ? _self.paidOn : paidOn // ignore: cast_nullable_to_non_nullable
as String?,reminderSentAt: freezed == reminderSentAt ? _self.reminderSentAt : reminderSentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastReminderSentAt: freezed == lastReminderSentAt ? _self.lastReminderSentAt : lastReminderSentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as DateTime?,uncollectibleAt: freezed == uncollectibleAt ? _self.uncollectibleAt : uncollectibleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lockedAt: freezed == lockedAt ? _self.lockedAt : lockedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,webinvoiceSeenOn: freezed == webinvoiceSeenOn ? _self.webinvoiceSeenOn : webinvoiceSeenOn // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,footerNote: freezed == footerNote ? _self.footerNote : footerNote // ignore: cast_nullable_to_non_nullable
as String?,privateNote: freezed == privateNote ? _self.privateNote : privateNote // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as int?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as String?,iban: freezed == iban ? _self.iban : iban // ignore: cast_nullable_to_non_nullable
as String?,swiftBic: freezed == swiftBic ? _self.swiftBic : swiftBic // ignore: cast_nullable_to_non_nullable
as String?,ibanVisibility: freezed == ibanVisibility ? _self.ibanVisibility : ibanVisibility // ignore: cast_nullable_to_non_nullable
as IbanVisibility?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,customPaymentMethod: freezed == customPaymentMethod ? _self.customPaymentMethod : customPaymentMethod // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,exchangeRate: freezed == exchangeRate ? _self.exchangeRate : exchangeRate // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as DocumentLanguage?,transferredTaxLiability: freezed == transferredTaxLiability ? _self.transferredTaxLiability : transferredTaxLiability // ignore: cast_nullable_to_non_nullable
as bool?,supplyCode: freezed == supplyCode ? _self.supplyCode : supplyCode // ignore: cast_nullable_to_non_nullable
as String?,oss: freezed == oss ? _self.oss : oss // ignore: cast_nullable_to_non_nullable
as OssMode?,vatPriceMode: freezed == vatPriceMode ? _self.vatPriceMode : vatPriceMode // ignore: cast_nullable_to_non_nullable
as VatPriceMode?,roundTotal: freezed == roundTotal ? _self.roundTotal : roundTotal // ignore: cast_nullable_to_non_nullable
as bool?,subtotal: freezed == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,nativeSubtotal: freezed == nativeSubtotal ? _self.nativeSubtotal : nativeSubtotal // ignore: cast_nullable_to_non_nullable
as String?,nativeTotal: freezed == nativeTotal ? _self.nativeTotal : nativeTotal // ignore: cast_nullable_to_non_nullable
as String?,remainingAmount: freezed == remainingAmount ? _self.remainingAmount : remainingAmount // ignore: cast_nullable_to_non_nullable
as String?,remainingNativeAmount: freezed == remainingNativeAmount ? _self.remainingNativeAmount : remainingNativeAmount // ignore: cast_nullable_to_non_nullable
as String?,lines: freezed == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<InvoiceLine>?,payments: freezed == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<InvoicePayment>?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,publicHtmlUrl: freezed == publicHtmlUrl ? _self.publicHtmlUrl : publicHtmlUrl // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as String?,subjectUrl: freezed == subjectUrl ? _self.subjectUrl : subjectUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
