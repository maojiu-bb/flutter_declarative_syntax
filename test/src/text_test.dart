import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/text.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FlutterDeclarativeSyntaxTextModify Extension', () {
    testWidgets('should apply color correctly', (WidgetTester tester) async {
      final text = const Text('Test').withColor(Colors.red);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.color, Colors.red);
    });

    testWidgets('should apply fontSize correctly', (WidgetTester tester) async {
      final text = const Text('Test').withFontSize(20.0);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.fontSize, 20.0);
    });

    testWidgets('should apply fontWeight correctly',
        (WidgetTester tester) async {
      final text = const Text('Test').withFontWeight(FontWeight.bold);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.fontWeight, FontWeight.bold);
    });

    testWidgets('should apply fontStyle correctly',
        (WidgetTester tester) async {
      final text = const Text('Test').withFontStyle(FontStyle.italic);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.fontStyle, FontStyle.italic);
    });

    testWidgets('should apply letterSpacing correctly',
        (WidgetTester tester) async {
      final text = const Text('Test').withLetterSpacing(1.5);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.letterSpacing, 1.5);
    });

    testWidgets('should apply wordSpacing correctly',
        (WidgetTester tester) async {
      final text = const Text('Test').withWordSpacing(2.0);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.wordSpacing, 2.0);
    });

    testWidgets('should apply height correctly', (WidgetTester tester) async {
      final text = const Text('Test').withHeight(1.2);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.height, 1.2);
    });

    testWidgets('should apply textBaseline correctly',
        (WidgetTester tester) async {
      final text = const Text('Test').withTextBaseline(TextBaseline.alphabetic);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.textBaseline, TextBaseline.alphabetic);
    });

    testWidgets('should apply decoration correctly',
        (WidgetTester tester) async {
      final text =
          const Text('Test').withDecoration(TextDecoration.lineThrough);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.decoration, TextDecoration.lineThrough);
    });

    testWidgets('should apply decorationColor correctly',
        (WidgetTester tester) async {
      final text = const Text('Test').withDecorationColor(Colors.green);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.decorationColor, Colors.green);
    });

    testWidgets('should apply decorationStyle correctly',
        (WidgetTester tester) async {
      final text =
          const Text('Test').withDecorationStyle(TextDecorationStyle.dashed);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.decorationStyle, TextDecorationStyle.dashed);
    });

    testWidgets('should apply fontFamily correctly',
        (WidgetTester tester) async {
      final text = const Text('Test').withFontFamily('Roboto');

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.fontFamily, 'Roboto');
    });

    testWidgets('should apply backgroundColor correctly',
        (WidgetTester tester) async {
      final text = const Text('Test').withBackgroundColor(Colors.blue);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.backgroundColor, Colors.blue);
    });

    testWidgets('should apply shadows correctly', (WidgetTester tester) async {
      final shadows = [const Shadow(color: Colors.black, offset: Offset(2, 2))];
      final text = const Text('Test').withShadows(shadows);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.shadows, shadows);
    });

    testWidgets('should apply overflow correctly', (WidgetTester tester) async {
      final text = const Text('Test').withOverflow(TextOverflow.ellipsis);

      final widget = MaterialApp(
        home: Scaffold(
          body: Center(child: text),
        ),
      );

      await tester.pumpWidget(widget);

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style?.overflow, TextOverflow.ellipsis);
    });
  });
}
