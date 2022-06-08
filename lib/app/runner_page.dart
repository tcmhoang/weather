import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'providers/providers.dart';
import 'theme/theme.dart';

class RunnerPage extends StatelessWidget implements AutoRouteWrapper {
  const RunnerPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return weatherRepositoryProvider(weatherBlocsProvider(this));
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: state.color,
            appBarTheme: AppBarTheme(
              titleTextStyle:
                  textTheme.apply(bodyColor: Colors.white).headline6,
            ),
          ),
          home: Container(),
        );
      },
    );
  }
}
