import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/subject.dart';

class SubjectsRepository {
  final Dio _dio;

  SubjectsRepository(this._dio);

  /// Vrací seznam kontaktů (Subjects).
  ///
  /// * [since] - Kontaktní údaje vytvořené po tomto datu.
  /// * [updatedSince] - Kontaktní údaje vytvořené nebo upravené po tomto datu.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  /// * [customId] - Filtrování podle vlastního ID.
  Future<PaginatedResponse<Subject>> getSubjects({
    DateTime? since,
    DateTime? updatedSince,
    int? page,
    String? customId,
  }) async {
    final response = await _dio.get(
      '/subjects.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'page': page,
        'custom_id': customId,
      }),
    );

    final List<dynamic> data = response.data;
    final items = data.map((json) => Subject.fromJson(json)).toList();

    return PaginatedResponse<Subject>(items: items, currentPage: page ?? 1);
  }

  /// Vyhledává v kontaktech podle polí: name, full_name, email, email_copy, registration_no, vat_no, private_note.
  ///
  /// * [query] - Hledaný výraz.
  /// * [page] - Číslo stránky.
  Future<PaginatedResponse<Subject>> searchSubjects({
    required String query,
    int? page,
  }) async {
    final response = await _dio.get(
      '/subjects/search.json',
      queryParameters: ApiUtils.removeNulls({'query': query, 'page': page}),
    );

    final List<dynamic> data = response.data;
    final items = data.map((json) => Subject.fromJson(json)).toList();

    return PaginatedResponse<Subject>(items: items, currentPage: page ?? 1);
  }

  /// Získá detail jednoho kontaktu podle jeho ID.
  Future<Subject> getSubject(int id) async {
    final response = await _dio.get('/subjects/$id.json');
    return Subject.fromJson(response.data);
  }

  /// Vytvoří nový kontakt.
  ///
  /// Jméno ([Subject.name]) je povinné. Pokud není specifikována země, zkopíruje se z nastavení účtu.
  Future<Subject> createSubject(Subject subject) async {
    final response = await _dio.post(
      '/subjects.json',
      data: ApiUtils.removeNulls(subject.toJson()),
    );
    return Subject.fromJson(response.data);
  }

  /// Upraví existující kontakt.
  Future<Subject> updateSubject(int id, Subject subject) async {
    final response = await _dio.patch(
      '/subjects/$id.json',
      data: ApiUtils.removeNulls(subject.toJson()),
    );
    return Subject.fromJson(response.data);
  }

  /// Smaže kontakt podle ID.
  ///
  /// Pokud kontakt obsahuje nějaké doklady, nelze jej smazat a Fakturoid vrátí 422 Unprocessable Content
  /// (vyhodí se [FakturoidValidationException]).
  Future<void> deleteSubject(int id) async {
    await _dio.delete('/subjects/$id.json');
  }
}
