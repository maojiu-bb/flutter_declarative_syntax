import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/utils.dart';

void main() {
  group('Utils Extension Tests', () {
    testWidgets('when test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Original').when(
            true,
            builder: (widget) => const Text('True Case'),
            orElse: (widget) => const Text('False Case'),
          ),
        ),
      );

      expect(find.text('True Case'), findsOneWidget);
      expect(find.text('False Case'), findsNothing);

      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Original').when(
            false,
            builder: (widget) => const Text('True Case'),
            orElse: (widget) => const Text('False Case'),
          ),
        ),
      );

      expect(find.text('True Case'), findsNothing);
      expect(find.text('False Case'), findsOneWidget);
    });

    testWidgets('build test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Original').withContext(
            (context, widget) => Container(child: widget),
          ),
        ),
      );

      expect(find.byType(Container), findsOneWidget);
      expect(find.text('Original'), findsOneWidget);
    });

    testWidgets('withContext test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Original').withContext(
            (context, widget) => Text(
              'With Context: ${Theme.of(context).platform}',
            ),
          ),
        ),
      );

      expect(find.textContaining('With Context:'), findsOneWidget);
    });
  });
}
