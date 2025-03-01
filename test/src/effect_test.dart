import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/effect.dart';

void main() {
  group('Effect Extension Tests', () {
    testWidgets('shaderMask test', (WidgetTester tester) async {
      final shader = const LinearGradient(
        colors: [Colors.transparent, Colors.black],
      ).createShader(const Rect.fromLTWH(0, 0, 100, 100));

      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').shaderMask(
            shaderCallback: (Rect bounds) => shader,
            blendMode: BlendMode.dstIn,
          ),
        ),
      );

      final shaderMaskFinder = find.byType(ShaderMask);
      expect(shaderMaskFinder, findsOneWidget);

      final mask = tester.widget<ShaderMask>(shaderMaskFinder);
      expect(mask.blendMode, BlendMode.dstIn);
    });

    testWidgets('backdropFilter test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').backdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          ),
        ),
      );

      final backdropFilterFinder = find.byType(BackdropFilter);
      expect(backdropFilterFinder, findsOneWidget);

      final filter = tester.widget<BackdropFilter>(backdropFilterFinder);
      expect(filter.filter, isA<ImageFilter>());
    });

    testWidgets('colorFiltered test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').colorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.red,
              BlendMode.srcIn,
            ),
          ),
        ),
      );

      final colorFilteredFinder = find.byType(ColorFiltered);
      expect(colorFilteredFinder, findsOneWidget);

      final filtered = tester.widget<ColorFiltered>(colorFilteredFinder);
      expect(
        filtered.colorFilter,
        const ColorFilter.mode(Colors.red, BlendMode.srcIn),
      );
    });
  });
}
