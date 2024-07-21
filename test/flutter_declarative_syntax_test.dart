import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/decoration.dart';
import 'package:flutter_declarative_syntax/src/text.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all', () {
    const Text("Flutter Declarative Synrax")
        .withColor(Colors.pink)
        .withFontSize(16)
        .withFontWeight(FontWeight.w600)
        .backgroundColor(Colors.blue);
  });
}
