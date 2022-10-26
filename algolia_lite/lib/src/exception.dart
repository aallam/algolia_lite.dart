import 'package:meta/meta.dart';

/// Algolia runtime exception.
@sealed
abstract class AlgoliaException implements Exception {}

/// Exception thrown when an error occurs during API requests.
class AlgoliaClientException implements AlgoliaException {}

/// Exception thrown in case of API failure.
class AlgoliaApiException implements AlgoliaException {
  AlgoliaApiException(this.httpStatusCode, this.message);

  final String message;
  final int httpStatusCode;

  @override
  String toString() {
    return 'AlgoliaApiException{message: $message, httpStatusCode: $httpStatusCode}';
  }
}

/// Exception thrown when all hosts are unreachable.
class UnreachableHostsException implements AlgoliaException {
  UnreachableHostsException(this.errors);

  /// List of thrown errors
  final List errors;

  @override
  String toString() {
    return 'UnreachableHostsException{errors: $errors}';
  }
}
