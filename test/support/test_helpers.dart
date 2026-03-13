import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fakturoid_api/fakturoid_api.dart';

Dio createTestDio(HttpClientAdapter adapter) {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://app.fakturoid.cz/api/v3/accounts/demo'),
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

final class InMemoryTokenStorage implements TokenStorage {
  String? _accessToken;
  String? _refreshToken;
  String? _tokenType;
  DateTime? _expiresAt;
  String? _pkceVerifier;
  String? _authState;

  @override
  Future<void> clearAll() async {
    _accessToken = null;
    _refreshToken = null;
    _tokenType = null;
    _expiresAt = null;
    _pkceVerifier = null;
    _authState = null;
  }

  @override
  Future<void> clearAuthState() async {
    _authState = null;
  }

  @override
  Future<void> clearPkceVerifier() async {
    _pkceVerifier = null;
  }

  @override
  Future<String?> getAccessToken() async => _accessToken;

  @override
  Future<String?> getAuthState() async => _authState;

  @override
  Future<DateTime?> getExpiresAt() async => _expiresAt;

  @override
  Future<String?> getPkceVerifier() async => _pkceVerifier;

  @override
  Future<String?> getRefreshToken() async => _refreshToken;

  @override
  Future<String?> getTokenType() async => _tokenType;

  @override
  Future<bool> hasValidToken() async {
    return _accessToken != null && _expiresAt?.isAfter(DateTime.now()) == true;
  }

  @override
  Future<void> saveAuthState(String state) async {
    _authState = state;
  }

  @override
  Future<void> savePkceVerifier(String verifier) async {
    _pkceVerifier = verifier;
  }

  @override
  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
    required String tokenType,
    required DateTime expiresAt,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _tokenType = tokenType;
    _expiresAt = expiresAt;
  }
}
