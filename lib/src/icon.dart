import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxIconModify<T extends Icon> on T {
  /// Creates a copy of this icon with the given properties replaced.
  ///
  /// Parameters:
  /// - [size]: The size of the icon.
  /// - [color]: The color of the icon.
  /// - [semanticLabel]: The semantic label for the icon.
  /// - [textDirection]: The text direction for the icon.
  T copyWith({
    double? size,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) =>
      Icon(
        icon,
        color: color ?? this.color,
        size: size ?? this.size,
        semanticLabel: semanticLabel ?? this.semanticLabel,
        textDirection: textDirection ?? this.textDirection,
      ) as T;

  /// Creates a copy of this icon with the given size.
  ///
  /// Parameters:
  /// - [size]: The size of the icon.
  T iconSize(double size) => copyWith(size: size);

  /// Creates a copy of this icon with the given color.
  ///
  /// Parameters:
  /// - [color]: The color of the icon.
  T iconColor(Color color) => copyWith(color: color);
}
