import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/gesture.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GestureDetector extension tests', () {
    testWidgets('onTap callback is triggered', (WidgetTester tester) async {
      // Define a boolean variable to check if the callback was triggered
      bool tapped = false;

      // Create a testable widget that uses the onTap extension
      final widget = MaterialApp(
        home: Scaffold(
          body: const Text("on tap").onTap(() {
            tapped = true;
          }),
        ),
      );

      // Build the widget
      await tester.pumpWidget(widget);

      // Tap the text widget
      await tester.tap(find.text('on tap'));

      // Rebuild the widget after the state has changed
      await tester.pump();

      // Verify that the callback was triggered
      expect(tapped, isTrue);
    });

    testWidgets('onLongPress callback is triggered',
        (WidgetTester tester) async {
      // Define a boolean variable to check if the callback was triggered
      bool longPressed = false;

      // Create a testable widget that uses the onLongPress extension
      final widget = MaterialApp(
        home: Scaffold(
          body: const Text("on long press").onLongPress(() {
            longPressed = true;
          }),
        ),
      );

      // Build the widget
      await tester.pumpWidget(widget);

      // Long press the text widget
      await tester.longPress(find.text('on long press'));

      // Rebuild the widget after the state has changed
      await tester.pump();

      // Verify that the callback was triggered
      expect(longPressed, isTrue);
    });

    // Add more tests for other gestures as needed
  });
}
