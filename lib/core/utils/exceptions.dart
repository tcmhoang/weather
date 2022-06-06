class RestApiException implements Exception {
  RestApiException(this.statusCode);

  final int? statusCode;
}

class NoInternetException implements Exception {}
