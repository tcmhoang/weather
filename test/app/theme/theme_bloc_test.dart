import 'package:flutter/material.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:weather/app/theme/theme.dart';
import 'package:weather/weather/weather.dart';
import '../../weather_application/helper/hydrated_bloc.dart';

import 'package:weather/weather_repository/weather_repository.dart'
    hide Weather;

class MockWeather extends Mock implements Weather {
  MockWeather(this._condition);

  final WeatherCondition _condition;

  @override
  WeatherCondition get condition => _condition;
}

void main() {
  group('ThemeBloc', () {
    test('initial state is correct', () {
      mockHydratedStorage(() {
        expect(ThemeBloc().state.color, ThemeBloc.kDefaultColor);
      });
    });

    group('toJson/fromJson', () {
      test('work properly', () {
        mockHydratedStorage(() {
          final themeBloc = ThemeBloc();
          expect(
            themeBloc.fromJson(themeBloc.toJson(themeBloc.state)!),
            themeBloc.state,
          );
        });
      });
    });

    group('updateTheme', () {
      final clearWeather = MockWeather(WeatherCondition.clear);
      final snowyWeather = MockWeather(WeatherCondition.snowy);
      final cloudyWeather = MockWeather(WeatherCondition.cloudy);
      final rainyWeather = MockWeather(WeatherCondition.rainy);
      final unknownWeather = MockWeather(WeatherCondition.unknown);

      late ThemeBloc themeBloc;

      setUp(() async {
        themeBloc = await mockHydratedStorage(ThemeBloc.new);
      });

      blocTest<ThemeBloc, ThemeState>(
        'emits correct state for WeatherCondition.clear',
        build: () => themeBloc,
        act: (bloc) => bloc.add(ThemeEvent.submit(weather: clearWeather)),
        expect: () => [
          isA<ThemeState>().having(
            (c) => c.color,
            'Correct Color',
            Colors.orangeAccent,
          )
        ],
      );

      blocTest<ThemeBloc, ThemeState>(
        'emits correct color for WeatherCondition.snowy',
        build: () => themeBloc,
        act: (bloc) => bloc.add(ThemeEvent.submit(weather: snowyWeather)),
        expect: () => [
          isA<ThemeState>().having(
            (c) => c.color,
            'Correct Color',
            Colors.lightBlueAccent,
          )
        ],
      );

      blocTest<ThemeBloc, ThemeState>(
        'emits correct color for WeatherCondition.cloudy '
        'when loading a new state',
        build: () => themeBloc,
        act: (bloc) => bloc.add(
          ThemeEvent.weatherUpdate(weather: cloudyWeather),
        ),
        expect: () => [
          isA<ThemeState>().having(
            (c) => c.color,
            'Correct Color',
            Colors.blueGrey,
          )
        ],
      );

      blocTest<ThemeBloc, ThemeState>(
        'emits correct color for WeatherCondition.rainy '
        'when loading a new state',
        build: () => themeBloc,
        act: (bloc) =>
            bloc.add(ThemeEvent.weatherUpdate(weather: rainyWeather)),
        expect: () => [
          isA<ThemeState>().having(
            (c) => c.color,
            'Correct Color',
            Colors.indigoAccent,
          )
        ],
      );

      blocTest<ThemeBloc, ThemeState>(
        'emits correct color for WeatherCondition.unknown '
        'when loading a new state',
        build: () => themeBloc,
        act: (bloc) =>
            bloc.add(ThemeEvent.weatherUpdate(weather: unknownWeather)),
        expect: () => [
          isA<ThemeState>().having(
            (c) => c.color,
            'Correct Color',
            ThemeBloc.kDefaultColor,
          )
        ],
      );
    });
  });
}
