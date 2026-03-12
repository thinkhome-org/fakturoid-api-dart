import 'package:dio/dio.dart';
import 'auth_repository.dart';
import 'token_storage.dart';

class FakturoidAuthInterceptor extends Interceptor {
  final TokenStorage _tokenStorage;
  final AuthRepository _authRepository;
  final Dio _dio;

  bool _isRefreshing = false;

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

    try {
      if (!_isRefreshing) {
        _isRefreshing = true;
        final newToken = await _authRepository.refreshToken();
        _isRefreshing = false;

        if (newToken != null) {
          await _applyAuthorizationHeader(options);
          return handler.next(options);
        }
      }
    } catch (e) {
      _isRefreshing = false;
      await _tokenStorage.clearAll();
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

      if (!_isRefreshing) {
        _isRefreshing = true;
        try {
          final newToken = await _authRepository.refreshToken();
          _isRefreshing = false;

          if (newToken != null) {
            final opts = err.requestOptions;
            opts.extra['auth_retry'] = true;
            await _applyAuthorizationHeader(opts);

            final response = await _dio.fetch(opts);
            return handler.resolve(response);
          }
        } catch (e) {
          _isRefreshing = false;
          await _tokenStorage.clearAll();
        }
      }
    }
    return handler.next(err);
  }
}
