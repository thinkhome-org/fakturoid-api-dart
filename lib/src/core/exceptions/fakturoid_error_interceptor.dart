import 'package:dio/dio.dart';
import 'fakturoid_exceptions.dart';

class FakturoidErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    if (response == null) {
      return handler.next(err);
    }

    final statusCode = response.statusCode;
    final data = response.data;

    String message = 'Unknown API Error';
    if (data is Map<String, dynamic> && data.containsKey('message')) {
      message = data['message'];
    } else if (data is String) {
      message = data;
    }

    FakturoidException? fakturoidException;

    switch (statusCode) {
      case 401:
      case 403:
        fakturoidException = FakturoidAuthException(
          message,
          statusCode: statusCode,
        );
        break;
      case 404:
        fakturoidException = FakturoidNotFoundException(message);
        break;
      case 422:
        final errors =
            data is Map<String, dynamic> && data.containsKey('errors')
            ? data['errors'] as Map<String, dynamic>
            : <String, dynamic>{};
        fakturoidException = FakturoidValidationException(message, errors);
        break;
      case 429:
        fakturoidException = FakturoidRateLimitException(message);
        break;
      default:
        if (statusCode != null && statusCode >= 500) {
          fakturoidException = FakturoidServerException(
            message,
            statusCode: statusCode,
          );
        }
    }

    if (fakturoidException != null) {
      // Throwing our custom exception instead of generic DioException
      return handler.reject(
        FakturoidDioException(
          requestOptions: err.requestOptions,
          response: err.response,
          type: err.type,
          error: fakturoidException,
        ),
      );
    }

    return handler.next(err);
  }
}

/// Wrapper to satisfy Dio's signature while carrying our custom exception
class FakturoidDioException extends DioException {
  FakturoidDioException({
    required super.requestOptions,
    super.response,
    super.type,
    required super.error,
  });

  @override
  String toString() => error.toString();
}
