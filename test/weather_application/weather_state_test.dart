import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:weather/weather/weather.dart';

void main() {
  group('WeatherState', () {
    test(
        'returns correct values in unit for WeatherStatus.initial '
        'when specify no value', () {
      final state = WeatherState.initial(weather: Weather.empty);
      expect(state.unit, TemperatureUnits.celsius);
      state.maybeWhen<Unit>(
        initial: (_, w) {
          expect(w, Weather.empty);
          return unit;
        },
        orElse: () => fail('Must be initial state'),
      );
    });
  });

  group('Temperature Units', () {
    test('isA extension working correctly', () {
      expect(TemperatureUnits.celsius.isCelsius, true);
      expect(TemperatureUnits.celsius.isFahrenheit, false);
      expect(TemperatureUnits.fahrenheit.isCelsius, false);
      expect(TemperatureUnits.fahrenheit.isFahrenheit, true);
    });
  });
}
