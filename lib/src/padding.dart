import 'package:flutter/widgets.dart';

extension FlutterDeclarativeSyntaxPaddingModify on Widget {
  /// Wraps this widget in a [Padding] widget with the specified padding values.
  ///
  /// - Parameter key: An optional key to identify the widget.
  /// - Parameter value: An optional [EdgeInsetsGeometry] for custom padding.
  /// - Parameter all: Padding value for all sides (overrides other parameters if provided).
  /// - Parameter horizontal: Padding value for the left and right sides.
  /// - Parameter vertical: Padding value for the top and bottom sides.
  /// - Parameter top: Padding value for the top side.
  /// - Parameter bottom: Padding value for the bottom side.
  /// - Parameter left: Padding value for the left side.
  /// - Parameter right: Padding value for the right side.
  ///
  /// Returns a new [Padding] widget with the specified padding and the current widget as its child.
  Widget padding({
    Key? key,
    EdgeInsetsGeometry? value,
    double? all,
    double? horizontal,
    double? vertical,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) =>
      Padding(
        key: key,
        padding: value ??
            EdgeInsets.only(
              top: top ?? vertical ?? all ?? 0.0,
              bottom: bottom ?? vertical ?? all ?? 0.0,
              left: left ?? horizontal ?? all ?? 0.0,
              right: right ?? horizontal ?? all ?? 0.0,
            ),
        child: this,
      );

  /// Wraps this widget in a [Padding] widget with equal padding on all sides.
  ///
  /// - Parameter val: The padding value for all sides.
  /// Returns a new [Padding] widget with the specified padding and the current widget as its child.
  Widget paddingAll(double val) => padding(all: val);

  /// Wraps this widget in a [Padding] widget with padding on the bottom side.
  ///
  /// - Parameter val: The padding value for the bottom side.
  /// Returns a new [Padding] widget with the specified padding and the current widget as its child.
  Widget paddingBottom(double val) => padding(bottom: val);

  /// Wraps this widget in a [Padding] widget with padding on the left and right sides.
  ///
  /// - Parameter val: The padding value for the left and right sides.
  /// Returns a new [Padding] widget with the specified padding and the current widget as its child.
  Widget paddingHorizontal(double val) => padding(horizontal: val);

  /// Wraps this widget in a [Padding] widget with padding on the left side.
  ///
  /// - Parameter val: The padding value for the left side.
  /// Returns a new [Padding] widget with the specified padding and the current widget as its child.
  Widget paddingLeft(double val) => padding(left: val);

  /// Wraps this widget in a [Padding] widget with padding on the right side.
  ///
  /// - Parameter val: The padding value for the right side.
  /// Returns a new [Padding] widget with the specified padding and the current widget as its child.
  Widget paddingRight(double val) => padding(right: val);

  /// Wraps this widget in a [Padding] widget with padding on the top side.
  ///
  /// - Parameter val: The padding value for the top side.
  /// Returns a new [Padding] widget with the specified padding and the current widget as its child.
  Widget paddingTop(double val) => padding(top: val);

  /// Wraps this widget in a [Padding] widget with padding on the top and bottom sides.
  ///
  /// - Parameter val: The padding value for the top and bottom sides.
  /// Returns a new [Padding] widget with the specified padding and the current widget as its child.
  Widget paddingVertical(double val) => padding(vertical: val);
}
