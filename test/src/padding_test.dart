import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/padding.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FlutterDeclarativeSyntaxPaddingModify Extension', () {
    testWidgets('should apply all padding correctly',
        (WidgetTester tester) async {
      final widget = Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ).paddingAll(16.0);

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(
        paddingWidget.padding,
        const EdgeInsets.all(16.0),
      );
    });

    testWidgets('should apply bottom padding correctly',
        (WidgetTester tester) async {
      final widget = Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ).paddingBottom(20.0);

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(
        paddingWidget.padding,
        const EdgeInsets.only(bottom: 20.0),
      );
    });

    testWidgets('should apply horizontal padding correctly',
        (WidgetTester tester) async {
      final widget = Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ).paddingHorizontal(10.0);

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(
        paddingWidget.padding,
        const EdgeInsets.symmetric(horizontal: 10.0),
      );
    });

    testWidgets('should apply left padding correctly',
        (WidgetTester tester) async {
      final widget = Container(
        color: Colors.orange,
        width: 100,
        height: 100,
      ).paddingLeft(25.0);

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(
        paddingWidget.padding,
        const EdgeInsets.only(left: 25.0),
      );
    });

    testWidgets('should apply right padding correctly',
        (WidgetTester tester) async {
      final widget = Container(
        color: Colors.purple,
        width: 100,
        height: 100,
      ).paddingRight(30.0);

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(
        paddingWidget.padding,
        const EdgeInsets.only(right: 30.0),
      );
    });

    testWidgets('should apply top padding correctly',
        (WidgetTester tester) async {
      final widget = Container(
        color: Colors.cyan,
        width: 100,
        height: 100,
      ).paddingTop(15.0);

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(
        paddingWidget.padding,
        const EdgeInsets.only(top: 15.0),
      );
    });

    testWidgets('should apply vertical padding correctly',
        (WidgetTester tester) async {
      final widget = Container(
        color: Colors.teal,
        width: 100,
        height: 100,
      ).paddingVertical(5.0);

      final testWidget = MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      );

      await tester.pumpWidget(testWidget);

      final paddingWidget = tester.widget<Padding>(find.byType(Padding));
      expect(
        paddingWidget.padding,
        const EdgeInsets.symmetric(vertical: 5.0),
      );
    });
  });
}
