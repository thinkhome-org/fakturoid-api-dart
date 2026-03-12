import 'package:freezed_annotation/freezed_annotation.dart';

part 'webhook.freezed.dart';
part 'webhook.g.dart';

@freezed
abstract class Webhook with _$Webhook {
  const factory Webhook({
    int? id,
    @JsonKey(name: 'failed_deliveries_uuid') String? failedDeliveriesUuid,
    @JsonKey(name: 'webhook_url') String? webhookUrl,
    @JsonKey(name: 'auth_header') String? authHeader,
    bool? active,
    List<String>? events,
    String? url,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Webhook;

  factory Webhook.fromJson(Map<String, dynamic> json) =>
      _$WebhookFromJson(json);
}

@freezed
abstract class WebhookFailedDelivery with _$WebhookFailedDelivery {
  const factory WebhookFailedDelivery({
    int? id,
    @JsonKey(name: 'event_name') String? eventName,
    @JsonKey(name: 'idempotency_key') String? idempotencyKey,
    String? url,
    Map<String, dynamic>? body,
    List<WebhookDeliveryAttempt>? deliveries,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _WebhookFailedDelivery;

  factory WebhookFailedDelivery.fromJson(Map<String, dynamic> json) =>
      _$WebhookFailedDeliveryFromJson(json);
}

@freezed
abstract class WebhookDeliveryAttempt with _$WebhookDeliveryAttempt {
  const factory WebhookDeliveryAttempt({
    int? id,
    @JsonKey(name: 'request_id') String? requestId,
    @JsonKey(name: 'response_status') Object? responseStatus,
    @JsonKey(name: 'response_content_type') String? responseContentType,
    @JsonKey(name: 'response_body') String? responseBody,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'finished_at') DateTime? finishedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _WebhookDeliveryAttempt;

  factory WebhookDeliveryAttempt.fromJson(Map<String, dynamic> json) =>
      _$WebhookDeliveryAttemptFromJson(json);
}
