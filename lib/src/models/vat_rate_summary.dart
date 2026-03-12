import 'package:freezed_annotation/freezed_annotation.dart';

part 'vat_rate_summary.freezed.dart';
part 'vat_rate_summary.g.dart';

@freezed
abstract class VatRateSummary with _$VatRateSummary {
  const factory VatRateSummary({
    @JsonKey(name: 'vat_rate') num? vatRate,
    String? base,
    String? vat,
    String? currency,
    @JsonKey(name: 'native_base') String? nativeBase,
    @JsonKey(name: 'native_vat') String? nativeVat,
    @JsonKey(name: 'native_currency') String? nativeCurrency,
  }) = _VatRateSummary;

  factory VatRateSummary.fromJson(Map<String, dynamic> json) =>
      _$VatRateSummaryFromJson(json);
}
