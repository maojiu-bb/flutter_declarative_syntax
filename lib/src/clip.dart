import 'package:flutter/widgets.dart';

extension FlutterDeclarativeSyntaxClipModify on Widget {
  /// Wraps this widget in a [ClipRect].
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [clipper]: Optional custom clipper to define the clip region.
  /// - [clipBehavior]: Defines how to clip (default is Clip.hardEdge).
  Widget clipRect({
    Key? key,
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      ClipRect(
        key: key,
        clipper: clipper,
        clipBehavior: clipBehavior,
        child: this,
      );

  /// Wraps this widget in a [ClipRRect] with optional border radius.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [all]: Optional border radius for all corners.
  /// - [topLeft]: Optional border radius for the top left corner.
  /// - [topRight]: Optional border radius for the top right corner.
  /// - [bottomLeft]: Optional border radius for the bottom left corner.
  /// - [bottomRight]: Optional border radius for the bottom right corner.
  /// - [clipper]: Optional custom clipper to define the clip region.
  /// - [clipBehavior]: Defines how to clip (default is Clip.antiAlias).
  Widget clipRRect({
    Key? key,
    double? all,
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
    CustomClipper<RRect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipRRect(
        key: key,
        clipper: clipper,
        clipBehavior: clipBehavior,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft ?? all ?? 0.0),
          topRight: Radius.circular(topRight ?? all ?? 0.0),
          bottomLeft: Radius.circular(bottomLeft ?? all ?? 0.0),
          bottomRight: Radius.circular(bottomRight ?? all ?? 0.0),
        ),
        child: this,
      );

  /// Wraps this widget in a [ClipRRect] with a circular border radius.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [all]: Circular radius for all corners.
  /// - [clipper]: Optional custom clipper to define the clip region.
  /// - [clipBehavior]: Defines how to clip (default is Clip.antiAlias).
  Widget circle({
    Key? key,
    double? all,
    CustomClipper<RRect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) =>
      ClipRRect(
        key: key,
        clipper: clipper,
        clipBehavior: clipBehavior,
        borderRadius: BorderRadius.all(
          Radius.circular(all ?? 0.0),
        ),
        child: this,
      );

  /// Wraps this widget in a [ClipOval].
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  Widget clipOval({Key? key}) => ClipOval(
        key: key,
        child: this,
      );
}
