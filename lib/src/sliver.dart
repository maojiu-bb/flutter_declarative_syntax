import 'package:flutter/widgets.dart';

extension FlutterDeclarativeSyntaxSliverModify on Widget {
  /// Adds padding around the given [Widget] as a [SliverPadding].
  ///
  /// - [key]: Optional key for the [SliverPadding] widget.
  /// - [value]: Optional [EdgeInsetsGeometry] to specify the padding.
  /// - [all]: Optional value to apply the same padding on all sides.
  /// - [horizontal]: Optional horizontal padding.
  /// - [vertical]: Optional vertical padding.
  /// - [top]: Optional padding for the top.
  /// - [bottom]: Optional padding for the bottom.
  /// - [left]: Optional padding for the left.
  /// - [right]: Optional padding for the right.
  /// - Returns: A [SliverPadding] widget with the specified padding around the [Widget].
  Widget sliverPadding({
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
      SliverPadding(
        key: key,
        padding: value ??
            EdgeInsets.only(
              top: top ?? vertical ?? all ?? 0.0,
              bottom: bottom ?? vertical ?? all ?? 0.0,
              left: left ?? horizontal ?? all ?? 0.0,
              right: right ?? horizontal ?? all ?? 0.0,
            ),
        sliver: this,
      );

  /// Adds bottom padding around the given [Widget] as a [SliverPadding].
  ///
  /// - [val]: The padding value to apply to the bottom.
  /// - Returns: A [SliverPadding] widget with the specified bottom padding.
  Widget sliverPaddingBottom(double val) => sliverPadding(bottom: val);

  /// Adds horizontal padding around the given [Widget] as a [SliverPadding].
  ///
  /// - [val]: The padding value to apply horizontally.
  /// - Returns: A [SliverPadding] widget with the specified horizontal padding.
  Widget sliverPaddingHorizontal(double val) => sliverPadding(horizontal: val);

  /// Adds left padding around the given [Widget] as a [SliverPadding].
  ///
  /// - [val]: The padding value to apply to the left.
  /// - Returns: A [SliverPadding] widget with the specified left padding.
  Widget sliverPaddingLeft(double val) => sliverPadding(left: val);

  /// Adds right padding around the given [Widget] as a [SliverPadding].
  ///
  /// - [val]: The padding value to apply to the right.
  /// - Returns: A [SliverPadding] widget with the specified right padding.
  Widget sliverPaddingRight(double val) => sliverPadding(right: val);

  /// Adds top padding around the given [Widget] as a [SliverPadding].
  ///
  /// - [val]: The padding value to apply to the top.
  /// - Returns: A [SliverPadding] widget with the specified top padding.
  Widget sliverPaddingTop(double val) => sliverPadding(top: val);

  /// Adds vertical padding around the given [Widget] as a [SliverPadding].
  ///
  /// - [val]: The padding value to apply vertically.
  /// - Returns: A [SliverPadding] widget with the specified vertical padding.
  Widget sliverPaddingVertical(double val) => sliverPadding(vertical: val);

  /// Wraps the given [Widget] in a [SliverToBoxAdapter].
  ///
  /// - [key]: Optional key for the [SliverToBoxAdapter] widget.
  /// - Returns: A [SliverToBoxAdapter] widget with the given [Widget] as its child.
  Widget sliverToBoxAdapter({
    Key? key,
  }) =>
      SliverToBoxAdapter(key: key, child: this);
}
