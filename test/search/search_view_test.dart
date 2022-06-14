import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:weather/search/search.dart';

class MockStackRouter extends Mock implements StackRouter {}

class FakePageRouteInfo<T> extends Fake implements PageRouteInfo<T> {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakePageRouteInfo<void>());
  });
  group('SearchPage', () {
    testWidgets('returns selected text when popped', (tester) async {
      final mockController = MockStackRouter();
      BuildContext? ctx;
      when(() => mockController.pop('Chicago')).thenAnswer((_) async => true);
      await tester.pumpWidget(
        MaterialApp(
          home: StackRouterScope(
            controller: mockController,
            stateHash: 1,
            child: Builder(
              builder: (context) {
                ctx = context;
                return const SearchPage();
              },
            ),
          ),
        ),
      );

      when(() => ctx?.popRoute<String>('Chicago'))
          .thenAnswer((_) async => true);
      await tester.enterText(find.byType(TextField), 'Chicago');
      await tester.tap(find.byKey(const Key('searchPage_search_iconButton')));
      await tester.pumpAndSettle();
      verify(() => ctx?.popRoute<String>('Chicago')).called(1);
    });
  });
}
