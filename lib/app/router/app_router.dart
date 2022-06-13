import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:weather/weather_presentation/view/view.dart';

import '../../search/search.dart';
import '../../settings/settings.dart';
import '../runner_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute<void>(page: RunnerPage, initial: true),
    MaterialRoute<void>(page: WeatherPage),
    MaterialRoute<void>(page: SettingsPage),
    MaterialRoute<String>(page: SearchPage),
  ],
)
class AppRouter extends _$AppRouter {}
