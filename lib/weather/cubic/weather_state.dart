import 'package:freezed_annotation/freezed_annotation.dart';

import '../domains/domains.dart';
import '../enums/enums.dart';

part 'weather_state.freezed.dart';
part 'weather_state.g.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial({
    @Default(TemperatureUnits.celsius) TemperatureUnits unit,
    required Weather weather,
  }) = _initial;
  const factory WeatherState.loading({
    @Default(TemperatureUnits.celsius) TemperatureUnits unit,
    required Weather weather,
  }) = _loading;
  const factory WeatherState.success({
    @Default(TemperatureUnits.celsius) TemperatureUnits unit,
    required Weather weather,
  }) = _success;
  const factory WeatherState.failure({
    @Default(TemperatureUnits.celsius) TemperatureUnits unit,
  }) = _failure;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);
}
