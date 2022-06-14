import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:weather/weather_presentation/widgets/widgets.dart';

void main() {
  group('WeatherError', () {
    testWidgets('renders correct text and icon', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: WeatherError(),
          ),
        ),
      );
      expect(find.text('Something went wrong!'), findsOneWidget);
      expect(find.text('🙈'), findsOneWidget);
    });
  });
}
