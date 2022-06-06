import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:weather/weather_repository/weather_repository.dart';

import 'package:weather/meta_weather_api/meta_weather_api.dart'
    as infrastructure;

void main() {
  group('Weather', () {
    late infrastructure.Weather weatherDto;
    const kLocation = 'Durham';
    setUpAll(() {
      weatherDto = infrastructure.Weather.fromJson(<String, dynamic>{
        'id': 4907479830888448,
        'weather_state_name': 'UNKNOWN',
        'weather_state_abbr': '-',
        'wind_direction_compass': 'UNKNOWN',
        'created': '2020-10-26T00:20:01.840132Z',
        'applicable_date': '2020-10-26',
        'min_temp': 7.9399999999999995,
        'max_temp': 13.239999999999998,
        'the_temp': 12.825,
        'wind_speed': 7.876886316914553,
        'wind_direction': 246.17046093256732,
        'air_pressure': 997.0,
        'humidity': 73,
        'visibility': 11.037727173307882,
        'predictability': 73
      });
    });
    test('fromDomain', () {
      final domainWeather = Weather.fromWeatherDto(weatherDto, kLocation);
      expect(
        domainWeather,
        const Weather(
          location: kLocation,
          temperature: 12.825,
          condition: WeatherCondition.unknown,
        ),
      );
    });

    test('getProps', () {
      final domainWeather = Weather.fromWeatherDto(weatherDto, kLocation);
      expect(
        domainWeather.props,
        tuple3(
          kLocation,
          weatherDto.theTemp,
          WeatherCondition.unknown,
        ),
      );
    });
  });
}
