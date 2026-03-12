import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/invoice_enums.dart';
import 'invoice_line.dart';
import 'legacy_bank_details.dart';

part 'recurring_generator.freezed.dart';
part 'recurring_generator.g.dart';

@freezed
abstract class RecurringGenerator with _$RecurringGenerator {
  const factory RecurringGenerator({
    int? id,
    @JsonKey(name: 'custom_id') String? customId,
    required String name,
    bool? active,
    bool? proforma,
    bool? paypal,
    bool? gopay,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'months_period') int? monthsPeriod,
    @JsonKey(name: 'next_occurrence_on') String? nextOccurrenceOn,
    @JsonKey(name: 'last_day_in_month') bool? lastDayInMonth,
    @JsonKey(name: 'tax_date_at_end_of_last_month')
    bool? taxDateAtEndOfLastMonth,
    int? due,
    @JsonKey(name: 'send_email') bool? sendEmail,
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
    OssMode? oss,
    @JsonKey(name: 'supply_code') int? supplyCode,
    @JsonKey(name: 'round_total') bool? roundTotal,
    String? subtotal,
    String? total,
    @JsonKey(name: 'native_subtotal') String? nativeSubtotal,
    @JsonKey(name: 'native_total') String? nativeTotal,
    @JsonKey(name: 'rounding_adjustment') String? roundingAdjustment,
    @JsonKey(name: 'legacy_bank_details') LegacyBankDetails? legacyBankDetails,
    @JsonKey(name: 'html_url') String? htmlUrl,
    String? url,
    @JsonKey(name: 'subject_url') String? subjectUrl,
    List<InvoiceLine>? lines,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _RecurringGenerator;

  factory RecurringGenerator.fromJson(Map<String, dynamic> json) =>
      _$RecurringGeneratorFromJson(json);
}
