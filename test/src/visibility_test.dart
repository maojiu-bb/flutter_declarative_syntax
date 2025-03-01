import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/visibility.dart';

void main() {
  group('Visibility Extension Tests', () {
    testWidgets('visible test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').visible(
            true,
            replacement: Text('Hidden'),
          ),
        ),
      );
      await tester.pump();

      final visibilityFinder = find.byType(Visibility);
      expect(visibilityFinder, findsOneWidget);

      final visibility = tester.widget<Visibility>(visibilityFinder);
      expect(visibility.visible, isTrue);
      expect(find.text('Test'), findsOneWidget);
      expect(find.text('Hidden'), findsNothing);

      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').visible(
            false,
            replacement: Text('Hidden'),
          ),
        ),
      );
      await tester.pump();

      final updatedVisibility = tester.widget<Visibility>(visibilityFinder);
      expect(updatedVisibility.visible, isFalse);
      expect(find.text('Hidden'), findsOneWidget);
    });

    testWidgets('invisible test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').invisible(),
        ),
      );
      await tester.pump();

      final opacityFinder = find.byType(Opacity);
      expect(opacityFinder, findsOneWidget);

      final opacity = tester.widget<Opacity>(opacityFinder);
      expect(opacity.opacity, 0);
      expect(find.text('Test'), findsOneWidget);
    });
  });
}
