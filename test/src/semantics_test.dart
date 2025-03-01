import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/semantics.dart';

void main() {
  group('Semantics Extension Tests', () {
    testWidgets('semanticLabel test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').semanticLabel('Test Label'),
        ),
      );

      final semanticsFinder = find.byWidgetPredicate(
        (widget) =>
            widget is Semantics && widget.properties.label == 'Test Label',
      );
      expect(semanticsFinder, findsOneWidget);

      final semantics = tester.widget<Semantics>(semanticsFinder);
      expect(semantics.properties.label, 'Test Label');
    });

    testWidgets('semanticButton test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').semanticButton(label: 'Button Label'),
        ),
      );

      final semanticsFinder = find.byWidgetPredicate(
        (widget) =>
            widget is Semantics &&
            widget.properties.button == true &&
            widget.properties.label == 'Button Label',
      );
      expect(semanticsFinder, findsOneWidget);

      final semantics = tester.widget<Semantics>(semanticsFinder);
      expect(semantics.properties.button, true);
      expect(semantics.properties.label, 'Button Label');
    });

    testWidgets('excludeSemantics test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').excludeSemantics(),
        ),
      );

      final excludeSemanticsFinder = find.byWidgetPredicate(
        (widget) => widget is ExcludeSemantics && widget.child is Text,
      );
      expect(excludeSemanticsFinder, findsOneWidget);
    });
  });
}
