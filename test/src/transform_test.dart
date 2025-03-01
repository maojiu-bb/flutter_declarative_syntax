import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/transform.dart';
import 'dart:math' as math;

void main() {
  group('Transform Extension Tests', () {
    testWidgets('scale test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').scale(
            scale: 2.0,
            alignment: Alignment.center,
          ),
        ),
      );

      final transformFinder = find.byType(Transform);
      expect(transformFinder, findsOneWidget);

      final transform = tester.widget<Transform>(transformFinder);
      expect(transform.transform.getMaxScaleOnAxis(), 2.0);
    });

    testWidgets('rotate test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').rotate(
            angle: math.pi / 2,
            alignment: Alignment.center,
          ),
        ),
      );

      final transformFinder = find.byType(Transform);
      expect(transformFinder, findsOneWidget);

      final transform = tester.widget<Transform>(transformFinder);
      final matrix = transform.transform;
      expect(matrix.storage[0], closeTo(0, 0.001)); // cos(π/2)
      expect(matrix.storage[1], closeTo(1, 0.001)); // sin(π/2)
      expect(matrix.storage[4], closeTo(-1, 0.001)); // -sin(π/2)
      expect(matrix.storage[5], closeTo(0, 0.001)); // cos(π/2)
    });

    testWidgets('translate test', (WidgetTester tester) async {
      const offset = Offset(10, 20);
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').translate(
            offset: offset,
          ),
        ),
      );

      final transformFinder = find.byType(Transform);
      expect(transformFinder, findsOneWidget);

      final transform = tester.widget<Transform>(transformFinder);
      final translation = transform.transform.getTranslation();
      expect(translation.x, offset.dx);
      expect(translation.y, offset.dy);
    });

    // Add more transform tests...
  });
}
