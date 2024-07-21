import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/layout.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('layout', () {
    testWidgets('AspectRatio test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SizedBox(
              width: 100,
              height: 100,
              child:
                  const Text('Aspect Ratio').aspectRatio(aspectRatio: 16 / 9),
            ),
          ),
        ),
      );

      final aspectRatioFinder = find.byType(AspectRatio);
      expect(aspectRatioFinder, findsOneWidget);
    });

    testWidgets('Card test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Card Test').card(
              radius: 10,
              color: Colors.blue,
              shadowColor: Colors.black,
              blurRadius: 5,
            ),
          ),
        ),
      );

      final cardFinder = find.byType(Container);
      expect(cardFinder, findsOneWidget);
    });

    testWidgets('Center test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Center Test').center(),
          ),
        ),
      );

      final centerFinder = find.byType(Center);
      expect(centerFinder, findsOneWidget);
    });

    testWidgets('Expanded test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Row(
              children: [
                const Text('Expanded Test').expanded(),
              ],
            ),
          ),
        ),
      );
      final expandedFinder = find.byType(Expanded);
      expect(expandedFinder, findsOneWidget);
    });

    testWidgets('FittedBox test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('FittedBox Test').fittedBox(),
          ),
        ),
      );
      final fittedBoxFinder = find.byType(FittedBox);
      expect(fittedBoxFinder, findsOneWidget);
    });

    testWidgets('Flexible test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Row(
              children: [
                const Text('Flexible Test').flexible(),
              ],
            ),
          ),
        ),
      );
      final flexibleFinder = find.byType(Flexible);
      expect(flexibleFinder, findsOneWidget);
    });

    testWidgets('FractionallySizedBox test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body:
                const Text('FractionallySizedBox Test').fractionallySizedBox(),
          ),
        ),
      );
      final fractionallySizedBoxFinder = find.byType(FractionallySizedBox);
      expect(fractionallySizedBoxFinder, findsOneWidget);
    });

    testWidgets('Opacity test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Opacity Test').opacity(0.5),
          ),
        ),
      );
      final opacityFinder = find.byType(Opacity);
      expect(opacityFinder, findsOneWidget);
    });

    testWidgets('Positioned test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Stack(
              children: [
                const Text('Positioned Test').positioned(left: 10, top: 10),
              ],
            ),
          ),
        ),
      );
      final positionedFinder = find.byType(Positioned);
      expect(positionedFinder, findsOneWidget);
    });
  });
}
