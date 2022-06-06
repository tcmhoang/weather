import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/enums.dart';
part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const Weather._();
  const factory Weather({
    required String location,
    required double temperature,
    required WeatherCondition condition,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Tuple3<String, double, WeatherCondition> get props =>
      tuple3(location, temperature, condition);
}
