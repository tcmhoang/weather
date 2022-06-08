import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import '../runner_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute<void>(page: RunnerPage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
