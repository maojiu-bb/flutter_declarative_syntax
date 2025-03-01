import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_declarative_syntax/src/focus.dart';

void main() {
  group('Focus Extension Tests', () {
    testWidgets('focusable test', (WidgetTester tester) async {
      final focusNode = FocusNode();
      await tester.pumpWidget(
        MaterialApp(
          home: const Text('Test').focusable(
            focusNode: focusNode,
            autofocus: true,
            canRequestFocus: true,
          ),
        ),
      );

      final focusFinder = find.byWidgetPredicate(
        (widget) => widget is Focus && widget.child is Text,
      );
      expect(focusFinder, findsOneWidget);

      final focus = tester.widget<Focus>(focusFinder);
      expect(focus.focusNode, focusNode);
      expect(focus.autofocus, true);
      expect(focus.canRequestFocus, true);

      focusNode.dispose();
    });
  });
}
