import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';

Dio createTestDio(HttpClientAdapter adapter) {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://app.fakturoid.cz/api/v3/accounts/demo/'),
  );
  dio.httpClientAdapter = adapter;
  return dio;
}

final class RecordingAdapter implements HttpClientAdapter {
  RecordingAdapter({required this.onFetch});

  final ResponseBody Function(RequestOptions options) onFetch;
  RequestOptions? lastRequestOptions;

  @override
  void close({bool force = false}) {}

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    lastRequestOptions = options;
    return onFetch(options);
  }
}

ResponseBody jsonResponseBody(
  Object? data, [
  int statusCode = 200,
  Map<String, List<String>>? headers,
]) {
  final responseHeaders = <String, List<String>>{
    Headers.contentTypeHeader: [Headers.jsonContentType],
    ...?headers,
  };

  return ResponseBody.fromBytes(
    Uint8List.fromList(utf8.encode(jsonEncode(data))),
    statusCode,
    headers: responseHeaders,
  );
}

ResponseBody bytesResponseBody(List<int> data, [int statusCode = 200]) {
  return ResponseBody.fromBytes(
    Uint8List.fromList(data),
    statusCode,
    headers: {
      Headers.contentTypeHeader: ['application/octet-stream'],
    },
  );
}

ResponseBody emptyResponseBody([int statusCode = 204]) {
  return ResponseBody.fromString('', statusCode);
}
