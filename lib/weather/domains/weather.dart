import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/weather_repository/weather_repository.dart'
    hide Weather;
import 'package:weather/weather_repository/weather_repository.dart'
    as repository;

import 'temperature.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  const factory Weather({
    required WeatherCondition condition,
    required DateTime lastUpdated,
    required String location,
    required Temperature temperature,
  }) = _Weather;

  factory Weather.fromRepository(repository.Weather weather) {
    return Weather(
      condition: weather.condition,
      lastUpdated: DateTime.now(),
      location: weather.location,
      temperature: Temperature(value: weather.temperature),
    );
  }

  static final empty = Weather(
    condition: WeatherCondition.unknown,
    lastUpdated: DateTime(0),
    temperature: const Temperature(value: 0),
    location: '--',
  );
}
