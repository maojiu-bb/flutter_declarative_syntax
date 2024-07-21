import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/icon.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('iconSize test', (WidgetTester tester) async {
    const originalIcon = Icon(Icons.home);
    final modifiedIcon = originalIcon.iconSize(40.0);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              originalIcon,
              modifiedIcon,
            ],
          ),
        ),
      ),
    );

    final iconFinder = find.byType(Icon);
    expect(iconFinder, findsNWidgets(2));

    final modifiedIconWidget = tester.widget<Icon>(iconFinder.at(1));
    expect(modifiedIconWidget.size, 40.0);
  });

  testWidgets('iconColor test', (WidgetTester tester) async {
    const originalIcon = Icon(Icons.home);
    final modifiedIcon = originalIcon.iconColor(Colors.red);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              originalIcon,
              modifiedIcon,
            ],
          ),
        ),
      ),
    );

    final iconFinder = find.byType(Icon);
    expect(iconFinder, findsNWidgets(2));

    final modifiedIconWidget = tester.widget<Icon>(iconFinder.at(1));
    expect(modifiedIconWidget.color, Colors.red);
  });

  testWidgets('copyWith test', (WidgetTester tester) async {
    const originalIcon = Icon(Icons.home);
    final modifiedIcon = originalIcon.copyWith(
      size: 50.0,
      color: Colors.blue,
      semanticLabel: 'Home Icon',
      textDirection: TextDirection.rtl,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              originalIcon,
              modifiedIcon,
            ],
          ),
        ),
      ),
    );

    final iconFinder = find.byType(Icon);
    expect(iconFinder, findsNWidgets(2));

    final modifiedIconWidget = tester.widget<Icon>(iconFinder.at(1));
    expect(modifiedIconWidget.size, 50.0);
    expect(modifiedIconWidget.color, Colors.blue);
    expect(modifiedIconWidget.semanticLabel, 'Home Icon');
    expect(modifiedIconWidget.textDirection, TextDirection.rtl);
  });
}
