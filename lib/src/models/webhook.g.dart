// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Webhook _$WebhookFromJson(Map<String, dynamic> json) => _Webhook(
  id: (json['id'] as num?)?.toInt(),
  failedDeliveriesUuid: json['failed_deliveries_uuid'] as String?,
  webhookUrl: json['webhook_url'] as String?,
  authHeader: json['auth_header'] as String?,
  active: json['active'] as bool?,
  events: (json['events'] as List<dynamic>?)?.map((e) => e as String).toList(),
  url: json['url'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$WebhookToJson(_Webhook instance) => <String, dynamic>{
  'id': instance.id,
  'failed_deliveries_uuid': instance.failedDeliveriesUuid,
  'webhook_url': instance.webhookUrl,
  'auth_header': instance.authHeader,
  'active': instance.active,
  'events': instance.events,
  'url': instance.url,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

_WebhookFailedDelivery _$WebhookFailedDeliveryFromJson(
  Map<String, dynamic> json,
) => _WebhookFailedDelivery(
  id: (json['id'] as num?)?.toInt(),
  eventName: json['event_name'] as String?,
  idempotencyKey: json['idempotency_key'] as String?,
  url: json['url'] as String?,
  body: json['body'] as Map<String, dynamic>?,
  deliveries: (json['deliveries'] as List<dynamic>?)
      ?.map((e) => WebhookDeliveryAttempt.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$WebhookFailedDeliveryToJson(
  _WebhookFailedDelivery instance,
) => <String, dynamic>{
  'id': instance.id,
  'event_name': instance.eventName,
  'idempotency_key': instance.idempotencyKey,
  'url': instance.url,
  'body': instance.body,
  'deliveries': instance.deliveries,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

_WebhookDeliveryAttempt _$WebhookDeliveryAttemptFromJson(
  Map<String, dynamic> json,
) => _WebhookDeliveryAttempt(
  id: (json['id'] as num?)?.toInt(),
  requestId: json['request_id'] as String?,
  responseStatus: json['response_status'],
  responseContentType: json['response_content_type'] as String?,
  responseBody: json['response_body'] as String?,
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  finishedAt: json['finished_at'] == null
      ? null
      : DateTime.parse(json['finished_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$WebhookDeliveryAttemptToJson(
  _WebhookDeliveryAttempt instance,
) => <String, dynamic>{
  'id': instance.id,
  'request_id': instance.requestId,
  'response_status': instance.responseStatus,
  'response_content_type': instance.responseContentType,
  'response_body': instance.responseBody,
  'started_at': instance.startedAt?.toIso8601String(),
  'finished_at': instance.finishedAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
};
