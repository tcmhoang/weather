import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:weather/app/theme/theme.dart';
import 'package:weather/weather/weather.dart';
import 'package:weather/weather_presentation/weather_presentation.dart';
import '../helper/hydrated_bloc.dart';

import 'package:weather/weather_repository/weather_repository.dart'
    hide Weather;

class MockWeatherRepository extends Mock implements WeatherRepository {}

class MockThemeCubit extends MockBloc<ThemeEvent, ThemeState>
    implements ThemeBloc {}

class MockWeatherCubit extends MockCubit<WeatherState> implements WeatherCubit {
}

class MockStackRouter extends Mock implements StackRouter {}

class FakePageRouteInfo<T> extends Fake implements PageRouteInfo<T> {}

void main() {
  group('WeatherPage', () {
    late WeatherRepository weatherRepository;

    setUp(() {
      weatherRepository = MockWeatherRepository();
    });

    testWidgets('renders WeatherView', (tester) async {
      final weatherCubic = MockWeatherCubit();
      when(() => weatherCubic.state)
          .thenReturn(WeatherState.initial(weather: Weather.empty));
      await await mockHydratedStorage(() async {
        await tester.pumpWidget(
          RepositoryProvider.value(
            value: weatherRepository,
            child: BlocProvider<WeatherCubit>(
              create: (context) => WeatherCubit(weatherRepository),
              child: const MaterialApp(home: WeatherPage()),
            ),
          ),
        );
      });
      expect(find.byType(WeatherPage), findsOneWidget);
    });
  });

  group('WeatherView', () {
    final weather = Weather(
      temperature: const Temperature(value: 4.2),
      condition: WeatherCondition.cloudy,
      lastUpdated: DateTime(2020),
      location: 'London',
    );
    late ThemeBloc themeBloc;
    late WeatherCubit weatherCubit;

    setUp(() {
      themeBloc = MockThemeCubit();
      weatherCubit = MockWeatherCubit();
    });

    testWidgets('renders WeatherEmpty for WeatherStatus.initial',
        (tester) async {
      when(() => weatherCubit.state)
          .thenReturn(WeatherState.initial(weather: Weather.empty));
      await tester.pumpWidget(
        BlocProvider.value(
          value: weatherCubit,
          child: const MaterialApp(home: WeatherPage()),
        ),
      );
      expect(find.byType(WeatherEmpty), findsOneWidget);
    });

    testWidgets('renders WeatherLoading for WeatherStatus.loading',
        (tester) async {
      when(() => weatherCubit.state).thenReturn(
        WeatherState.loading(weather: Weather.empty),
      );
      await tester.pumpWidget(
        BlocProvider.value(
          value: weatherCubit,
          child: const MaterialApp(home: WeatherPage()),
        ),
      );
      expect(find.byType(WeatherLoading), findsOneWidget);
    });

    testWidgets('renders WeatherPopulated for WeatherStatus.success',
        (tester) async {
      when(() => weatherCubit.state).thenReturn(
        WeatherState.success(
          weather: weather,
        ),
      );
      await tester.pumpWidget(
        BlocProvider.value(
          value: weatherCubit,
          child: const MaterialApp(home: WeatherPage()),
        ),
      );
      expect(find.byType(WeatherPopulated), findsOneWidget);
    });

    testWidgets('renders WeatherError for WeatherStatus.failure',
        (tester) async {
      when(() => weatherCubit.state).thenReturn(const WeatherState.failure());
      await tester.pumpWidget(
        BlocProvider.value(
          value: weatherCubit,
          child: const MaterialApp(home: WeatherPage()),
        ),
      );
      expect(find.byType(WeatherError), findsOneWidget);
    });

    testWidgets('state is cached', (tester) async {
      final storage = MockStorage();
      when<dynamic>(() => storage.read('WeatherCubit')).thenReturn(
        WeatherState.success(
          weather: weather,
          unit: TemperatureUnits.fahrenheit,
        ).toJson(),
      );
      await await mockHydratedStorage(
        () async {
          await tester.pumpWidget(
            BlocProvider.value(
              value: WeatherCubit(MockWeatherRepository()),
              child: const MaterialApp(home: WeatherPage()),
            ),
          );
        },
        storage: storage,
      );
      expect(find.byType(WeatherPopulated), findsOneWidget);
    });

    // testWidgets('navigates to SettingsPage when settings icon is tapped',
    //     (tester) async {
    //   when(() => weatherCubit.state).thenReturn(WeatherState());
    //   await tester.pumpWidget(BlocProvider.value(
    //     value: weatherCubit,
    //     child: MaterialApp(home: WeatherView()),
    //   ));
    //   await tester.tap(find.byType(IconButton));
    //   await tester.pumpAndSettle();
    //   expect(find.byType(SettingsPage), findsOneWidget);
    // });

    // testWidgets('navigates to SearchPage when search button is tapped',
    //     (tester) async {
    //   when(() => weatherCubit.state).thenReturn(WeatherState());
    //   await tester.pumpWidget(BlocProvider.value(
    //     value: weatherCubit,
    //     child: MaterialApp(home: WeatherView()),
    //   ));
    //   await tester.tap(find.byType(FloatingActionButton));
    //   await tester.pumpAndSettle();
    //   expect(find.byType(SearchPage), findsOneWidget);
    // });

    testWidgets('calls updateTheme when whether changes', (tester) async {
      whenListen(
        weatherCubit,
        Stream<WeatherState>.fromIterable([
          WeatherState.success(weather: Weather.empty),
          WeatherState.success(weather: weather),
        ]),
      );
      when(() => weatherCubit.state).thenReturn(
        WeatherState.success(
          weather: weather,
        ),
      );
      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider.value(value: themeBloc),
            BlocProvider.value(value: weatherCubit),
          ],
          child: const MaterialApp(home: WeatherPage()),
        ),
      );
      verify(() => themeBloc.add(ThemeEvent.weatherUpdate(weather: weather)))
          .called(1);
    });

    testWidgets('triggers refreshWeather on pull to refresh', (tester) async {
      when(() => weatherCubit.state).thenReturn(
        WeatherState.success(
          weather: weather,
        ),
      );
      when(() => weatherCubit.refreshWeather()).thenAnswer((_) async => unit);
      await tester.pumpWidget(
        BlocProvider.value(
          value: weatherCubit,
          child: const MaterialApp(home: WeatherPage()),
        ),
      );
      await tester.fling(
        find.text('London'),
        const Offset(0, 500),
        1000,
      );
      await tester.pumpAndSettle();
      verify(() => weatherCubit.refreshWeather()).called(1);
    });

    testWidgets('triggers fetch on search pop', (tester) async {
      final mockStackRouter = MockStackRouter();
      final fakeRouterInfo = FakePageRouteInfo<void>();
      registerFallbackValue(fakeRouterInfo);
      when(() => mockStackRouter.push<String>(any()))
          .thenAnswer((_) async => '');
      when(() => weatherCubit.state).thenReturn(
        WeatherState.initial(
          weather: Weather.empty,
        ),
      );
      when(() => weatherCubit.fetchWeather(any()))
          .thenAnswer((_) async => unit);
      await tester.pumpWidget(
        BlocProvider.value(
          value: weatherCubit,
          child: MaterialApp(
            home: StackRouterScope(
              controller: mockStackRouter,
              stateHash: 1,
              child: const WeatherPage(),
            ),
          ),
        ),
      );
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
    });
  });
}
