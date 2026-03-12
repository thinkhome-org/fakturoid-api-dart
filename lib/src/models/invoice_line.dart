import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_line.freezed.dart';
part 'invoice_line.g.dart';

@freezed
abstract class InvoiceLine with _$InvoiceLine {
  const factory InvoiceLine({
    int? id,
    required String name,

    /// Fakturoid API vrací a přijímá decimální čísla jako String (např. "1.0")
    String? quantity,
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'unit_price') required String unitPrice,
    @JsonKey(name: 'vat_rate') num? vatRate,
    @JsonKey(name: 'unit_price_without_vat') String? unitPriceWithoutVat,
    @JsonKey(name: 'unit_price_with_vat') String? unitPriceWithVat,
    @JsonKey(name: 'total_price_without_vat') String? totalPriceWithoutVat,
    @JsonKey(name: 'total_vat') String? totalVat,
    @JsonKey(name: 'native_total_price_without_vat')
    String? nativeTotalPriceWithoutVat,
    @JsonKey(name: 'native_total_vat') String? nativeTotalVat,
    @JsonKey(name: 'inventory_item_id') int? inventoryItemId,
    String? sku,
  }) = _InvoiceLine;

  factory InvoiceLine.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineFromJson(json);
}
