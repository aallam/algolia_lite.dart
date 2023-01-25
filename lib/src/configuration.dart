import 'host.dart';

/// Configuration used by a client.
abstract class ClientConfig {
  /// Application to target. Is passed as a HTTP header.
  String get applicationID;

  /// API key for a given [applicationID].
  String get apiKey;

  /// List of hosts and back-up host used to perform a custom retry logic.
  List<Host>? get hosts;

  /// Default headers that should be applied to every request.
  Map<String, String>? get headers;

  /// The timeout for each request when performing (read) operations.
  Duration get timeout;
}
