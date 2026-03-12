/// Base exception for all Fakturoid API errors
abstract class FakturoidException implements Exception {
  final String message;
  final int? statusCode;

  FakturoidException(this.message, {this.statusCode});

  @override
  String toString() {
    if (statusCode != null) {
      return '$runtimeType(statusCode: $statusCode, message: $message)';
    }
    return '$runtimeType($message)';
  }
}

/// Thrown when authentication fails or token is invalid
class FakturoidAuthException extends FakturoidException {
  FakturoidAuthException(super.message, {super.statusCode});
}

/// Thrown when API validation fails (422 Unprocessable Entity)
class FakturoidValidationException extends FakturoidException {
  final Map<String, dynamic> errors;

  FakturoidValidationException(String message, this.errors)
    : super(message, statusCode: 422);

  @override
  String toString() {
    return 'FakturoidValidationException($message, errors: $errors)';
  }
}

/// Thrown when rate limit is exceeded (429 Too Many Requests)
class FakturoidRateLimitException extends FakturoidException {
  FakturoidRateLimitException(super.message) : super(statusCode: 429);
}

/// Thrown when a requested resource is not found (404 Not Found)
class FakturoidNotFoundException extends FakturoidException {
  FakturoidNotFoundException(super.message) : super(statusCode: 404);
}

/// Thrown for server-side errors (500+)
class FakturoidServerException extends FakturoidException {
  FakturoidServerException(super.message, {super.statusCode});
}
