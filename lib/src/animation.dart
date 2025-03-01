import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxAnimationModify on Widget {
  /// Wraps this widget in an [AnimatedContainer].
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [width]: The target width for the animation.
  /// - [height]: The target height for the animation.
  /// - [color]: The target background color for the animation.
  /// - [padding]: The target padding for the animation.
  /// - [margin]: The target margin for the animation.
  /// - [alignment]: The target alignment for the animation.
  /// - [duration]: The length of time this animation should last (defaults to 300ms).
  /// - [curve]: The curve to apply to the animation (defaults to easeInOut).
  Widget animatedContainer({
    Key? key,
    double? width,
    double? height,
    Color? color,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
  }) =>
      AnimatedContainer(
        key: key,
        width: width,
        height: height,
        color: color,
        padding: padding,
        margin: margin,
        alignment: alignment,
        duration: duration,
        curve: curve,
        child: this,
      );

  /// Wraps this widget in an [AnimatedOpacity].
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [opacity]: The target opacity value between 0.0 and 1.0.
  /// - [duration]: The length of time this animation should last (defaults to 300ms).
  /// - [curve]: The curve to apply to the animation (defaults to easeInOut).
  /// - [onEnd]: Called when the animation completes.
  Widget animatedOpacity({
    Key? key,
    required double opacity,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    VoidCallback? onEnd,
  }) =>
      AnimatedOpacity(
        key: key,
        opacity: opacity,
        duration: duration,
        curve: curve,
        onEnd: onEnd,
        child: this,
      );

  /// Wraps this widget in an [AnimatedPositioned].
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [left]: The target distance from the left edge.
  /// - [top]: The target distance from the top edge.
  /// - [right]: The target distance from the right edge.
  /// - [bottom]: The target distance from the bottom edge.
  /// - [width]: The target width.
  /// - [height]: The target height.
  /// - [duration]: The length of time this animation should last (defaults to 300ms).
  /// - [curve]: The curve to apply to the animation (defaults to easeInOut).
  /// - [onEnd]: Called when the animation completes.
  Widget animatedPositioned({
    Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    VoidCallback? onEnd,
  }) =>
      AnimatedPositioned(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        width: width,
        height: height,
        duration: duration,
        curve: curve,
        onEnd: onEnd,
        child: this,
      );

  /// Wraps this widget in an [AnimatedScale].
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [scale]: The target scale factor.
  /// - [duration]: The length of time this animation should last (defaults to 300ms).
  /// - [curve]: The curve to apply to the animation (defaults to easeInOut).
  /// - [onEnd]: Called when the animation completes.
  /// - [alignment]: The alignment of the origin of the scale operation (defaults to center).
  Widget animatedScale({
    Key? key,
    required double scale,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    VoidCallback? onEnd,
    Alignment alignment = Alignment.center,
  }) =>
      AnimatedScale(
        key: key,
        scale: scale,
        duration: duration,
        curve: curve,
        onEnd: onEnd,
        alignment: alignment,
        child: this,
      );
}

// 添加更多动画扩展
extension FlutterDeclarativeSyntaxAnimationModifyExtra on Widget {
  /// Wraps this widget in an [AnimatedSlide].
  Widget animatedSlide({
    Key? key,
    required Offset offset,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    VoidCallback? onEnd,
  }) =>
      AnimatedSlide(
        key: key,
        offset: offset,
        duration: duration,
        curve: curve,
        onEnd: onEnd,
        child: this,
      );

  /// Wraps this widget in an [AnimatedRotation].
  Widget animatedRotation({
    Key? key,
    required double turns,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    VoidCallback? onEnd,
  }) =>
      AnimatedRotation(
        key: key,
        turns: turns,
        duration: duration,
        curve: curve,
        onEnd: onEnd,
        child: this,
      );

  /// Wraps this widget in an [AnimatedSize].
  Widget animatedSize({
    Key? key,
    Duration duration = const Duration(milliseconds: 300),
    Curve curve = Curves.easeInOut,
    AlignmentGeometry alignment = Alignment.center,
  }) =>
      AnimatedSize(
        key: key,
        duration: duration,
        curve: curve,
        alignment: alignment,
        child: this,
      );
}
