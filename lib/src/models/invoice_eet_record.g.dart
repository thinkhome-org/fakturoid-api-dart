// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_eet_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoiceEetRecord _$InvoiceEetRecordFromJson(Map<String, dynamic> json) =>
    _InvoiceEetRecord(
      id: (json['id'] as num?)?.toInt(),
      vatNo: json['vat_no'] as String?,
      number: json['number'] as String?,
      store: json['store'] as String?,
      cashRegister: json['cash_register'] as String?,
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
      vatBase0: json['vat_base0'] as String?,
      vatBase1: json['vat_base1'] as String?,
      vat1: json['vat1'] as String?,
      vatBase2: json['vat_base2'] as String?,
      vat2: json['vat2'] as String?,
      vatBase3: json['vat_base3'] as String?,
      vat3: json['vat3'] as String?,
      total: json['total'] as String?,
      fik: json['fik'] as String?,
      bkp: json['bkp'] as String?,
      pkp: json['pkp'] as String?,
      status: json['status'] as String?,
      fikReceivedAt: json['fik_received_at'] == null
          ? null
          : DateTime.parse(json['fik_received_at'] as String),
      external: json['external'] as bool?,
      attempts: (json['attempts'] as num?)?.toInt(),
      lastAttemptAt: json['last_attempt_at'] == null
          ? null
          : DateTime.parse(json['last_attempt_at'] as String),
      lastUuid: json['last_uuid'] as String?,
      playground: json['playground'] as bool?,
      invoiceId: (json['invoice_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$InvoiceEetRecordToJson(_InvoiceEetRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vat_no': instance.vatNo,
      'number': instance.number,
      'store': instance.store,
      'cash_register': instance.cashRegister,
      'paid_at': instance.paidAt?.toIso8601String(),
      'vat_base0': instance.vatBase0,
      'vat_base1': instance.vatBase1,
      'vat1': instance.vat1,
      'vat_base2': instance.vatBase2,
      'vat2': instance.vat2,
      'vat_base3': instance.vatBase3,
      'vat3': instance.vat3,
      'total': instance.total,
      'fik': instance.fik,
      'bkp': instance.bkp,
      'pkp': instance.pkp,
      'status': instance.status,
      'fik_received_at': instance.fikReceivedAt?.toIso8601String(),
      'external': instance.external,
      'attempts': instance.attempts,
      'last_attempt_at': instance.lastAttemptAt?.toIso8601String(),
      'last_uuid': instance.lastUuid,
      'playground': instance.playground,
      'invoice_id': instance.invoiceId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
