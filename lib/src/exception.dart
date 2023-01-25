import 'package:meta/meta.dart';

/// Algolia runtime exception.
@sealed
abstract class AlgoliaException implements Exception {}

/// Exception thrown in case of API failure.
class AlgoliaApiException implements AlgoliaException {
  const AlgoliaApiException(this.statusCode, this.error);

  final int statusCode;
  final dynamic error;

  @override
  String toString() {
    return 'AlgoliaApiException{statusCode: $statusCode, error: $error}';
  }
}

/// Exception thrown in case of request timeout.
class AlgoliaTimeoutException implements AlgoliaException {
  const AlgoliaTimeoutException(this.error);

  /// Timeout error message.
  final dynamic error;

  @override
  String toString() {
    return 'AlgoliaTimeoutException{error: $error}';
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
