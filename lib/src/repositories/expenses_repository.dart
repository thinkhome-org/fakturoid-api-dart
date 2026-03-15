import 'dart:typed_data';
import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/expense.dart';
import '../models/enums/expense_enums.dart';

class ExpensesRepository {
  final Dio _dio;

  ExpensesRepository(this._dio);

  /// Vrací seznam nákladů (přijatých faktur / výdajů).
  ///
  /// * [since] - Náklady vytvořené po tomto datu.
  /// * [until] - Náklady vytvořené před tímto datem.
  /// * [updatedSince] - Náklady vytvořené nebo upravené po tomto datu.
  /// * [updatedUntil] - Náklady vytvořené nebo upravené před tímto datem.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  /// * [subjectId] - Filtrování podle ID dodavatele.
  /// * [customId] - Filtrování podle vlastního ID.
  /// * [number] - Hledání přesného čísla.
  /// * [status] - Filtrování podle stavu (např. open, paid).
  /// * [documentType] - Filtrování podle typu dokumentu (invoice, bill, other).
  Future<PaginatedResponse<Expense>> getExpenses({
    DateTime? since,
    DateTime? until,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    int? page,
    int? subjectId,
    String? customId,
    String? number,
    String? variableSymbol,
    ExpenseStatus? status,
    ExpenseDocumentType? documentType,
  }) async {
    final response = await _dio.get(
      'expenses.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'until': until?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'updated_until': updatedUntil?.toIso8601String(),
        'page': page,
        'subject_id': subjectId,
        'custom_id': customId,
        'number': number,
        'variable_symbol': variableSymbol,
        'status': status?.name,
        'document_type': documentType?.name,
      }),
    );

    return PaginatedResponse<Expense>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: Expense.fromJson,
    );
  }

  /// Vyhledává v nákladech pomocí fulltextu.
  ///
  /// Vyhledává se v: `number`, `variable_symbol`, `original_number`,
  /// `supplier_name`, `supplier_registration_no`, `supplier_vat_no`,
  /// `description`, `private_note` a `lines`.
  Future<PaginatedResponse<Expense>> searchExpenses({
    required String query,
    int? page,
    List<String>? tags,
  }) async {
    final response = await _dio.get(
      'expenses/search.json',
      queryParameters: ApiUtils.removeNulls({
        'query': query,
        'page': page,
        'tags[]': tags,
      }),
    );

    return PaginatedResponse<Expense>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: Expense.fromJson,
    );
  }

  /// Získá detail jednoho nákladu podle ID.
  Future<Expense> getExpense(int id) async {
    final response = await _dio.get('expenses/$id.json');
    return Expense.fromJson(response.data);
  }

  /// Vytvoří nový náklad.
  Future<Expense> createExpense(Expense expense) async {
    final response = await _dio.post(
      'expenses.json',
      data: ApiUtils.removeNulls(expense.toJson()),
    );
    return Expense.fromJson(response.data);
  }

  /// Upraví existující náklad.
  Future<Expense> updateExpense(int id, Expense expense) async {
    final response = await _dio.patch(
      'expenses/$id.json',
      data: ApiUtils.removeNulls(expense.toJson()),
    );
    return Expense.fromJson(response.data);
  }

  /// Smaže náklad podle ID.
  Future<void> deleteExpense(int id) async {
    await _dio.delete('expenses/$id.json');
  }

  /// Provede akci s nákladem (např. uzamčení).
  Future<void> fireAction(int id, ExpenseFireAction action) async {
    await _dio.post(
      'expenses/$id/fire.json',
      queryParameters: {'event': action.value},
    );
  }

  /// Stáhne konkrétní přílohu z nákladu jako pole bajtů.
  Future<Uint8List> downloadAttachment(int expenseId, int attachmentId) async {
    final response = await _dio.get(
      'expenses/$expenseId/attachments/$attachmentId/download',
      options: Options(responseType: ResponseType.bytes),
    );
    return ApiUtils.responseBytes(response.data);
  }
}
