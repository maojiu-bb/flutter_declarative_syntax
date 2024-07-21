import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/decoration.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('decoration', () {
    testWidgets('backgroundColor test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body:
                const Text('Background Color Test').backgroundColor(Colors.red),
          ),
        ),
      );

      final decoratedBoxFinder = find.byType(DecoratedBox);
      expect(decoratedBoxFinder, findsOneWidget);

      final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
      final boxDecoration = decoratedBox.decoration as BoxDecoration;
      expect(boxDecoration.color, Colors.red);
    });

    testWidgets('border test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body:
                const Text('Border Test').border(all: 2.0, color: Colors.green),
          ),
        ),
      );

      final decoratedBoxFinder = find.byType(DecoratedBox);
      expect(decoratedBoxFinder, findsOneWidget);

      final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
      final boxDecoration = decoratedBox.decoration as BoxDecoration;
      expect(boxDecoration.border?.top.width, 2.0);
      expect(boxDecoration.border?.top.color, Colors.green);
    });

    testWidgets('borderRadius test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Border Radius Test').borderRadius(all: 10.0),
          ),
        ),
      );

      final decoratedBoxFinder = find.byType(DecoratedBox);
      expect(decoratedBoxFinder, findsOneWidget);

      final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
      final boxDecoration = decoratedBox.decoration as BoxDecoration;
      expect(boxDecoration.borderRadius,
          const BorderRadius.all(Radius.circular(10.0)));
    });

    testWidgets('boxShadow test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Box Shadow Test').boxShadow(
              color: Colors.black,
              offset: const Offset(2, 2),
              blurRadius: 4.0,
              spreadRadius: 1.0,
            ),
          ),
        ),
      );

      final decoratedBoxFinder = find.byType(DecoratedBox);
      expect(decoratedBoxFinder, findsOneWidget);

      final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
      final boxDecoration = decoratedBox.decoration as BoxDecoration;
      final boxShadow = boxDecoration.boxShadow?.first;
      expect(boxShadow?.color, Colors.black);
      expect(boxShadow?.offset, const Offset(2, 2));
      expect(boxShadow?.blurRadius, 4.0);
      expect(boxShadow?.spreadRadius, 1.0);
    });

    testWidgets('decorated test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Decorated Test').decorated(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                const BoxShadow(
                  color: Colors.black,
                  blurRadius: 4.0,
                ),
              ],
            ),
          ),
        ),
      );
      final decoratedBoxFinder = find.byType(DecoratedBox);
      expect(decoratedBoxFinder, findsOneWidget);

      final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
      final boxDecoration = decoratedBox.decoration as BoxDecoration;
      expect(boxDecoration.color, Colors.blue);
      expect(boxDecoration.borderRadius, BorderRadius.circular(5.0));
      expect(boxDecoration.boxShadow?.length, 1);
      expect(boxDecoration.boxShadow?.first.blurRadius, 4.0);
    });
  });
}
