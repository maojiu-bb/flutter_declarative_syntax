import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxTextModify on Text {
  /// Creates a new [Text] with the specified [color].
  Text withColor(Color color) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(color: color),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [fontSize].
  Text withFontSize(double fontSize) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontSize: fontSize),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [fontWeight].
  Text withFontWeight(FontWeight fontWeight) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontWeight: fontWeight),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [fontStyle].
  Text withFontStyle(FontStyle fontStyle) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontStyle: fontStyle),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [letterSpacing].
  Text withLetterSpacing(double letterSpacing) {
    return Text(
      data ?? '',
      style:
          (style ?? const TextStyle()).copyWith(letterSpacing: letterSpacing),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [wordSpacing].
  Text withWordSpacing(double wordSpacing) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(wordSpacing: wordSpacing),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [height].
  Text withHeight(double height) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(height: height),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [textBaseline].
  Text withTextBaseline(TextBaseline textBaseline) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(textBaseline: textBaseline),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [decoration].
  Text withDecoration(TextDecoration decoration) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(decoration: decoration),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [decorationColor].
  Text withDecorationColor(Color decorationColor) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle())
          .copyWith(decorationColor: decorationColor),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [decorationStyle].
  Text withDecorationStyle(TextDecorationStyle decorationStyle) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle())
          .copyWith(decorationStyle: decorationStyle),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [fontFamily].
  Text withFontFamily(String fontFamily) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontFamily: fontFamily),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [background] color.
  Text withBackgroundColor(Color background) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(backgroundColor: background),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [shadows].
  Text withShadows(List<Shadow> shadows) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(shadows: shadows),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  /// Creates a new [Text] with the specified [overflow].
  Text withOverflow(TextOverflow overflow) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(overflow: overflow),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      softWrap: softWrap,
      textScaler: textScaler,
      locale: locale,
      semanticsLabel: semanticsLabel,
      textDirection: textDirection,
    );
  }

  Text withTextScaler(double scale) => Text(
        data ?? '',
        style: style,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
        softWrap: softWrap,
        textScaler: TextScaler.linear(scale),
        locale: locale,
        semanticsLabel: semanticsLabel,
        textDirection: textDirection,
      );
}
