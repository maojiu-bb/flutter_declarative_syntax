import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/clip.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ClipRect test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Text('ClipRect Test').clipRect(),
        ),
      ),
    );

    final clipRectFinder = find.byType(ClipRect);
    expect(clipRectFinder, findsOneWidget);
  });

  testWidgets('ClipRRect test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Text('ClipRRect Test').clipRRect(all: 10),
        ),
      ),
    );

    final clipRRectFinder = find.byType(ClipRRect);
    expect(clipRRectFinder, findsOneWidget);
  });

  testWidgets('Circle test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Text('Circle Test').circle(all: 20),
        ),
      ),
    );

    final clipRRectFinder = find.byType(ClipRRect);
    expect(clipRRectFinder, findsOneWidget);

    final clipRRect = tester.widget<ClipRRect>(clipRRectFinder);
    expect(clipRRect.borderRadius, const BorderRadius.all(Radius.circular(20)));
  });

  testWidgets('ClipOval test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Text('ClipOval Test').clipOval(),
        ),
      ),
    );

    final clipOvalFinder = find.byType(ClipOval);
    expect(clipOvalFinder, findsOneWidget);
  });
}
