import 'package:dartz/dartz.dart';
import 'package:weather/meta_weather_api/meta_weather_api.dart';

abstract class IWeatherRepository {
  Future<Option<Weather>> getWeather(String city);
}

class WeatherRepository implements IWeatherRepository {
  WeatherRepository({required IMetaWeatherApi weatherApi})
      : _weatherApi = weatherApi;

  final IMetaWeatherApi _weatherApi;
  @override
  Future<Option<Weather>> getWeather(String city) {
    throw UnimplementedError();
  }
}
