import 'dart:async';
import 'package:dio/dio.dart';
import 'auth_repository.dart';
import 'token_storage.dart';

class FakturoidAuthInterceptor extends Interceptor {
  final TokenStorage _tokenStorage;
  final AuthRepository _authRepository;
  final Dio _dio;

  Completer<String?>? _refreshCompleter;

  FakturoidAuthInterceptor({
    required TokenStorage tokenStorage,
    required AuthRepository authRepository,
    required Dio dio,
  }) : _tokenStorage = tokenStorage,
       _authRepository = authRepository,
       _dio = dio;

  Future<void> _applyAuthorizationHeader(RequestOptions options) async {
    final token = await _tokenStorage.getAccessToken();
    if (token == null || token.isEmpty) {
      return;
    }

    final tokenType = await _tokenStorage.getTokenType() ?? 'Bearer';
    options.headers['Authorization'] = '$tokenType $token';
  }

  /// Refreshes the token, ensuring only one refresh happens at a time.
  /// Concurrent callers wait for the same refresh result.
  Future<String?> _performRefresh() async {
    if (_refreshCompleter != null) {
      return _refreshCompleter!.future;
    }

    _refreshCompleter = Completer<String?>();
    try {
      final newToken = await _authRepository.refreshToken();
      _refreshCompleter!.complete(newToken);
      return newToken;
    } catch (e) {
      _refreshCompleter!.complete(null);
      await _tokenStorage.clearAll();
      return null;
    } finally {
      _refreshCompleter = null;
    }
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (await _tokenStorage.hasValidToken()) {
      await _applyAuthorizationHeader(options);
      return handler.next(options);
    }

    final refreshToken = await _tokenStorage.getRefreshToken();
    if (refreshToken == null || refreshToken.isEmpty) {
      return handler.next(options);
    }

    final newToken = await _performRefresh();
    if (newToken != null) {
      await _applyAuthorizationHeader(options);
    }

    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final alreadyRetried = err.requestOptions.extra['auth_retry'] == true;
    if (err.response?.statusCode == 401 && !alreadyRetried) {
      final refreshToken = await _tokenStorage.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        return handler.next(err);
      }

      final newToken = await _performRefresh();
      if (newToken != null) {
        final opts = err.requestOptions;
        opts.extra['auth_retry'] = true;
        await _applyAuthorizationHeader(opts);

        try {
          final response = await _dio.fetch(opts);
          return handler.resolve(response);
        } catch (e) {
          // Retry failed, fall through to next handler
        }
      }
    }
    return handler.next(err);
  }
}
