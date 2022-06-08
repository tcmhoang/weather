import 'package:flutter/widgets.dart';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather/meta_weather_api/meta_weather_api.dart';
import 'package:weather/weather_repository/weather_repository_src.dart';

MultiRepositoryProvider weatherRepositoryProvider(Widget w) =>
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => Dio()),
        RepositoryProvider<IMetaWeatherApi>(
          create: (ctx) => MetaWeatherApiClient(ctx.read<Dio>()),
        ),
        RepositoryProvider(
          create: (ctx) => WeatherRepository(
            weatherApi: ctx.read<IMetaWeatherApi>(),
          ),
        ),
      ],
      child: w,
    );
