import 'package:flutter/material.dart';
import 'package:flutter_declarative_syntax/src/button_style.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ButtonStyle Extension Tests', () {
    test('withTextStyle applies TextStyle', () {
      final ButtonStyle style = const ButtonStyle()
          .withTextStyle(const TextStyle(color: Colors.red, fontSize: 20));
      final TextStyle? appliedTextStyle = style.textStyle?.resolve({});

      expect(appliedTextStyle?.color, Colors.red);
      expect(appliedTextStyle?.fontSize, 20);
    });

    test('withBackgroundColor applies background color', () {
      final ButtonStyle style =
          const ButtonStyle().withBackgroundColor(Colors.blue);
      final Color? appliedColor = style.backgroundColor?.resolve({});

      expect(appliedColor, Colors.blue);
    });

    test('withForegroundColor applies foreground color', () {
      final ButtonStyle style =
          const ButtonStyle().withForegroundColor(Colors.white);
      final Color? appliedColor = style.foregroundColor?.resolve({});

      expect(appliedColor, Colors.white);
    });

    test('withOverlayColor applies overlay color', () {
      final ButtonStyle style =
          const ButtonStyle().withOverlayColor(Colors.grey);
      final Color? appliedColor = style.overlayColor?.resolve({});

      expect(appliedColor, Colors.grey);
    });

    test('withShadowColor applies shadow color', () {
      final ButtonStyle style =
          const ButtonStyle().withShadowColor(Colors.black);
      final Color? appliedColor = style.shadowColor?.resolve({});

      expect(appliedColor, Colors.black);
    });

    test('withSurfaceTintColor applies surface tint color', () {
      final ButtonStyle style =
          const ButtonStyle().withSurfaceTintColor(Colors.green);
      final Color? appliedColor = style.surfaceTintColor?.resolve({});

      expect(appliedColor, Colors.green);
    });

    test('withElevation applies elevation', () {
      final ButtonStyle style = const ButtonStyle().withElevation(10);
      final double? appliedElevation = style.elevation?.resolve({});

      expect(appliedElevation, 10);
    });

    test('withPadding applies padding', () {
      final ButtonStyle style =
          const ButtonStyle().withPadding(const EdgeInsets.all(16));
      final EdgeInsetsGeometry? appliedPadding = style.padding?.resolve({});

      expect(appliedPadding, const EdgeInsets.all(16));
    });

    test('withMinimumSize applies minimum size', () {
      final ButtonStyle style =
          const ButtonStyle().withMinimumSize(const Size(100, 50));
      final Size? appliedSize = style.minimumSize?.resolve({});

      expect(appliedSize, const Size(100, 50));
    });

    test('withFixedSize applies fixed size', () {
      final ButtonStyle style =
          const ButtonStyle().withFixedSize(const Size(200, 100));
      final Size? appliedSize = style.fixedSize?.resolve({});

      expect(appliedSize, const Size(200, 100));
    });

    test('withMaximumSize applies maximum size', () {
      final ButtonStyle style =
          const ButtonStyle().withMaximumSize(const Size(300, 150));
      final Size? appliedSize = style.maximumSize?.resolve({});

      expect(appliedSize, const Size(300, 150));
    });

    test('withIconColor applies icon color', () {
      final ButtonStyle style =
          const ButtonStyle().withIconColor(Colors.yellow);
      final Color? appliedColor = style.iconColor?.resolve({});

      expect(appliedColor, Colors.yellow);
    });

    test('withIconSize applies icon size', () {
      final ButtonStyle style = const ButtonStyle().withIconSize(24);
      final double? appliedSize = style.iconSize?.resolve({});

      expect(appliedSize, 24);
    });

    test('withSide applies border side', () {
      final ButtonStyle style = const ButtonStyle()
          .withSide(const BorderSide(color: Colors.purple, width: 2));
      final BorderSide? appliedSide = style.side?.resolve({});

      expect(appliedSide, const BorderSide(color: Colors.purple, width: 2));
    });

    test('withShape applies shape', () {
      final ButtonStyle style =
          const ButtonStyle().withShape(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));
      final ShapeBorder? appliedShape = style.shape?.resolve({});

      expect(appliedShape, isA<RoundedRectangleBorder>());
    });

    test('withMouseCursor applies mouse cursor', () {
      final ButtonStyle style =
          const ButtonStyle().withMouseCursor(SystemMouseCursors.click);
      final MouseCursor? appliedCursor = style.mouseCursor?.resolve({});

      expect(appliedCursor, SystemMouseCursors.click);
    });
  });
}
