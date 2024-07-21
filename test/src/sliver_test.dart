import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/sliver.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('sliverToBoxAdapter wraps widget in SliverToBoxAdapter',
      (WidgetTester tester) async {
    final widget = CustomScrollView(
      slivers: [
        const Text('Item').sliverToBoxAdapter(),
      ],
    );

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: widget)));

    // Verify that the SliverToBoxAdapter wraps the widget
    expect(find.byType(SliverToBoxAdapter), findsOneWidget);
  });
}
