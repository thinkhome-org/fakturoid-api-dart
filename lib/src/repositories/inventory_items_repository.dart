import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/inventory_item.dart';

class InventoryItemsRepository {
  final Dio _dio;

  InventoryItemsRepository(this._dio);

  /// Vrací seznam položek ceníku (Inventory Items).
  ///
  /// * [articleNumber] - Filtrování podle čísla položky.
  /// * [sku] - Filtrování podle SKU.
  /// * [since] - Položky vytvořené po tomto datu.
  /// * [until] - Položky vytvořené před tímto datem.
  /// * [updatedSince] - Položky upravené po tomto datu.
  /// * [updatedUntil] - Položky upravené před tímto datem.
  /// * [page] - Číslo stránky (Fakturoid vrací 40 záznamů na stránku).
  Future<PaginatedResponse<InventoryItem>> getInventoryItems({
    String? articleNumber,
    String? sku,
    DateTime? since,
    DateTime? until,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    int? page,
  }) async {
    final response = await _dio.get(
      'inventory_items.json',
      queryParameters: ApiUtils.removeNulls({
        'article_number': articleNumber,
        'sku': sku,
        'since': since?.toIso8601String(),
        'until': until?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'updated_until': updatedUntil?.toIso8601String(),
        'page': page,
      }),
    );

    return PaginatedResponse<InventoryItem>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: InventoryItem.fromJson,
    );
  }

  /// Získá archivované položky.
  Future<PaginatedResponse<InventoryItem>> getArchivedItems({
    String? articleNumber,
    String? sku,
    DateTime? since,
    DateTime? until,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    int? page,
  }) async {
    final response = await _dio.get(
      'inventory_items/archived.json',
      queryParameters: ApiUtils.removeNulls({
        'article_number': articleNumber,
        'sku': sku,
        'since': since?.toIso8601String(),
        'until': until?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'updated_until': updatedUntil?.toIso8601String(),
        'page': page,
      }),
    );
    return PaginatedResponse<InventoryItem>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: InventoryItem.fromJson,
    );
  }

  /// Získá položky, kterých je na skladě málo (pod limit).
  Future<PaginatedResponse<InventoryItem>> getLowQuantityItems({
    int? page,
  }) async {
    final response = await _dio.get(
      'inventory_items/low_quantity.json',
      queryParameters: ApiUtils.removeNulls({'page': page}),
    );
    return PaginatedResponse<InventoryItem>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: InventoryItem.fromJson,
    );
  }

  /// Fulltextové vyhledávání položek ceníku.
  Future<PaginatedResponse<InventoryItem>> searchItems({
    required String query,
    int? page,
  }) async {
    final response = await _dio.get(
      'inventory_items/search.json',
      queryParameters: ApiUtils.removeNulls({'query': query, 'page': page}),
    );
    return PaginatedResponse<InventoryItem>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: InventoryItem.fromJson,
    );
  }

  /// Detail položky.
  Future<InventoryItem> getItem(int id) async {
    final response = await _dio.get('inventory_items/$id.json');
    return InventoryItem.fromJson(response.data);
  }

  /// Vytvoří novou položku.
  Future<InventoryItem> createItem(InventoryItem item) async {
    final response = await _dio.post(
      'inventory_items.json',
      data: ApiUtils.removeNulls(item.toJson()),
    );
    return InventoryItem.fromJson(response.data);
  }

  /// Upraví existující položku ceníku.
  Future<InventoryItem> updateItem(int id, InventoryItem item) async {
    final response = await _dio.patch(
      'inventory_items/$id.json',
      data: ApiUtils.removeNulls(item.toJson()),
    );
    return InventoryItem.fromJson(response.data);
  }

  /// Smaže položku z ceníku.
  Future<void> deleteItem(int id) async {
    await _dio.delete('inventory_items/$id.json');
  }

  /// Archivuje položku.
  Future<InventoryItem> archiveItem(int id) async {
    final response = await _dio.post('inventory_items/$id/archive.json');
    return InventoryItem.fromJson(response.data);
  }

  /// Obnoví položku z archivu.
  Future<InventoryItem> unarchiveItem(int id) async {
    final response = await _dio.post('inventory_items/$id/unarchive.json');
    return InventoryItem.fromJson(response.data);
  }
}
