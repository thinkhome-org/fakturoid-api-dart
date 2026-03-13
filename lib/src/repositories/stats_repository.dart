import 'package:dio/dio.dart';
import '../models/stats.dart';

class StatsRepository {
  final Dio _dio;

  StatsRepository(this._dio);

  /// Vrací finanční statistiky účtu (data z dashboardu).
  Future<Stats> getStats() async {
    final response = await _dio.get('/stats.json');
    return Stats.fromJson(response.data);
  }
}
