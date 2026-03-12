import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/generator.dart';

class GeneratorsRepository {
  final Dio _dio;

  GeneratorsRepository(this._dio);

  /// Vrací seznam šablon pravidelných faktur (Generators).
  ///
  /// * [since] - Šablony vytvořené po tomto datu.
  /// * [updatedSince] - Šablony upravené po tomto datu.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  /// * [subjectId] - Filtrování podle ID kontaktu.
  Future<PaginatedResponse<Generator>> getGenerators({
    DateTime? since,
    DateTime? updatedSince,
    int? page,
    int? subjectId,
  }) async {
    final response = await _dio.get(
      '/generators.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'page': page,
        'subject_id': subjectId,
      }),
    );

    final List<dynamic> data = response.data;
    final items = data.map((json) => Generator.fromJson(json)).toList();

    return PaginatedResponse<Generator>(items: items, currentPage: page ?? 1);
  }

  /// Detail šablony.
  Future<Generator> getGenerator(int id) async {
    final response = await _dio.get('/generators/$id.json');
    return Generator.fromJson(response.data);
  }

  /// Vytvoří novou šablonu.
  Future<Generator> createGenerator(Generator generator) async {
    final response = await _dio.post(
      '/generators.json',
      data: ApiUtils.removeNulls(generator.toJson()),
    );
    return Generator.fromJson(response.data);
  }

  /// Upraví existující šablonu.
  Future<Generator> updateGenerator(int id, Generator generator) async {
    final response = await _dio.patch(
      '/generators/$id.json',
      data: ApiUtils.removeNulls(generator.toJson()),
    );
    return Generator.fromJson(response.data);
  }

  /// Smaže šablonu.
  Future<void> deleteGenerator(int id) async {
    await _dio.delete('/generators/$id.json');
  }
}
