import 'package:meta/meta.dart';

/// Algolia runtime exception.
@sealed
abstract class AlgoliaException implements Exception {}

/// Exception thrown in case of API failure.
class AlgoliaApiException implements AlgoliaException {
  const AlgoliaApiException(this.httpStatusCode, this.message);

  final int httpStatusCode;
  final String? message;

  @override
  String toString() {
    return 'AlgoliaApiException{message: $message, httpStatusCode: $httpStatusCode}';
  }
}

/// Exception thrown in case of request timeout.
class AlgoliaTimeoutException implements AlgoliaException {
  const AlgoliaTimeoutException(this.message);

  /// Timeout error message.
  final String? message;

  @override
  String toString() {
    return 'AlgoliaTimeoutException{message: $message}';
  }
}

/// Exception thrown in case I/O exceptions
class AlgoliaIOException implements AlgoliaException {
  const AlgoliaIOException(this.error);

  /// Inner error.
  final dynamic error;

  @override
  String toString() {
    return 'AlgoliaIOException{error: $error}';
  }
}

/// Exception thrown when all hosts are unreachable.
class UnreachableHostsException implements AlgoliaException {
  const UnreachableHostsException(this.errors);

  /// List of thrown errors
  final List errors;

  @override
  String toString() {
    return 'UnreachableHostsException{errors: $errors}';
  }
}
