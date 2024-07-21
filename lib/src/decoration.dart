import 'package:flutter/widgets.dart';

extension FlutterDeclarativeSyntaxDecorationModify on Widget {
  /// Wraps this widget in a [DecoratedBox] with a background color.
  ///
  /// Parameters:
  /// - [color]: The background color.
  /// - [key]: Optional key for the widget.
  Widget backgroundColor(
    Color color, {
    Key? key,
  }) =>
      DecoratedBox(
        key: key,
        decoration: BoxDecoration(color: color),
        child: this,
      );

  /// Wraps this widget in a [DecoratedBox] with a background image.
  ///
  /// Parameters:
  /// - [image]: The background image.
  /// - [key]: Optional key for the widget.
  Widget backgroundImage(
    DecorationImage image, {
    Key? key,
  }) =>
      DecoratedBox(
        key: key,
        decoration: BoxDecoration(image: image),
        child: this,
      );

  /// Wraps this widget in a [DecoratedBox] with a border.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [all]: Border width for all sides.
  /// - [left]: Border width for the left side.
  /// - [right]: Border width for the right side.
  /// - [top]: Border width for the top side.
  /// - [bottom]: Border width for the bottom side.
  /// - [color]: Border color (default is black).
  /// - [style]: Border style (default is solid).
  Widget border({
    Key? key,
    double? all,
    double? left,
    double? right,
    double? top,
    double? bottom,
    Color color = const Color(0xFF000000),
    BorderStyle style = BorderStyle.solid,
  }) {
    BoxDecoration decoration = BoxDecoration(
      border: Border(
        left: (left ?? all) == null
            ? BorderSide.none
            : BorderSide(color: color, width: left ?? all ?? 0, style: style),
        right: (right ?? all) == null
            ? BorderSide.none
            : BorderSide(color: color, width: right ?? all ?? 0, style: style),
        top: (top ?? all) == null
            ? BorderSide.none
            : BorderSide(color: color, width: top ?? all ?? 0, style: style),
        bottom: (bottom ?? all) == null
            ? BorderSide.none
            : BorderSide(color: color, width: bottom ?? all ?? 0, style: style),
      ),
    );
    return DecoratedBox(
      key: key,
      decoration: decoration,
      child: this,
    );
  }

  /// Wraps this widget in a [DecoratedBox] with a border radius.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [all]: Border radius for all corners.
  /// - [topLeft]: Border radius for the top left corner.
  /// - [topRight]: Border radius for the top right corner.
  /// - [bottomLeft]: Border radius for the bottom left corner.
  /// - [bottomRight]: Border radius for the bottom right corner.
  Widget borderRadius({
    Key? key,
    double? all,
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) {
    BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft ?? all ?? 0.0),
        topRight: Radius.circular(topRight ?? all ?? 0.0),
        bottomLeft: Radius.circular(bottomLeft ?? all ?? 0.0),
        bottomRight: Radius.circular(bottomRight ?? all ?? 0.0),
      ),
    );
    return DecoratedBox(
      key: key,
      decoration: decoration,
      child: this,
    );
  }

  /// Wraps this widget in a [DecoratedBox] with a box shadow.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [color]: Shadow color (default is black).
  /// - [offset]: Shadow offset (default is [Offset.zero]).
  /// - [blurRadius]: Blur radius of the shadow (default is 0.0).
  /// - [spreadRadius]: Spread radius of the shadow (default is 0.0).
  Widget boxShadow({
    Key? key,
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    double spreadRadius = 0.0,
  }) {
    BoxDecoration decoration = BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color,
          blurRadius: blurRadius,
          spreadRadius: spreadRadius,
          offset: offset,
        ),
      ],
    );
    return DecoratedBox(
      key: key,
      decoration: decoration,
      child: this,
    );
  }

  /// Wraps this widget in a [DecoratedBox] with a custom decoration.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [color]: Background color.
  /// - [image]: Background image.
  /// - [border]: Border.
  /// - [borderRadius]: Border radius.
  /// - [boxShadow]: Box shadow.
  /// - [gradient]: Gradient.
  /// - [backgroundBlendMode]: Background blend mode.
  /// - [shape]: Box shape (default is rectangle).
  /// - [position]: Decoration position (default is background).
  Widget decorated({
    Key? key,
    Color? color,
    DecorationImage? image,
    BoxBorder? border,
    BorderRadius? borderRadius,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    BlendMode? backgroundBlendMode,
    BoxShape shape = BoxShape.rectangle,
    DecorationPosition position = DecorationPosition.background,
  }) {
    BoxDecoration decoration = BoxDecoration(
      color: color,
      image: image,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      gradient: gradient,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape,
    );
    return DecoratedBox(
      key: key,
      decoration: decoration,
      position: position,
      child: this,
    );
  }
}
