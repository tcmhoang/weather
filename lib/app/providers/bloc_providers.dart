import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather/app/theme/bloc/theme_bloc.dart';
import 'package:weather/weather/weather.dart';
import 'package:weather/weather_repository/weather_repository.dart';

MultiBlocProvider weatherBlocsProvider(Widget w) => MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeBloc()),
        BlocProvider(
          create: (ctx) => WeatherCubit(ctx.read<WeatherRepository>()),
        ),
      ],
      child: w,
    );
