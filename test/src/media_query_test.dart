import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/media_query.dart';

void main() {
  group('MediaQuery Extension Tests', () {
    testWidgets('whenWidth test', (WidgetTester tester) async {
      // Set initial screen size
      tester.view.physicalSize = const Size(800, 600);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Original').whenWidth(
            300,
            builder: (context, child) => const Text('Wide'),
            orElse: (context, child) => const Text('Narrow'),
          ),
        ),
      );

      expect(find.text('Wide'), findsOneWidget);
      expect(find.text('Narrow'), findsNothing);

      // Change screen size
      tester.view.physicalSize = const Size(200, 600);
      await tester.pumpAndSettle();

      expect(find.text('Wide'), findsNothing);
      expect(find.text('Narrow'), findsOneWidget);
    });

    testWidgets('whenHeight test', (WidgetTester tester) async {
      // Set initial screen size
      tester.view.physicalSize = const Size(800, 1200);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Original').whenHeight(
            500,
            builder: (context, child) => const Text('Tall'),
            orElse: (context, child) => const Text('Short'),
          ),
        ),
      );

      expect(find.text('Tall'), findsOneWidget);
      expect(find.text('Short'), findsNothing);

      // Change screen size
      tester.view.physicalSize = const Size(800, 400);
      await tester.pumpAndSettle();

      expect(find.text('Tall'), findsNothing);
      expect(find.text('Short'), findsOneWidget);
    });

    testWidgets('whenOrientation test', (WidgetTester tester) async {
      // Set portrait mode
      tester.view.physicalSize = const Size(400, 800);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.reset);

      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Original').whenOrientation(
            portrait: (context, child) => const Text('Portrait'),
            landscape: (context, child) => const Text('Landscape'),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Portrait'), findsOneWidget);
      expect(find.text('Landscape'), findsNothing);

      // Set landscape mode
      tester.view.physicalSize = const Size(800, 400);
      await tester.pumpAndSettle();

      expect(find.text('Portrait'), findsNothing);
      expect(find.text('Landscape'), findsOneWidget);
    });

    testWidgets('whenPlatform test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(platform: TargetPlatform.android),
          home: const Text('Original').whenPlatform(
            android: (context, child) => const Text('Android'),
            ios: (context, child) => const Text('iOS'),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Android'), findsOneWidget);
      expect(find.text('iOS'), findsNothing);
      expect(find.text('Original'), findsNothing);

      // Switch platform
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(platform: TargetPlatform.iOS),
          home: const Text('Original').whenPlatform(
            android: (context, child) => const Text('Android'),
            ios: (context, child) => const Text('iOS'),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Android'), findsNothing);
      expect(find.text('iOS'), findsOneWidget);
      expect(find.text('Original'), findsNothing);
    });
  });
}
