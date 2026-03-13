import 'package:dio/dio.dart';
import '../models/number_format.dart';

class NumberFormatsRepository {
  final Dio _dio;

  NumberFormatsRepository(this._dio);

  Future<List<NumberFormat>> getNumberFormats() async {
    final response = await _dio.get('number_formats/invoices.json');
    final List<dynamic> data = response.data;
    return data.map((json) => NumberFormat.fromJson(json)).toList();
  }
}
