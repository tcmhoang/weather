import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/enums.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required int id,
    required String weatherStateName,
    @JsonKey(unknownEnumValue: WeatherState.unknown)
        required WeatherState weatherStateAbbr,
    @JsonKey(unknownEnumValue: WindDirectionCompass.unknown)
        required WindDirectionCompass windDirectionCompass,
    required DateTime created,
    required DateTime applicableDate,
    required double minTemp,
    required double maxTemp,
    required double theTemp,
    required double windSpeed,
    required double windDirection,
    required double airPressure,
    required int humidity,
    required double visibility,
    required int predictability,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

extension WeatherStateX on WeatherState {
  String? get abbr => _$WeatherStateEnumMap[this];
}
