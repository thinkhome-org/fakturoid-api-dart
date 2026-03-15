import 'package:dio/dio.dart';

import '../responses/paginated_response.dart';
import 'fakturoid_exceptions.dart';

class FakturoidErrorInterceptor extends Interceptor {
  String _extractMessage(Object? data) {
    if (data is Map<String, dynamic>) {
      final errorDescription = data['error_description'];
      if (errorDescription is String && errorDescription.isNotEmpty) {
        return errorDescription;
      }

      final message = data['message'];
      if (message is String && message.isNotEmpty) {
        return message;
      }

      final error = data['error'];
      if (error is String && error.isNotEmpty) {
        return error;
      }
    }

    if (data is String && data.isNotEmpty) {
      return data;
    }

    return 'Unknown API Error';
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    if (response == null) {
      return handler.next(err);
    }

    final statusCode = response.statusCode;
    final data = response.data;

    final message = _extractMessage(data);
    final errorCode = data is Map<String, dynamic>
        ? data['error'] as String?
        : null;
    final rateLimit = FakturoidRateLimit.fromHeaders(response.headers);

    FakturoidException? fakturoidException;

    switch (statusCode) {
      case 401:
        fakturoidException = FakturoidAuthException(
          message,
          statusCode: 401,
          rateLimit: rateLimit,
        );
        break;
      case 403:
        fakturoidException = FakturoidApiErrorException(
          message,
          statusCode: 403,
          rateLimit: rateLimit,
          errorCode: errorCode,
        );
        break;
      case 402:
        fakturoidException = FakturoidPaymentRequiredException(
          message,
          details: data,
          rateLimit: rateLimit,
        );
        break;
      case 404:
        fakturoidException = FakturoidNotFoundException(
          message,
          rateLimit: rateLimit,
        );
        break;
      case 422:
        final errors =
            data is Map<String, dynamic> && data.containsKey('errors')
            ? data['errors'] as Map<String, dynamic>
            : <String, dynamic>{};
        fakturoidException = FakturoidValidationException(
          message,
          errors,
          rateLimit: rateLimit,
        );
        break;
      case 429:
        fakturoidException = FakturoidRateLimitException(
          message,
          rateLimit: rateLimit,
        );
        break;
      case 503:
        fakturoidException = FakturoidTemporarilyUnavailableException(
          message,
          rateLimit: rateLimit,
        );
        break;
      default:
        if (statusCode != null && statusCode >= 500) {
          fakturoidException = FakturoidServerException(
            message,
            statusCode: statusCode,
            rateLimit: rateLimit,
          );
        } else if (statusCode != null && statusCode >= 400) {
          fakturoidException = FakturoidApiErrorException(
            message,
            statusCode: statusCode,
            rateLimit: rateLimit,
            errorCode: errorCode,
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
