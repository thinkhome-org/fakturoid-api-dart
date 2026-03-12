import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_paid_advance.freezed.dart';
part 'invoice_paid_advance.g.dart';

@freezed
abstract class InvoicePaidAdvance with _$InvoicePaidAdvance {
  const factory InvoicePaidAdvance({
    int? id,
    String? number,
    @JsonKey(name: 'variable_symbol') String? variableSymbol,
    @JsonKey(name: 'paid_on') String? paidOn,
    @JsonKey(name: 'vat_rate') num? vatRate,
    String? price,
    String? vat,
  }) = _InvoicePaidAdvance;

  factory InvoicePaidAdvance.fromJson(Map<String, dynamic> json) =>
      _$InvoicePaidAdvanceFromJson(json);
}
