import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('List Extension Tests', () {
    test('hasValue should return true if the list contains the value', () {
      List<int> numberList = [1, 2, 3];
      List<String> stringList = ['a', 'b', 'c'];

      // Test for integer list
      expect(numberList.hasValue(1), true);
      expect(numberList.hasValue(4), false);

      // Test for string list
      expect(stringList.hasValue('a'), true);
      expect(stringList.hasValue('d'), false);
    });

    test('toRow should create a Row with the provided widgets', () {
      List<Widget> widgets = [
        const Text('Item 1'),
        const Text('Item 2'),
      ];

      Widget row = widgets.toRow(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      );

      expect(row, isA<Row>());
      expect((row as Row).mainAxisAlignment, MainAxisAlignment.center);
      expect((row).crossAxisAlignment, CrossAxisAlignment.start);
    });

    test('toColumn should create a Column with the provided widgets', () {
      List<Widget> widgets = [
        const Text('Item 1'),
        const Text('Item 2'),
      ];

      Widget column = widgets.toColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
      );

      expect(column, isA<Column>());
      expect((column as Column).mainAxisAlignment, MainAxisAlignment.center);
      expect((column).crossAxisAlignment, CrossAxisAlignment.end);
    });

    test('toStack should create a Stack with the provided widgets', () {
      List<Widget> widgets = [
        const Positioned(left: 0, top: 0, child: Text('Item 1')),
        const Positioned(right: 0, bottom: 0, child: Text('Item 2')),
      ];

      Widget stack = widgets.toStack(
        alignment: AlignmentDirectional.bottomEnd,
      );

      expect(stack, isA<Stack>());
      expect((stack as Stack).alignment, AlignmentDirectional.bottomEnd);
    });

    test('toListView should create a ListView with the provided widgets', () {
      List<Widget> widgets = [
        const Text('Item 1'),
        const Text('Item 2'),
      ];

      Widget listView = widgets.toListView(
        scrollDirection: Axis.horizontal,
      );

      expect(listView, isA<ListView>());
      expect((listView as ListView).scrollDirection, Axis.horizontal);
    });
  });
}
