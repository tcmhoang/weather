import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:weather/weather/weather.dart';
import 'package:weather/weather_presentation/widgets/widgets.dart';

import 'package:weather/weather_repository/weather_repository.dart'
    hide Weather;

void main() {
  group('WeatherPopulated', () {
    final weather = Weather(
      condition: WeatherCondition.clear,
      temperature: const Temperature(value: 42),
      location: 'Chicago',
      lastUpdated: DateTime(2020),
    );

    testWidgets('renders correct emoji (clear)', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WeatherPopulated(
              weather: weather,
              unit: TemperatureUnits.fahrenheit,
              onRefresh: () async {},
            ),
          ),
        ),
      );
      expect(find.text('☀️'), findsOneWidget);
    });

    testWidgets('renders correct emoji (rainy)', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WeatherPopulated(
              weather: weather.copyWith(condition: WeatherCondition.rainy),
              unit: TemperatureUnits.fahrenheit,
              onRefresh: () async {},
            ),
          ),
        ),
      );
      expect(find.text('🌧️'), findsOneWidget);
    });

    testWidgets('renders correct emoji (cloudy)', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WeatherPopulated(
              weather: weather.copyWith(condition: WeatherCondition.cloudy),
              unit: TemperatureUnits.fahrenheit,
              onRefresh: () async {},
            ),
          ),
        ),
      );
      expect(find.text('☁️'), findsOneWidget);
    });

    testWidgets('renders correct emoji (snowy)', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WeatherPopulated(
              weather: weather.copyWith(condition: WeatherCondition.snowy),
              unit: TemperatureUnits.fahrenheit,
              onRefresh: () async {},
            ),
          ),
        ),
      );
      expect(find.text('🌨️'), findsOneWidget);
    });

    testWidgets('renders correct emoji (unknown)', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WeatherPopulated(
              weather: weather.copyWith(condition: WeatherCondition.unknown),
              unit: TemperatureUnits.fahrenheit,
              onRefresh: () async {},
            ),
          ),
        ),
      );
      expect(find.text('❓'), findsOneWidget);
    });
  });
}
