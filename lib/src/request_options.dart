class RequestOptions {
  final Map<String, String>? headers;
  final Duration? timeout;

  RequestOptions({this.headers, this.timeout});

  @override
  String toString() {
    return 'RequestOptions{headers: $headers, timeout: $timeout}';
  }
}
