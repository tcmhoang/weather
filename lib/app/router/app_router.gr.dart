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
    }
  };

  @override
  List<RouteConfig> get routes => [RouteConfig(RunnerRoute.name, path: '/')];
}

/// generated route for
/// [RunnerPage]
class RunnerRoute extends PageRouteInfo<void> {
  const RunnerRoute() : super(RunnerRoute.name, path: '/');

  static const String name = 'RunnerRoute';
}
