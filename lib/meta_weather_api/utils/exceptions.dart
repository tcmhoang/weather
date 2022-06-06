import '../../core/utils/exceptions.dart';

/// Exception thrown when locationSearch fails.
class LocationIdRequestException extends RestApiException {
  LocationIdRequestException(super.statusCode);
}

/// Exception thrown when the provided location is not found.
class LocationNotFoundException implements Exception {}

/// Exception thrown when getWeather fails.
class WeatherRequestException implements Exception {}

/// Exception thrown when weather for provided location is not found.
class WeatherNotFoundException implements Exception {}
