import 'package:flutter/material.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:weather/settings/settings.dart';
import 'package:weather/weather/weather.dart';
import '../search/search_view_test.dart';

class MockWeatherCubit extends MockCubit<WeatherState> implements WeatherCubit {
}

void main() {
  group('SettingsPage', () {
    late WeatherCubit weatherCubit;

    setUp(() {
      weatherCubit = MockWeatherCubit();
    });

    testWidgets('calls toggleUnits when switch is changed', (tester) async {
      final mockStackRouter = MockStackRouter();
      final fakePageRouteInfo = FakePageRouteInfo<void>();
      when(() => mockStackRouter.push<String>(fakePageRouteInfo))
          .thenAnswer((_) async => '');
      whenListen(
        weatherCubit,
        Stream.fromIterable([
          WeatherState.success(
            unit: TemperatureUnits.celsius,
            weather: Weather.empty,
          ),
          WeatherState.success(
            unit: TemperatureUnits.fahrenheit,
            weather: Weather.empty,
          ),
        ]),
      );
      when(() => weatherCubit.state).thenReturn(
        WeatherState.success(weather: Weather.empty),
      );
      when(() => weatherCubit.toggleUnits()).thenReturn(unit);
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push<void>(
                    MaterialPageRoute(
                      builder: (context) {
                        return BlocProvider.value(
                          value: weatherCubit,
                          child: const SettingsPage(),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(Switch));
      verify(() => weatherCubit.toggleUnits()).called(1);
    });
  });
}
