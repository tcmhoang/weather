import 'package:dartz/dartz.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../weather_repository/weather_repository.dart'
    show WeatherRepository;
import '../utils/temperature_units_extensions.dart';
import '../weather.dart';

class WeatherCubit extends HydratedCubit<WeatherState> {
  WeatherCubit(this._weatherRepository)
      : super(WeatherState.initial(weather: Weather.empty));

  final WeatherRepository _weatherRepository;

  Future<Unit> fetchWeather(String city) async {
    if (city.isEmpty) return unit;

    emit(WeatherState.loading(unit: state.unit));

    final weather = await _weatherRepository
        .getWeather(city)
        .then((maybeWeather) => maybeWeather.map(Weather.fromRepository));

    weather.fold(
      () => emit(WeatherState.failure(unit: state.unit)),
      (weather) => emit(
        WeatherState.success(
          unit: state.unit,
          weather: _convertWeatherDegreeTo(
            weather,
            from: TemperatureUnits.celsius,
            to: state.unit,
          ),
        ),
      ),
    );

    return unit;
  }

  Weather _convertWeatherDegreeTo(
    Weather weather, {
    required TemperatureUnits from,
    TemperatureUnits to = TemperatureUnits.fahrenheit,
  }) =>
      from == to
          ? weather
          : weather.copyWith(
              temperature: to.isFahrenheit
                  ? Temperature(value: weather.temperature.value.toFahrenheit())
                  : Temperature(value: weather.temperature.value.toCelsius()),
            );

  Future<Unit> refreshWeather() async => state.maybeMap<Future<Unit>>(
        success: (ss) async {
          if (ss.weather == Weather.empty) return unit;
          final weather =
              await _weatherRepository.getWeather(ss.weather.location).then(
                    (maybeWeather) =>
                        maybeWeather.map(Weather.fromRepository).map(
                              (w) => _convertWeatherDegreeTo(
                                w,
                                from: TemperatureUnits.celsius,
                                to: state.unit,
                              ),
                            ),
                  );
          weather.fold(
            () => emit(state),
            (weather) =>
                emit(WeatherState.success(unit: state.unit, weather: weather)),
          );

          return unit;
        },
        orElse: () async => Future.value(unit),
      );

  Unit toggleUnits() {
    final nUnit = state.unit.isFahrenheit
        ? TemperatureUnits.celsius
        : TemperatureUnits.fahrenheit;

    return state.maybeMap(
      success: (ss) {
        if (ss.weather == Weather.empty) return unit;
        emit(
          ss.copyWith(
            unit: nUnit,
            weather: _convertWeatherDegreeTo(
              ss.weather,
              from: state.unit,
              to: nUnit,
            ),
          ),
        );

        return unit;
      },
      orElse: () {
        emit(state.copyWith(unit: nUnit));

        return unit;
      },
    );
  }

  @override
  WeatherState fromJson(Map<String, dynamic> json) =>
      WeatherState.fromJson(json);

  @override
  Map<String, dynamic> toJson(WeatherState state) => state.toJson();
}

extension on double {
  double toFahrenheit() => (this * 9 / 5) + 32;
  double toCelsius() => (this - 32) * 5 / 9;
}
