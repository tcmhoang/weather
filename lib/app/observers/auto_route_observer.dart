import 'dart:developer';

import 'package:flutter/widgets.dart';

import 'package:auto_route/auto_route.dart';

class RouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    log('New route pushed: ${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log(
      'Route pop : ${previousRoute?.settings.name} - ${route.settings.name}',
    );
  }
}
