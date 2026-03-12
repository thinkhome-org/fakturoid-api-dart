import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_eet_record.freezed.dart';
part 'invoice_eet_record.g.dart';

@freezed
abstract class InvoiceEetRecord with _$InvoiceEetRecord {
  const factory InvoiceEetRecord({
    int? id,
    @JsonKey(name: 'vat_no') String? vatNo,
    String? number,
    String? store,
    @JsonKey(name: 'cash_register') String? cashRegister,
    @JsonKey(name: 'paid_at') DateTime? paidAt,
    @JsonKey(name: 'vat_base0') String? vatBase0,
    @JsonKey(name: 'vat_base1') String? vatBase1,
    String? vat1,
    @JsonKey(name: 'vat_base2') String? vatBase2,
    String? vat2,
    @JsonKey(name: 'vat_base3') String? vatBase3,
    String? vat3,
    String? total,
    String? fik,
    String? bkp,
    String? pkp,
    String? status,
    @JsonKey(name: 'fik_received_at') DateTime? fikReceivedAt,
    bool? external,
    int? attempts,
    @JsonKey(name: 'last_attempt_at') DateTime? lastAttemptAt,
    @JsonKey(name: 'last_uuid') String? lastUuid,
    bool? playground,
    @JsonKey(name: 'invoice_id') int? invoiceId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _InvoiceEetRecord;

  factory InvoiceEetRecord.fromJson(Map<String, dynamic> json) =>
      _$InvoiceEetRecordFromJson(json);
}
