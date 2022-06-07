import 'package:dartz/dartz.dart';

import '../meta_weather_api/meta_weather_api.dart';
import 'models/models.dart' as domain;

abstract class IWeatherRepository {
  Future<Option<domain.Weather>> getWeather(String city);
}

class WeatherRepository implements IWeatherRepository {
  WeatherRepository({required IMetaWeatherApi weatherApi})
      : _weatherApi = weatherApi;

  final IMetaWeatherApi _weatherApi;
  @override
  Future<Option<domain.Weather>> getWeather(String city) async {
    //   final maybeLocation =
    //       await Task(() => _weatherApi.locationSearch(city))
    //       .attempt()
    //       .map<Option<Location>>(
    //         (exceptionOrLocation) => exceptionOrLocation.fold(
    //           (_) => none(),
    //           optionOf,
    //         ),
    //       )
    //       .run();

    //  return maybeLocation
    //       .traverseTask(
    //         (loc) => Task(() => _weatherApi.getWeather(loc.woeid))
    //             .strengthL(loc.title)
    //             .attempt()
    //             .map<Option<Tuple2<String, Weather>>>(
    //               (exceptionOrWeather) => exceptionOrWeather.fold(
    //                 (_) => none(),
    //                 optionOf,
    //               ),
    //             ),
    //       )
    //       .map<Option<domain.Weather>>(
    //         (maybeLocation) => maybeLocation.fold(
    //           none,
    //           (maybeApiWeather) => maybeApiWeather.fold(
    //             none,
    //             (apiWeather) => some(
    //               domain.Weather.fromWeatherDto(
    //                 apiWeather.tail,
    //                 apiWeather.head,
    //               ),
    //             ),
    //           ),
    //         ),
    //       )
    //       .run();

    return Task(() => _weatherApi.locationSearch(city))
        .attempt()
        .map<Option<Location>>(
          (exceptionOrLocation) => exceptionOrLocation.fold(
            (_) => none(),
            optionOf,
          ),
        )
        .flatMap(
          (maybeLocation) => maybeLocation.traverseTask(
            (loc) => Task(
              () => _weatherApi.getWeather(loc.woeid),
            )
                .strengthL(loc.title)
                .attempt()
                .map<Option<Tuple2<String, Weather>>>(
                  (exceptionOrWeather) => exceptionOrWeather.fold(
                    (_) => none(),
                    optionOf,
                  ),
                ),
          ),
        )
        .attempt()
        .map<Option<domain.Weather>>(
          (firstRound) => firstRound.fold(
            (l) => none<domain.Weather>(),
            (maybeLocation) => maybeLocation.fold(
              none,
              (maybeApiWeather) => maybeApiWeather.fold(
                none,
                (apiWeather) => some(
                  domain.Weather.fromWeatherDto(
                    apiWeather.tail,
                    apiWeather.head,
                  ),
                ),
              ),
            ),
          ),
        )
        .run();
  }
}
