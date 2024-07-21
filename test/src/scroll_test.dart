import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/scroll.dart';

void main() {
  group('scroll', () {
    testWidgets('Vertical scrollable test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: List.generate(50, (index) => Text('Item $index')),
            ).scrollable(),
          ),
        ),
      );

      final scrollableFinder = find.byType(SingleChildScrollView);
      expect(scrollableFinder, findsOneWidget);
      expect(find.text('Item 0'), findsOneWidget);
    });

    testWidgets('Horizontal scrollable test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Row(
              children: List.generate(50, (index) => Text('Item $index')),
            ).scrollable(scrollDirection: Axis.horizontal),
          ),
        ),
      );

      final scrollableFinder = find.byType(SingleChildScrollView);
      expect(scrollableFinder, findsOneWidget);
      expect(find.text('Item 0'), findsOneWidget);
    });

    testWidgets('Scrollable with padding test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Padded Content').scrollable(
              padding: const EdgeInsets.all(20.0),
            ),
          ),
        ),
      );

      final scrollableFinder = find.byType(SingleChildScrollView);
      final paddingFinder = find.byType(Padding);
      expect(scrollableFinder, findsOneWidget);
      expect(paddingFinder, findsOneWidget);
    });

    testWidgets('Scrollable with custom physics test',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const Text('Bouncing Scroll').scrollable(
              physics: const BouncingScrollPhysics(),
            ),
          ),
        ),
      );

      final scrollableFinder = find.byType(SingleChildScrollView);
      expect(scrollableFinder, findsOneWidget);
    });

    testWidgets('Scrollable with reverse direction test',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: List.generate(50, (index) => Text('Item $index')),
            ).scrollable(reverse: true),
          ),
        ),
      );

      final scrollableFinder = find.byType(SingleChildScrollView);
      expect(scrollableFinder, findsOneWidget);
    });
  });
}
