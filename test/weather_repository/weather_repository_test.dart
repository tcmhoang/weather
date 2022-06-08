import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:weather/weather_repository/weather_repository.dart';

import 'package:weather/meta_weather_api/meta_weather_api.dart'
    as meta_weather_api;

class MockMetaWeatherApiClient extends Mock
    implements meta_weather_api.MetaWeatherApiClient {}

class MockLocation extends Mock implements meta_weather_api.Location {}

class MockWeather extends Mock implements meta_weather_api.Weather {}

void main() {
  group('WeatherRepository', () {
    late meta_weather_api.IMetaWeatherApi metaWeatherApiClient;
    late WeatherRepository weatherRepository;

    setUp(() {
      metaWeatherApiClient = MockMetaWeatherApiClient();
      weatherRepository = WeatherRepository(weatherApi: metaWeatherApiClient);
    });

    group('getWeather', () {
      const city = 'london';
      const woeid = 44418;

      test('calls locationSearch with correct city', () async {
        try {
          await weatherRepository.getWeather(city);
        } catch (_) {}
        verify(() => metaWeatherApiClient.locationSearch(city)).called(1);
      });

      test('Return none when locationSearch fails', () async {
        final exception = Exception('oops');
        when(() => metaWeatherApiClient.locationSearch(any()))
            .thenAnswer((_) async => throw exception);
        final noneValue = await weatherRepository.getWeather(city);
        expect(
          noneValue,
          none<meta_weather_api.Weather>(),
        );
      });

      test('Return none when getWeather fails', () async {
        final exception = Exception('oops');
        final location = MockLocation();

        when(() => location.woeid).thenReturn(woeid);
        when(() => location.title).thenReturn('London');
        when(() => metaWeatherApiClient.locationSearch(any()))
            .thenAnswer((_) async => location);
        when(() => metaWeatherApiClient.getWeather(woeid))
            .thenAnswer((_) async => throw exception);

        final noneValue = await weatherRepository.getWeather(city);
        expect(
          noneValue,
          none<meta_weather_api.Weather>(),
        );
      });

      test('calls getWeather with correct woeid', () async {
        final location = MockLocation();
        when(() => location.woeid).thenReturn(woeid);
        when(() => location.title).thenReturn(city);
        when(() => metaWeatherApiClient.locationSearch(any())).thenAnswer(
          (_) async => location,
        );
        try {
          await weatherRepository.getWeather(city);
        } catch (_) {}
        verify(() => metaWeatherApiClient.getWeather(woeid)).called(1);
      });

      test('returns correct weather on success (showers)', () async {
        final location = MockLocation();
        final weather = MockWeather();
        when(() => location.woeid).thenReturn(woeid);
        when(() => location.title).thenReturn('London');
        when(() => weather.weatherStateAbbr).thenReturn(
          meta_weather_api.WeatherState.showers,
        );
        when(() => weather.theTemp).thenReturn(42.42);
        when(() => metaWeatherApiClient.locationSearch(any())).thenAnswer(
          (_) async => location,
        );
        when(() => metaWeatherApiClient.getWeather(any())).thenAnswer(
          (_) async => weather,
        );
        final actual = await weatherRepository.getWeather(city);

        actual.fold(
          () => fail('Cannot be none'),
          (weather) => expect(
            weather,
            const Weather(
              temperature: 42.42,
              location: 'London',
              condition: WeatherCondition.rainy,
            ),
          ),
        );
      });

      test('returns correct weather on success (heavy cloud)', () async {
        final location = MockLocation();
        final weather = MockWeather();
        when(() => location.woeid).thenReturn(woeid);
        when(() => location.title).thenReturn('London');
        when(() => weather.weatherStateAbbr).thenReturn(
          meta_weather_api.WeatherState.heavyCloud,
        );
        when(() => weather.theTemp).thenReturn(42.42);
        when(() => metaWeatherApiClient.locationSearch(any())).thenAnswer(
          (_) async => location,
        );
        when(() => metaWeatherApiClient.getWeather(any())).thenAnswer(
          (_) async => weather,
        );
        final actual = await weatherRepository.getWeather(city);

        actual.fold(
          () => fail('Cannot be none'),
          (weather) => expect(
            weather,
            const Weather(
              temperature: 42.42,
              location: 'London',
              condition: WeatherCondition.cloudy,
            ),
          ),
        );
      });

      test('returns correct weather on success (light cloud)', () async {
        final location = MockLocation();
        final weather = MockWeather();
        when(() => location.woeid).thenReturn(woeid);
        when(() => location.title).thenReturn('London');
        when(() => weather.weatherStateAbbr).thenReturn(
          meta_weather_api.WeatherState.lightCloud,
        );
        when(() => weather.theTemp).thenReturn(42.42);
        when(() => metaWeatherApiClient.locationSearch(any())).thenAnswer(
          (_) async => location,
        );
        when(() => metaWeatherApiClient.getWeather(any())).thenAnswer(
          (_) async => weather,
        );
        final actual = await weatherRepository.getWeather(city);
        actual.fold(
          () => fail('Cannot be none'),
          (weather) => expect(
            weather,
            const Weather(
              temperature: 42.42,
              location: 'London',
              condition: WeatherCondition.cloudy,
            ),
          ),
        );
      });
    });
  });
}
