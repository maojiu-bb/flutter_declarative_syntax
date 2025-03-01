import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxButtonStyleModify on ButtonStyle {
  /// Adds or overrides the text style of the [ButtonStyle].
  ButtonStyle withTextStyle(TextStyle? textStyle) {
    return copyWith(
      textStyle: WidgetStateProperty.all(textStyle),
    );
  }

  /// Adds or overrides the background color of the [ButtonStyle].
  ButtonStyle withBackgroundColor(Color color) => copyWith(
        backgroundColor: WidgetStateProperty.all(color),
      );

  /// Adds or overrides the foreground color of the [ButtonStyle].
  ButtonStyle withForegroundColor(Color color) => copyWith(
        foregroundColor: WidgetStateProperty.all(color),
      );

  /// Adds or overrides the overlay color of the [ButtonStyle].
  ButtonStyle withOverlayColor(Color color) => copyWith(
        overlayColor: WidgetStateProperty.all(color),
      );

  /// Adds or overrides the shadow color of the [ButtonStyle].
  ButtonStyle withShadowColor(Color color) => copyWith(
        shadowColor: WidgetStateProperty.all(color),
      );

  /// Adds or overrides the surface tint color of the [ButtonStyle].
  ButtonStyle withSurfaceTintColor(Color color) => copyWith(
        surfaceTintColor: WidgetStateProperty.all(color),
      );

  /// Adds or overrides the elevation of the [ButtonStyle].
  ButtonStyle withElevation(double? elevation) {
    return copyWith(
      elevation: WidgetStateProperty.all(elevation),
    );
  }

  /// Adds or overrides the padding of the [ButtonStyle].
  ButtonStyle withPadding(EdgeInsetsGeometry? padding) {
    return copyWith(
      padding: WidgetStateProperty.all(padding),
    );
  }

  /// Adds or overrides the minimum size of the [ButtonStyle].
  ButtonStyle withMinimumSize(Size? minimumSize) {
    return copyWith(
      minimumSize: WidgetStateProperty.all(minimumSize),
    );
  }

  /// Adds or overrides the fixed size of the [ButtonStyle].
  ButtonStyle withFixedSize(Size? fixedSize) {
    return copyWith(
      fixedSize: WidgetStateProperty.all(fixedSize),
    );
  }

  /// Adds or overrides the maximum size of the [ButtonStyle].
  ButtonStyle withMaximumSize(Size? maximumSize) {
    return copyWith(
      maximumSize: WidgetStateProperty.all(maximumSize),
    );
  }

  /// Adds or overrides the icon color of the [ButtonStyle].
  ButtonStyle withIconColor(Color? iconColor) {
    return copyWith(
      iconColor: WidgetStateProperty.all(iconColor),
    );
  }

  /// Adds or overrides the icon size of the [ButtonStyle].
  ButtonStyle withIconSize(double? iconSize) {
    return copyWith(
      iconSize: WidgetStateProperty.all(iconSize),
    );
  }

  /// Adds or overrides the side of the [ButtonStyle].
  ButtonStyle withSide(BorderSide? side) {
    return copyWith(
      side: WidgetStateProperty.all(side),
    );
  }

  /// Adds or overrides the shape of the [ButtonStyle].
  ButtonStyle withShape(OutlinedBorder? shape) {
    return copyWith(
      shape: WidgetStateProperty.all(shape),
    );
  }

  /// Adds or overrides the mouse cursor of the [ButtonStyle].
  ButtonStyle withMouseCursor(MouseCursor? mouseCursor) {
    return copyWith(
      mouseCursor: WidgetStateProperty.all(mouseCursor),
    );
  }

  /// Adds or overrides the visual density of the [ButtonStyle].
  ButtonStyle withVisualDensity(VisualDensity? visualDensity) {
    return copyWith(
      visualDensity: visualDensity,
    );
  }

  /// Adds or overrides the tap target size of the [ButtonStyle].
  ButtonStyle withTapTargetSize(MaterialTapTargetSize? tapTargetSize) {
    return copyWith(
      tapTargetSize: tapTargetSize,
    );
  }

  /// Adds or overrides the animation duration of the [ButtonStyle].
  ButtonStyle withAnimationDuration(Duration? animationDuration) {
    return copyWith(
      animationDuration: animationDuration,
    );
  }

  /// Adds or overrides the enable feedback of the [ButtonStyle].
  ButtonStyle withEnableFeedback(bool? enableFeedback) {
    return copyWith(
      enableFeedback: enableFeedback,
    );
  }

  /// Adds or overrides the alignment of the [ButtonStyle].
  ButtonStyle withAlignment(AlignmentGeometry? alignment) {
    return copyWith(
      alignment: alignment,
    );
  }

  /// Adds or overrides the splash factory of the [ButtonStyle].
  ButtonStyle withSplashFactory(InteractiveInkFeatureFactory? splashFactory) {
    return copyWith(
      splashFactory: splashFactory,
    );
  }
}
