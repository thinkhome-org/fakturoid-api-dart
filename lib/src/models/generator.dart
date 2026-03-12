import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/invoice_enums.dart';
import 'invoice_line.dart';
import 'legacy_bank_details.dart';

part 'generator.freezed.dart';
part 'generator.g.dart';

@freezed
abstract class Generator with _$Generator {
  const factory Generator({
    int? id,
    @JsonKey(name: 'custom_id') String? customId,
    required String name,
    bool? proforma,
    bool? paypal,
    bool? gopay,
    @JsonKey(name: 'tax_date_at_end_of_last_month')
    bool? taxDateAtEndOfLastMonth,
    int? due,
    @JsonKey(name: 'subject_id') required int subjectId,
    @JsonKey(name: 'number_format_id') int? numberFormatId,
    String? note,
    @JsonKey(name: 'footer_note') String? footerNote,
    @JsonKey(name: 'bank_account_id') int? bankAccountId,
    @JsonKey(name: 'iban_visibility') IbanVisibility? ibanVisibility,
    List<String>? tags,
    @JsonKey(name: 'order_number') String? orderNumber,
    String? currency,
    @JsonKey(name: 'exchange_rate') String? exchangeRate,
    @JsonKey(name: 'payment_method') PaymentMethod? paymentMethod,
    @JsonKey(name: 'custom_payment_method') String? customPaymentMethod,
    DocumentLanguage? language,
    @JsonKey(name: 'transferred_tax_liability') bool? transferredTaxLiability,
    @JsonKey(name: 'vat_price_mode') VatPriceMode? vatPriceMode,
    @JsonKey(name: 'round_total') bool? roundTotal,
    String? subtotal,
    String? total,
    @JsonKey(name: 'native_subtotal') String? nativeSubtotal,
    @JsonKey(name: 'native_total') String? nativeTotal,
    @JsonKey(name: 'legacy_bank_details') LegacyBankDetails? legacyBankDetails,
    @JsonKey(name: 'html_url') String? htmlUrl,
    String? url,
    @JsonKey(name: 'subject_url') String? subjectUrl,
    List<InvoiceLine>? lines,
  }) = _Generator;

  factory Generator.fromJson(Map<String, dynamic> json) =>
      _$GeneratorFromJson(json);
}
