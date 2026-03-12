import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/event.dart';

class EventsRepository {
  final Dio _dio;

  EventsRepository(this._dio);

  /// Vrací seznam událostí (Events).
  ///
  /// * [since] - Události vytvořené po tomto datu.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  /// * [subjectId] - Filtrování událostí podle ID kontaktu.
  Future<PaginatedResponse<Event>> getEvents({
    DateTime? since,
    int? page,
    int? subjectId,
  }) async {
    final response = await _dio.get(
      '/events.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'page': page,
        'subject_id': subjectId,
      }),
    );

    final List<dynamic> data = response.data;
    final items = data.map((json) => Event.fromJson(json)).toList();

    return PaginatedResponse<Event>(items: items, currentPage: page ?? 1);
  }

  /// Vrací seznam událostí o zaplacení (Events Paid).
  ///
  /// * [since] - Události vytvořené po tomto datu.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  /// * [subjectId] - Filtrování událostí podle ID kontaktu.
  Future<PaginatedResponse<Event>> getEventsPaid({
    DateTime? since,
    int? page,
    int? subjectId,
  }) async {
    final response = await _dio.get(
      '/events/paid.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'page': page,
        'subject_id': subjectId,
      }),
    );

    final List<dynamic> data = response.data;
    final items = data.map((json) => Event.fromJson(json)).toList();

    return PaginatedResponse<Event>(items: items, currentPage: page ?? 1);
  }
}
