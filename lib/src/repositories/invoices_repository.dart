import 'dart:typed_data';
import 'package:dio/dio.dart';
import '../core/exceptions/fakturoid_exceptions.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/invoice.dart';
import '../models/enums/invoice_enums.dart';

class InvoicesRepository {
  final Dio _dio;

  InvoicesRepository(this._dio);

  /// Vrací seznam faktur.
  ///
  /// * [since] - Faktury vytvořené po tomto datu.
  /// * [until] - Faktury vytvořené před tímto datem.
  /// * [updatedSince] - Faktury vytvořené nebo upravené po tomto datu.
  /// * [updatedUntil] - Faktury vytvořené nebo upravené před tímto datem.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  /// * [subjectId] - Filtrování faktur podle ID kontaktu.
  /// * [customId] - Filtrování podle vlastního ID.
  /// * [number] - Hledání přesného čísla faktury.
  /// * [status] - Filtrování podle stavu (např. InvoiceStatus.paid).
  Future<PaginatedResponse<Invoice>> getInvoices({
    DateTime? since,
    DateTime? until,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    int? page,
    int? subjectId,
    String? customId,
    String? number,
    InvoiceStatus? status,
    InvoiceListDocumentType? documentType,
  }) async {
    final response = await _dio.get(
      '/invoices.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'until': until?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'updated_until': updatedUntil?.toIso8601String(),
        'page': page,
        'subject_id': subjectId,
        'custom_id': customId,
        'number': number,
        'status': status?.name,
        'document_type': documentType?.value,
      }),
    );

    return PaginatedResponse<Invoice>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: Invoice.fromJson,
    );
  }

  /// Vyhledává ve fakturách pomocí fulltextu (vyhledává v čísle, variabilním symbolu, názvu kontaktu apod.).
  ///
  /// * [query] - Hledaný výraz.
  Future<PaginatedResponse<Invoice>> searchInvoices({
    required String query,
    int? page,
    List<String>? tags,
  }) async {
    final response = await _dio.get(
      '/invoices/search.json',
      queryParameters: ApiUtils.removeNulls({
        'query': query,
        'page': page,
        'tags': tags,
      }),
    );

    return PaginatedResponse<Invoice>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: Invoice.fromJson,
    );
  }

  /// Získá detail jedné faktury podle ID.
  Future<Invoice> getInvoice(int id) async {
    final response = await _dio.get('/invoices/$id.json');
    return Invoice.fromJson(response.data);
  }

  /// Vytvoří novou fakturu (nebo jiný dokument na základě atributu `document_type`).
  Future<Invoice> createInvoice(Invoice invoice, {int? relatedId}) async {
    final response = await _dio.post(
      '/invoices.json',
      queryParameters: ApiUtils.removeNulls({'related_id': relatedId}),
      data: ApiUtils.removeNulls(invoice.toJson()),
    );
    return Invoice.fromJson(response.data);
  }

  /// Upraví existující fakturu.
  Future<Invoice> updateInvoice(int id, Invoice invoice) async {
    final response = await _dio.patch(
      '/invoices/$id.json',
      data: ApiUtils.removeNulls(invoice.toJson()),
    );
    return Invoice.fromJson(response.data);
  }

  /// Smaže fakturu podle ID.
  Future<void> deleteInvoice(int id) async {
    await _dio.delete('/invoices/$id.json');
  }

  /// Provede akci s fakturou (např. označí jako odeslanou, stornuje atd.).
  Future<void> fireAction(int id, InvoiceFireAction action) async {
    await _dio.post(
      '/invoices/$id/fire.json',
      queryParameters: {'event': action.value},
    );
  }

  /// Stáhne PDF faktury jako pole bajtů (Uint8List), které můžete následně uložit do souboru nebo zobrazit.
  Future<Uint8List> downloadInvoicePdf(int id) async {
    final response = await _dio.get(
      '/invoices/$id/download.pdf',
      options: Options(responseType: ResponseType.bytes),
    );

    if (response.statusCode == 204 || response.data == null) {
      throw FakturoidDocumentNotReadyException(
        'Invoice PDF is not ready yet. Retry the request later.',
      );
    }

    return _responseBytes(response.data);
  }

  /// Stáhne konkrétní přílohu z faktury jako pole bajtů.
  Future<Uint8List> downloadAttachment(int invoiceId, int attachmentId) async {
    final response = await _dio.get(
      '/invoices/$invoiceId/attachments/$attachmentId/download',
      options: Options(responseType: ResponseType.bytes),
    );
    return _responseBytes(response.data);
  }
}

Uint8List _responseBytes(Object? data) {
  if (data is Uint8List) {
    return data;
  }

  if (data is List<int>) {
    return Uint8List.fromList(data);
  }

  throw StateError('Expected binary response data.');
}
