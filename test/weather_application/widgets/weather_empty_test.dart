import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:weather/weather_presentation/widgets/widgets.dart';

void main() {
  group('WeatherEmpty', () {
    testWidgets('renders correct text and icon', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: WeatherEmpty(),
          ),
        ),
      );
      expect(find.text('Please Select a City!'), findsOneWidget);
      expect(find.text('🏙️'), findsOneWidget);
    });
  });
}