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
            body: const Text('Opacity Test').opacity(
              opacity: 0.5,
            ),
          ),
        ),
      );

      final opacityFinder = find.byType(Opacity);
      expect(opacityFinder, findsOneWidget);

      final opacity = tester.widget<Opacity>(opacityFinder);
      expect(opacity.opacity, 0.5);
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

    testWidgets('Limited test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Limited Test').limited(
              maxWidth: 200,
              maxHeight: 100,
            ),
          ),
        ),
      );

      final limitedBoxFinder = find.byType(LimitedBox);
      expect(limitedBoxFinder, findsOneWidget);

      final limitedBox = tester.widget<LimitedBox>(limitedBoxFinder);
      expect(limitedBox.maxWidth, 200);
      expect(limitedBox.maxHeight, 100);
    });

    testWidgets('Sized test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Sized Test').sized(
              width: 100,
              height: 50,
            ),
          ),
        ),
      );

      final sizedBoxFinder = find.byType(SizedBox);
      expect(sizedBoxFinder, findsOneWidget);

      final sizedBox = tester.widget<SizedBox>(sizedBoxFinder);
      expect(sizedBox.width, 100);
      expect(sizedBox.height, 50);
    });

    testWidgets('Container test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Container Test').container(
              width: 150,
              height: 75,
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
            ),
          ),
        ),
      );

      final containerFinder = find.byType(Container);
      expect(containerFinder, findsOneWidget);

      final container = tester.widget<Container>(containerFinder);
      expect(container.constraints?.maxWidth, 150);
      expect(container.constraints?.maxHeight, 75);
      expect(container.color, Colors.blue);
      expect(container.padding, const EdgeInsets.all(10));
      expect(container.margin, const EdgeInsets.all(5));
      expect(container.alignment, Alignment.center);
    });

    testWidgets('overflowBox test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').overflowBox(
            minWidth: 50,
            maxWidth: 200,
            minHeight: 50,
            maxHeight: 200,
            alignment: Alignment.topLeft,
          ),
        ),
      );

      final overflowBoxFinder = find.byType(OverflowBox);
      expect(overflowBoxFinder, findsOneWidget);

      final box = tester.widget<OverflowBox>(overflowBoxFinder);
      expect(box.minWidth, 50);
      expect(box.maxWidth, 200);
      expect(box.minHeight, 50);
      expect(box.maxHeight, 200);
      expect(box.alignment, Alignment.topLeft);
    });

    testWidgets('intrinsicWidth test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').intrinsicWidth(
            stepWidth: 50,
            stepHeight: 20,
          ),
        ),
      );

      final intrinsicWidthFinder = find.byType(IntrinsicWidth);
      expect(intrinsicWidthFinder, findsOneWidget);

      final width = tester.widget<IntrinsicWidth>(intrinsicWidthFinder);
      expect(width.stepWidth, 50);
      expect(width.stepHeight, 20);
    });

    testWidgets('intrinsicHeight test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').intrinsicHeight(),
        ),
      );

      expect(find.byType(IntrinsicHeight), findsOneWidget);
    });
  });
}
