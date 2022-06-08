import 'dart:async';

import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:weather/app/theme/bloc/color_converter.dart';
import '../../../weather/weather.dart';

import '../../../weather_repository/weather_repository.dart'
    hide Weather, $WeatherCopyWith;

part 'theme_bloc.freezed.dart';
part 'theme_bloc.g.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState.applied(color: kDefaultColor)) {
    on<ThemeEvent>(
      _onEvent,
    );
  }
  static const kDefaultColor = Color(0xFF2196F3);

  FutureOr<void> _onEvent(ThemeEvent event, Emitter emit) => event.when(
        weatherUpdate: (w) => emit(ThemeState.updating(color: w.toColor)),
        submit: (w) => emit(ThemeState.applied(color: w.toColor)),
      );

  @override
  ThemeState fromJson(Map<String, dynamic> json) => ThemeState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ThemeState state) => state.toJson();
}

extension on Weather {
  Color get toColor {
    switch (condition) {
      case WeatherCondition.clear:
        return Colors.orangeAccent;
      case WeatherCondition.snowy:
        return Colors.lightBlueAccent;
      case WeatherCondition.cloudy:
        return Colors.blueGrey;
      case WeatherCondition.rainy:
        return Colors.indigoAccent;
      case WeatherCondition.unknown:
        return ThemeBloc.kDefaultColor;
    }
  }
}
