import 'package:dio/dio.dart';
import '../core/responses/paginated_response.dart';
import '../core/utils/api_utils.dart';
import '../models/inventory_move.dart';

class InventoryMovesRepository {
  final Dio _dio;

  InventoryMovesRepository(this._dio);

  Future<PaginatedResponse<InventoryMove>> getAllInventoryMoves({
    DateTime? since,
    DateTime? until,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    int? inventoryItemId,
    int? page,
  }) async {
    final response = await _dio.get(
      'inventory_moves.json',
      queryParameters: ApiUtils.removeNulls({
        'since': since?.toIso8601String(),
        'until': until?.toIso8601String(),
        'updated_since': updatedSince?.toIso8601String(),
        'updated_until': updatedUntil?.toIso8601String(),
        'inventory_item_id': inventoryItemId,
        'page': page,
      }),
    );

    return PaginatedResponse<InventoryMove>.fromResponse(
      response,
      currentPage: page ?? 1,
      fromJson: InventoryMove.fromJson,
    );
  }

  Future<PaginatedResponse<InventoryMove>> getInventoryMoves(
    int inventoryItemId, {
    DateTime? since,
    DateTime? until,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    int? page,
  }) async {
    return getAllInventoryMoves(
      inventoryItemId: inventoryItemId,
      since: since,
      until: until,
      updatedSince: updatedSince,
      updatedUntil: updatedUntil,
      page: page,
    );
  }

  /// Detail jednoho pohybu.
  Future<InventoryMove> getInventoryMove(int inventoryItemId, int id) async {
    final response = await _dio.get(
      'inventory_items/$inventoryItemId/inventory_moves/$id.json',
    );
    return InventoryMove.fromJson(response.data);
  }

  /// Vytvoří nový skladový pohyb (naskladnění / vyskladnění).
  Future<InventoryMove> createInventoryMove(
    int inventoryItemId,
    InventoryMove move,
  ) async {
    final response = await _dio.post(
      'inventory_items/$inventoryItemId/inventory_moves.json',
      data: ApiUtils.removeNulls(move.toJson()),
    );
    return InventoryMove.fromJson(response.data);
  }

  /// Upraví existující skladový pohyb.
  Future<InventoryMove> updateInventoryMove(
    int inventoryItemId,
    int id,
    InventoryMove move,
  ) async {
    final response = await _dio.patch(
      'inventory_items/$inventoryItemId/inventory_moves/$id.json',
      data: ApiUtils.removeNulls(move.toJson()),
    );
    return InventoryMove.fromJson(response.data);
  }

  /// Smaže skladový pohyb.
  Future<void> deleteInventoryMove(int inventoryItemId, int id) async {
    await _dio.delete(
      'inventory_items/$inventoryItemId/inventory_moves/$id.json',
    );
  }
}
