import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/flex.dart';

void main() {
  group('Flex Extension Tests', () {
    testWidgets('expanded test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Row(
            children: [
              const Text('Test').expanded(flex: 2),
            ],
          ),
        ),
      );

      final expandedFinder = find.byType(Expanded);
      expect(expandedFinder, findsOneWidget);

      final expanded = tester.widget<Expanded>(expandedFinder);
      expect(expanded.flex, 2);
    });

    testWidgets('flexible test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Row(
            children: [
              const Text('Test').flexible(
                flex: 2,
                fit: FlexFit.tight,
              ),
            ],
          ),
        ),
      );

      final flexibleFinder = find.byType(Flexible);
      expect(flexibleFinder, findsOneWidget);

      final flexible = tester.widget<Flexible>(flexibleFinder);
      expect(flexible.flex, 2);
      expect(flexible.fit, FlexFit.tight);
    });
  });
}
