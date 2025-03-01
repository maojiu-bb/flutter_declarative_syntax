import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxLayoutModify on Widget {
  /// Wraps this widget in an [AspectRatio] widget with the given [aspectRatio].
  Widget aspectRatio({
    Key? key,
    required double aspectRatio,
  }) =>
      AspectRatio(
        key: key,
        aspectRatio: aspectRatio,
        child: this,
      );

  /// Wraps this widget in a [Container] with a card-like appearance including
  /// optional [radius], [color], [shadowColor], and [blurRadius].
  Widget card({
    Key? key,
    double? radius,
    Color? color,
    Color? shadowColor,
    double? blurRadius,
  }) =>
      Container(
        key: key,
        decoration: BoxDecoration(
          color: color ?? Colors.white.withValues(alpha: 0.6),
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 5),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              color: shadowColor ?? Colors.grey.withValues(alpha: 0.15),
              blurRadius: blurRadius ?? 8,
              spreadRadius: 0,
              blurStyle: BlurStyle.normal,
            ),
          ],
        ),
        child: this,
      );

  /// Wraps this widget in a [Center] widget with optional [widthFactor]
  /// and [heightFactor].
  Widget center({
    Key? key,
    double? widthFactor,
    double? heightFactor,
  }) =>
      Center(
        key: key,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  /// Wraps this widget in a [Material] widget with specified [elevation],
  /// optional [borderRadius], and [shadowColor].
  Widget elevation(
    double elevation, {
    Key? key,
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    Color shadowColor = const Color(0xFF000000),
  }) =>
      Material(
        key: key,
        color: Colors.transparent,
        elevation: elevation,
        borderRadius: borderRadius,
        shadowColor: shadowColor,
        child: this,
      );

  /// Wraps this widget in an [Expanded] widget with the given [flex].
  Widget expanded({
    Key? key,
    int flex = 1,
  }) =>
      Expanded(
        key: key,
        flex: flex,
        child: this,
      );

  /// Wraps this widget in a [FittedBox] with specified [fit], [alignment],
  /// and [clipBehavior].
  Widget fittedBox({
    Key? key,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.centerLeft,
    Clip clipBehavior = Clip.none,
  }) =>
      FittedBox(
        key: key,
        fit: fit,
        alignment: alignment,
        clipBehavior: clipBehavior,
        child: this,
      );

  /// Wraps this widget in a [Flexible] widget with the given [flex] and [fit].
  Widget flexible({
    Key? key,
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) =>
      Flexible(
        key: key,
        flex: flex,
        fit: fit,
        child: this,
      );

  /// Wraps this widget in a [FractionallySizedBox] with optional [widthFactor],
  /// [heightFactor], and [alignment].
  Widget fractionallySizedBox({
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) =>
      FractionallySizedBox(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  /// Wraps this widget in an [Offstage] widget, optionally showing or hiding
  /// it based on the [offstage] parameter.
  Widget offstage({
    Key? key,
    bool offstage = true,
  }) =>
      Offstage(
        key: key,
        offstage: offstage,
        child: this,
      );

  /// Wraps this widget in an [Opacity] widget with the given [opacity]
  /// and optional [alwaysIncludeSemantics].
  Widget opacity({
    Key? key,
    required double opacity,
    bool alwaysIncludeSemantics = false,
  }) =>
      Opacity(
        key: key,
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: this,
      );

  /// Wraps this widget in an [OverflowBox] with optional [alignment], [minWidth],
  /// [maxWidth], [minHeight], and [maxHeight].
  Widget overflow({
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
  }) =>
      OverflowBox(
        key: key,
        alignment: alignment,
        minWidth: minWidth,
        maxWidth: maxWidth,
        minHeight: minHeight,
        maxHeight: maxHeight,
        child: this,
      );

  /// Wraps this widget in a [Positioned] widget with optional [left], [top],
  /// [right], [bottom], [width], and [height].
  Widget positioned({
    Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  /// Wraps this widget in a [Transform] with scaling transformation applied
  /// using [all], [x], and [y] parameters.
  Widget scale({
    Key? key,
    double? all,
    double? x,
    double? y,
    Offset? origin,
    AlignmentGeometry alignment = Alignment.center,
    bool transformHitTests = true,
  }) =>
      Transform(
        key: key,
        transform: Matrix4.diagonal3Values(x ?? all ?? 0, y ?? all ?? 0, 1.0),
        alignment: alignment,
        origin: origin,
        transformHitTests: transformHitTests,
        child: this,
      );

  /// Wraps this widget in a [ConstrainedBox] with tight constraints of [width]
  /// and [height].
  Widget tight({
    double? width,
    double? height,
    Key? key,
  }) =>
      ConstrainedBox(
        key: key,
        constraints: BoxConstraints.tightFor(width: width, height: height),
        child: this,
      );

  /// Wraps this widget in a [ConstrainedBox] with tight constraints for both
  /// width and height, using the same [size].
  Widget tightSize(
    double size, {
    Key? key,
  }) =>
      ConstrainedBox(
        key: key,
        constraints: BoxConstraints.tightFor(width: size, height: size),
        child: this,
      );

  /// Wraps this widget in a [Transform] widget with a custom [transform] matrix.
  Widget transform({
    Key? key,
    required Matrix4 transform,
    Offset? origin,
    AlignmentGeometry? alignment,
    bool transformHitTests = true,
  }) =>
      Transform(
        key: key,
        transform: transform,
        alignment: alignment,
        origin: origin,
        transformHitTests: transformHitTests,
        child: this,
      );

  /// Wraps this widget in a [Transform.translate] widget with a given [offset].
  Widget translate({
    Key? key,
    required Offset offset,
    bool transformHitTests = true,
  }) =>
      Transform.translate(
        key: key,
        offset: offset,
        transformHitTests: transformHitTests,
        child: this,
      );

  /// Wraps this widget in a [ConstrainedBox] with a fixed [width].
  Widget width(
    double width, {
    Key? key,
  }) =>
      ConstrainedBox(
        key: key,
        constraints: BoxConstraints.tightFor(width: width),
        child: this,
      );

  /// Wraps this widget in an [Overlay] with a fixed [overlayEntry].
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [overlayEntry]: The list of entries to initially include in the overlay.
  /// - [clipBehavior]: The clip behavior for the overlay (default is Clip.none).
  Widget overlay({
    Key? key,
    required List<OverlayEntry> overlayEntry,
    Clip clipBehavior = Clip.none,
  }) =>
      Overlay(
        key: key,
        initialEntries: overlayEntry,
        clipBehavior: clipBehavior,
      );

  /// Wraps this widget in a [ConstrainedBox] to set a fixed height.
  ///
  /// Parameters:
  /// - [height]: The height to set for the widget.
  /// - [key]: Optional key for the widget.
  Widget height(
    double height, {
    Key? key,
  }) =>
      ConstrainedBox(
        key: key,
        constraints: BoxConstraints.tightFor(height: height),
        child: this,
      );

  /// Wraps this widget in a [LimitedBox] to set maximum dimensions.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [maxWidth]: Maximum width constraint.
  /// - [maxHeight]: Maximum height constraint.
  Widget limited({
    Key? key,
    double maxWidth = double.infinity,
    double maxHeight = double.infinity,
  }) =>
      LimitedBox(
        key: key,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        child: this,
      );

  /// Wraps this widget in a [SizedBox] with specified dimensions.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [width]: The width to set.
  /// - [height]: The height to set.
  Widget sized({
    Key? key,
    double? width,
    double? height,
  }) =>
      SizedBox(
        key: key,
        width: width,
        height: height,
        child: this,
      );

  /// Wraps this widget in a [Container] with specified dimensions.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [width]: The width to set.
  /// - [height]: The height to set.
  /// - [color]: Background color.
  /// - [padding]: Inner padding.
  /// - [margin]: Outer margin.
  /// - [alignment]: Child alignment.
  Widget container({
    Key? key,
    double? width,
    double? height,
    Color? color,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
  }) =>
      Container(
        key: key,
        width: width,
        height: height,
        color: color,
        padding: padding,
        margin: margin,
        alignment: alignment,
        child: this,
      );

  Widget backgroundColor(Color? color) => Container(
        color: color?.withAlpha((255).round()),
        child: this,
      );

  Widget backgroundColorWithOpacity(Color? color, double opacity) => Container(
        color: color?.withAlpha((opacity * 255).round()),
        child: this,
      );
}

// 添加更多布局扩展
extension FlutterDeclarativeSyntaxLayoutModifyExtra on Widget {
  /// Wraps this widget in an [OverflowBox].
  Widget overflowBox({
    Key? key,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    AlignmentGeometry alignment = Alignment.center,
  }) =>
      OverflowBox(
        key: key,
        minWidth: minWidth,
        maxWidth: maxWidth,
        minHeight: minHeight,
        maxHeight: maxHeight,
        alignment: alignment,
        child: this,
      );

  /// Wraps this widget in a [CustomSingleChildLayout].
  Widget customLayout({
    Key? key,
    required SingleChildLayoutDelegate delegate,
  }) =>
      CustomSingleChildLayout(
        key: key,
        delegate: delegate,
        child: this,
      );

  /// Wraps this widget in an [IntrinsicWidth].
  Widget intrinsicWidth({
    Key? key,
    double? stepWidth,
    double? stepHeight,
  }) =>
      IntrinsicWidth(
        key: key,
        stepWidth: stepWidth,
        stepHeight: stepHeight,
        child: this,
      );

  /// Wraps this widget in an [IntrinsicHeight].
  Widget intrinsicHeight({
    Key? key,
  }) =>
      IntrinsicHeight(
        key: key,
        child: this,
      );
}
