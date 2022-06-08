import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'observers/observers.dart';
import 'router/router.dart';

Future<void> bootstrap(List<String> args) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final _appRouter = AppRouter();

      await HydratedBlocOverrides.runZoned(
        () async => runApp(
          MaterialApp.router(
            routerDelegate: AutoRouterDelegate(
              _appRouter,
              navigatorObservers: () => [AutoRouterObserver()],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        ),
        blocObserver: WeatherBlocObserver(),
        storage: await HydratedStorage.build(
          storageDirectory: kIsWeb
              ? HydratedStorage.webStorageDirectory
              : await getTemporaryDirectory(),
        ),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
