import 'package:flutter/widgets.dart';

extension FlutterDeclarativeSyntaxAlignmentModify on Widget {
  /// Wraps this widget in an [Align] widget with the specified [alignment].
  ///
  /// - Parameter alignment: The alignment of the child widget within its parent.
  /// - Parameter key: An optional key to identify the widget.
  ///
  /// Returns a new [Align] widget with the specified alignment and the current widget as its child.
  Widget align(
    AlignmentGeometry alignment, {
    Key? key,
  }) =>
      Align(
        key: key,
        alignment: alignment,
        child: this,
      );

  /// Wraps this widget in an [Align] widget with [Alignment.center] alignment.
  ///
  /// This method centers the widget within its parent.
  Widget alignCenter() => align(Alignment.center);

  /// Wraps this widget in an [Align] widget with [Alignment.centerLeft] alignment.
  ///
  /// This method aligns the widget to the center left of its parent.
  Widget alignLeft() => align(Alignment.centerLeft);

  /// Wraps this widget in an [Align] widget with [Alignment.centerRight] alignment.
  ///
  /// This method aligns the widget to the center right of its parent.
  Widget alignRight() => align(Alignment.centerRight);

  /// Wraps this widget in an [Align] widget with [Alignment.topCenter] alignment.
  ///
  /// This method aligns the widget to the top center of its parent.
  Widget alignTop() => align(Alignment.topCenter);

  /// Wraps this widget in an [Align] widget with [Alignment.bottomCenter] alignment.
  ///
  /// This method aligns the widget to the bottom center of its parent.
  Widget alignBottom() => align(Alignment.bottomCenter);
}
