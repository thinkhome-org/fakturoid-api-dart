import 'package:dio/dio.dart';
import 'auth_repository.dart';
import 'token_storage.dart';

class FakturoidAuthInterceptor extends Interceptor {
  final TokenStorage _tokenStorage;
  final AuthRepository _authRepository;
  final Dio _dio;

  bool _isRefreshing = false;
  final _requestsQueue = <Map<String, dynamic>>[];

  FakturoidAuthInterceptor({
    required TokenStorage tokenStorage,
    required AuthRepository authRepository,
    required Dio dio,
  }) : _tokenStorage = tokenStorage,
       _authRepository = authRepository,
       _dio = dio;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Check if token is valid
    if (await _tokenStorage.hasValidToken()) {
      final token = await _tokenStorage.getAccessToken();
      options.headers['Authorization'] = 'Bearer $token';
      return handler.next(options);
    }

    // Try to refresh token proactively
    try {
      if (!_isRefreshing) {
        _isRefreshing = true;
        final newToken = await _authRepository.refreshToken();
        _isRefreshing = false;

        if (newToken != null) {
          options.headers['Authorization'] = 'Bearer $newToken';
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
    if (err.response?.statusCode == 401) {
      if (!_isRefreshing) {
        _isRefreshing = true;
        try {
          final newToken = await _authRepository.refreshToken();
          _isRefreshing = false;

          if (newToken != null) {
            // Processing queue of pending requests
            for (var req in _requestsQueue) {
              _dio.fetch(req['options']);
            }
            _requestsQueue.clear();

            // Retry original request
            final opts = err.requestOptions;
            opts.headers['Authorization'] = 'Bearer $newToken';

            final response = await _dio.fetch(opts);
            return handler.resolve(response);
          }
        } catch (e) {
          _isRefreshing = false;
          _requestsQueue.clear();
          await _tokenStorage.clearAll();
        }
      } else {
        // If already refreshing, could add to queue. Here we just propagate for simplicity.
        return handler.next(err);
      }
    }
    return handler.next(err);
  }
}
