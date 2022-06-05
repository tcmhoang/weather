import 'package:dio/dio.dart';

import 'infrastructure/infrastructure.dart';

abstract class IMetaWeatherApi {
  static const _baseUrl = 'www.metaweather.com';
  Future<Location> locationSearch(String query);
  Future<Weather> getWeather(int locationId);
}

class MetaWeatherApiClient implements IMetaWeatherApi {
  MetaWeatherApiClient(this._dio);

  final Dio _dio;

  @override
  Future<Location> locationSearch(String query) async {
    throw UnimplementedError();
  }

  @override
  Future<Weather> getWeather(int locationId) async {
    throw UnimplementedError();
  }
}
