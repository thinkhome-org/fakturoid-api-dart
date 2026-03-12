import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/recurring_generator.dart';

class RecurringGeneratorsRepository {
  final Dio _dio;

  RecurringGeneratorsRepository(this._dio);

  /// Vrací seznam šablon pravidelných faktur (Recurring Generators).
  ///
  /// * [since] - Šablony vytvořené po tomto datu.
  /// * [updatedSince] - Šablony upravené po tomto datu.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  /// * [subjectId] - Filtrování podle ID kontaktu.
  Future<PaginatedResponse<RecurringGenerator>> getRecurringGenerators({
    DateTime? since,
    DateTime? updatedSince,
    int? page,
    int? subjectId,
  }) async {
    final response = await _dio.get(
      '/recurring_generators.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'page': page,
        'subject_id': subjectId,
      }),
    );

    final List<dynamic> data = response.data;
    final items = data
        .map((json) => RecurringGenerator.fromJson(json))
        .toList();

    return PaginatedResponse<RecurringGenerator>(
      items: items,
      currentPage: page ?? 1,
    );
  }

  /// Detail šablony pravidelné faktury.
  Future<RecurringGenerator> getRecurringGenerator(int id) async {
    final response = await _dio.get('/recurring_generators/$id.json');
    return RecurringGenerator.fromJson(response.data);
  }

  /// Vytvoří novou šablonu pravidelné faktury.
  Future<RecurringGenerator> createRecurringGenerator(
    RecurringGenerator generator,
  ) async {
    final response = await _dio.post(
      '/recurring_generators.json',
      data: ApiUtils.removeNulls(generator.toJson()),
    );
    return RecurringGenerator.fromJson(response.data);
  }

  /// Upraví existující šablonu pravidelné faktury.
  Future<RecurringGenerator> updateRecurringGenerator(
    int id,
    RecurringGenerator generator,
  ) async {
    final response = await _dio.patch(
      '/recurring_generators/$id.json',
      data: ApiUtils.removeNulls(generator.toJson()),
    );
    return RecurringGenerator.fromJson(response.data);
  }

  /// Smaže šablonu.
  Future<void> deleteRecurringGenerator(int id) async {
    await _dio.delete('/recurring_generators/$id.json');
  }

  /// Pozastaví pravidelnou fakturu.
  Future<RecurringGenerator> pause(int id) async {
    final response = await _dio.patch('/recurring_generators/$id/pause.json');
    return RecurringGenerator.fromJson(response.data);
  }

  /// Aktivuje pravidelnou fakturu.
  ///
  /// * [nextOccurrenceOn] - Volitelné datum příštího vystavení (formát YYYY-MM-DD).
  Future<RecurringGenerator> activate(
    int id, {
    String? nextOccurrenceOn,
  }) async {
    final response = await _dio.patch(
      '/recurring_generators/$id/activate.json',
      data: nextOccurrenceOn != null
          ? {'next_occurrence_on': nextOccurrenceOn}
          : null,
    );
    return RecurringGenerator.fromJson(response.data);
  }
}
