import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/theme.dart';

void main() {
  group('Theme Extension Tests', () {
    testWidgets('withTheme test', (WidgetTester tester) async {
      final testTheme = ThemeData(
        primaryColor: Colors.red,
        brightness: Brightness.dark,
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              return const Text('Test').withTheme(theme: testTheme);
            },
          ),
        ),
      );

      final context = tester.element(find.text('Test'));
      final appliedTheme = Theme.of(context);
      expect(appliedTheme.primaryColor, Colors.red);
      expect(appliedTheme.brightness, Brightness.dark);
    });

    testWidgets('withPrimaryColor test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              return const Text('Test').withPrimaryColor(Colors.blue);
            },
          ),
        ),
      );

      final context = tester.element(find.text('Test'));
      final appliedTheme = Theme.of(context);
      expect(appliedTheme.primaryColor, Colors.blue);
    });

    testWidgets('withBrightness test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              return const Text('Test').withBrightness(Brightness.dark);
            },
          ),
        ),
      );

      final context = tester.element(find.text('Test'));
      final appliedTheme = Theme.of(context);
      expect(appliedTheme.brightness, Brightness.dark);
    });

    testWidgets('withTextTheme test', (WidgetTester tester) async {
      final textTheme = const TextTheme(
        bodyLarge: TextStyle(fontSize: 16.0),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              return const Text('Test').withTextTheme(textTheme);
            },
          ),
        ),
      );

      final context = tester.element(find.text('Test'));
      final appliedTheme = Theme.of(context);
      expect(appliedTheme.textTheme.bodyLarge?.fontSize, 16.0);
    });

    testWidgets('withFontFamily test', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              return const Text('Test').withFontFamily('Roboto');
            },
          ),
        ),
      );

      final context = tester.element(find.text('Test'));
      final appliedTheme = Theme.of(context);
      expect(appliedTheme.textTheme.bodyLarge?.fontFamily, 'Roboto');
      expect(appliedTheme.textTheme.bodyMedium?.fontFamily, 'Roboto');
      expect(appliedTheme.textTheme.bodySmall?.fontFamily, 'Roboto');
    });
  });
}
