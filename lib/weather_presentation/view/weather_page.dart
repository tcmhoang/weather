import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather/app/theme/theme.dart';
import 'package:weather/weather/weather.dart';
import '../../app/router/router.dart';
import '../widgets/widgets.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        actions: [
          IconButton(
            onPressed: () => context.pushRoute(const SettingsRoute()),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: BlocConsumer<WeatherCubit, WeatherState>(
          builder: (context, state) => state.map(
            initial: (_) => const WeatherEmpty(),
            loading: (_) => const WeatherLoading(),
            success: (s) => WeatherPopulated(
              weather: s.weather,
              unit: s.unit,
              onRefresh: context.read<WeatherCubit>().refreshWeather,
            ),
            failure: (_) => const WeatherError(),
          ),
          listener: (context, state) => state.maybeWhen(
            success: (_, w) => context.read<ThemeBloc>().add(
                  ThemeEvent.weatherUpdate(weather: w),
                ),
            orElse: () => unit,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () async =>
            context.pushRoute<String>(const SearchRoute()).then(
                  (city) async =>
                      context.read<WeatherCubit>().fetchWeather(city ?? ''),
                ),
      ),
    );
  }
}
