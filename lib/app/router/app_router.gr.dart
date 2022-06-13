// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    RunnerRoute.name: (routeData) {
      return MaterialPageX<void>(
          routeData: routeData, child: WrappedRoute(child: const RunnerPage()));
    },
    WeatherRoute.name: (routeData) {
      return MaterialPageX<void>(
          routeData: routeData, child: const WeatherPage());
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<void>(
          routeData: routeData, child: const SettingsPage());
    },
    SearchRoute.name: (routeData) {
      return MaterialPageX<String>(
          routeData: routeData, child: const SearchPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(RunnerRoute.name, path: '/'),
        RouteConfig(WeatherRoute.name, path: '/weather-page'),
        RouteConfig(SettingsRoute.name, path: '/settings-page'),
        RouteConfig(SearchRoute.name, path: '/search-page')
      ];
}

/// generated route for
/// [RunnerPage]
class RunnerRoute extends PageRouteInfo<void> {
  const RunnerRoute() : super(RunnerRoute.name, path: '/');

  static const String name = 'RunnerRoute';
}

/// generated route for
/// [WeatherPage]
class WeatherRoute extends PageRouteInfo<void> {
  const WeatherRoute() : super(WeatherRoute.name, path: '/weather-page');

  static const String name = 'WeatherRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/search-page');

  static const String name = 'SearchRoute';
}
