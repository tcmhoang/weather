import 'package:dio/dio.dart';

import '../core/utils/dio_extensions.dart';
import '../core/utils/exceptions.dart';
import 'meta_weather_api.dart';

abstract class IMetaWeatherApi {
  static const _baseUrl = 'metaweather.com';
  Future<Location> locationSearch(String query);
  Future<Weather> getWeather(int locationId);
}

class MetaWeatherApiClient implements IMetaWeatherApi {
  MetaWeatherApiClient(this._dio);

  final Dio _dio;

  @override
  Future<Location> locationSearch(String query) async {
    final locationRequest = Uri.https(
      IMetaWeatherApi._baseUrl,
      '/api/location/search',
      <String, String>{'query': query},
    );
    try {
      final locationResponse = await _dio.getUri<dynamic>(locationRequest);
      final responseData = locationResponse.data as List<dynamic>?;
      if (locationResponse.statusCode != 200) {
        throw LocationIdRequestException(locationResponse.statusCode);
      } else if (responseData?.isEmpty ?? true) {
        throw LocationNotFoundException();
      } else {
        return Location.fromJson(
          responseData!.first as Map<String, dynamic>,
        );
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        throw NoInternetException();
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<Weather> getWeather(int locationId) async {
    final weatherRequest =
        Uri.https(IMetaWeatherApi._baseUrl, '/api/location/$locationId');
    try {
      final weatherResponse = await _dio.getUri<dynamic>(weatherRequest);
      final responseData = weatherResponse.data as Map<String, dynamic>?;
      if (weatherResponse.statusCode != 200) {
        throw WeatherRequestException();
      } else if (responseData?.isEmpty ?? true) {
        throw WeatherNotFoundException();
      } else {
        final contents = responseData?['consolidated_weather'] as List?;
        if (contents?.isEmpty ?? true) {
          throw WeatherNotFoundException();
        } else {
          return Weather.fromJson(contents!.first as Map<String, dynamic>);
        }
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        throw NoInternetException();
      } else {
        rethrow;
      }
    }
  }
}
