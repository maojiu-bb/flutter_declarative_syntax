import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/alignment.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FlutterDeclarativeSyntaxAlignmentModify Extension', () {
    testWidgets('should apply alignment center correctly',
        (WidgetTester tester) async {
      final widget = Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ).alignCenter();

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final alignWidget = tester.widget<Align>(find.byType(Align));
      expect(alignWidget.alignment, Alignment.center);
    });

    testWidgets('should apply alignment left correctly',
        (WidgetTester tester) async {
      final widget = Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ).alignLeft();

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final alignWidget = tester.widget<Align>(find.byType(Align));
      expect(alignWidget.alignment, Alignment.centerLeft);
    });

    testWidgets('should apply alignment right correctly',
        (WidgetTester tester) async {
      final widget = Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ).alignRight();

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final alignWidget = tester.widget<Align>(find.byType(Align));
      expect(alignWidget.alignment, Alignment.centerRight);
    });

    testWidgets('should apply alignment top correctly',
        (WidgetTester tester) async {
      final widget = Container(
        width: 100,
        height: 100,
        color: Colors.orange,
      ).alignTop();

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final alignWidget = tester.widget<Align>(find.byType(Align));
      expect(alignWidget.alignment, Alignment.topCenter);
    });

    testWidgets('should apply alignment bottom correctly',
        (WidgetTester tester) async {
      final widget = Container(
        width: 100,
        height: 100,
        color: Colors.purple,
      ).alignBottom();

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final alignWidget = tester.widget<Align>(find.byType(Align));
      expect(alignWidget.alignment, Alignment.bottomCenter);
    });
  });
}
