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

  Future<Unit> fetchWeather(String city) async => throw UnimplementedError();

  Weather _convertWeatherDegreeTo(
    Weather weather, {
    required TemperatureUnits from,
    TemperatureUnits to = TemperatureUnits.fahrenheit,
  }) =>
      throw UnimplementedError();

  Future<Unit> refreshWeather() async => throw UnimplementedError();

  Unit toggleUnits() => throw UnimplementedError();

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
