import '../responses/paginated_response.dart';

/// Base exception for all Fakturoid API errors
abstract class FakturoidException implements Exception {
  final String message;
  final int? statusCode;
  final FakturoidRateLimit? rateLimit;

  FakturoidException(this.message, {this.statusCode, this.rateLimit});

  @override
  String toString() {
    if (statusCode != null || rateLimit != null) {
      return '$runtimeType(statusCode: $statusCode, message: $message, '
          'rateLimit: $rateLimit)';
    }
    return '$runtimeType($message)';
  }
}

/// Thrown when authentication fails or token is invalid
class FakturoidAuthException extends FakturoidException {
  FakturoidAuthException(super.message, {super.statusCode, super.rateLimit});
}

class FakturoidApiErrorException extends FakturoidException {
  final String? errorCode;

  FakturoidApiErrorException(
    super.message, {
    super.statusCode,
    super.rateLimit,
    this.errorCode,
  });
}

class FakturoidDocumentNotReadyException extends FakturoidApiErrorException {
  FakturoidDocumentNotReadyException(super.message)
    : super(statusCode: 204, errorCode: 'document_not_ready');
}

class FakturoidPaymentRequiredException extends FakturoidApiErrorException {
  final Object? details;

  FakturoidPaymentRequiredException(
    super.message, {
    this.details,
    super.rateLimit,
  }) : super(statusCode: 402, errorCode: 'payment_required');
}

class FakturoidTemporarilyUnavailableException
    extends FakturoidApiErrorException {
  FakturoidTemporarilyUnavailableException(super.message, {super.rateLimit})
    : super(statusCode: 503, errorCode: 'temporarily_unavailable');
}

/// Thrown when API validation fails (422 Unprocessable Entity)
class FakturoidValidationException extends FakturoidException {
  final Map<String, dynamic> errors;

  FakturoidValidationException(
    super.message,
    this.errors, {
    super.statusCode = 422,
    super.rateLimit,
  });

  @override
  String toString() {
    return 'FakturoidValidationException($message, errors: $errors)';
  }
}

/// Thrown when rate limit is exceeded (429 Too Many Requests)
class FakturoidRateLimitException extends FakturoidException {
  FakturoidRateLimitException(super.message, {super.rateLimit})
    : super(statusCode: 429);
}

/// Thrown when a requested resource is not found (404 Not Found)
class FakturoidNotFoundException extends FakturoidException {
  FakturoidNotFoundException(super.message, {super.rateLimit})
    : super(statusCode: 404);
}

/// Thrown for server-side errors (500+)
class FakturoidServerException extends FakturoidException {
  FakturoidServerException(super.message, {super.statusCode, super.rateLimit});
}
