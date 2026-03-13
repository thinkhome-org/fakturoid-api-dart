import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/webhook.dart';

class WebhooksRepository {
  final Dio _dio;

  WebhooksRepository(this._dio);

  /// Vrací seznam webhooků přidaných via API k aktuální integraci.
  Future<PaginatedResponse<Webhook>> getWebhooks({int? page}) async {
    final response = await _dio.get(
      '/webhooks.json',
      queryParameters: ApiUtils.removeNulls({'page': page}),
    );

    return PaginatedResponse<Webhook>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: Webhook.fromJson,
    );
  }

  /// Detail webhooku.
  Future<Webhook> getWebhook(int id) async {
    final response = await _dio.get('/webhooks/$id.json');
    return Webhook.fromJson(response.data);
  }

  /// Vytvoří nový webhook pro aktuální API integraci.
  Future<Webhook> createWebhook(Webhook webhook) async {
    final response = await _dio.post(
      '/webhooks.json',
      data: ApiUtils.removeNulls(webhook.toJson()),
    );
    return Webhook.fromJson(response.data);
  }

  /// Upraví nastavení webhooku.
  Future<Webhook> updateWebhook(int id, Webhook webhook) async {
    final response = await _dio.patch(
      '/webhooks/$id.json',
      data: ApiUtils.removeNulls(webhook.toJson()),
    );
    return Webhook.fromJson(response.data);
  }

  /// Smaže webhook.
  Future<void> deleteWebhook(int id) async {
    await _dio.delete('/webhooks/$id.json');
  }

  /// Vrací nedoručené (neúspěšné) webhook zprávy pro zadaný UUID.
  /// Lze použít v případě, kdy Fakturoid nahlásí problém s doručením.
  Future<PaginatedResponse<WebhookFailedDelivery>> getFailedDeliveries(
    String failedDeliveriesUuid, {
    int? page,
  }) async {
    final response = await _dio.get(
      '/webhooks/$failedDeliveriesUuid/failed_deliveries.json',
      queryParameters: ApiUtils.removeNulls({'page': page}),
    );

    return PaginatedResponse<WebhookFailedDelivery>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: WebhookFailedDelivery.fromJson,
    );
  }
}
