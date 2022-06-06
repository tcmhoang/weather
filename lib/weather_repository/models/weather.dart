import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../meta_weather_api/meta_weather_api.dart' as infrastructure;
import '../utils/weather_state_extensions.dart';
import 'enums/enums.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const Weather._();
  const factory Weather({
    required String location,
    required double temperature,
    required WeatherCondition condition,
  }) = _Weather;

  factory Weather.fromWeatherDto(
    infrastructure.Weather weather,
    String location,
  ) =>
      Weather(
        location: location,
        temperature: weather.theTemp,
        condition: weather.weatherStateAbbr.toCondition,
      );

  Tuple3<String, double, WeatherCondition> get props =>
      tuple3(location, temperature, condition);
}
