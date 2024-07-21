import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

extension FlutterDeclarativeSyntaxEffectModify on Widget {
  /// Wraps this widget in an [InkWell] with optional onTap functionality and borderRadius.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [onTap]: Function to execute on tap.
  /// - [borderRadius]: Optional border radius for the ripple effect.
  Widget inkWell({
    Key? key,
    Function()? onTap,
    double? borderRadius,
  }) =>
      Material(
        color: Colors.transparent,
        child: Ink(
          child: InkWell(
            borderRadius: borderRadius != null
                ? BorderRadius.all(
                    Radius.circular(borderRadius),
                  )
                : null,
            onTap: onTap ?? () {},
            child: this,
          ),
        ),
      );

  /// Wraps this widget in an [InkWell] with ripple effect and additional parameters.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [focusColor]: Color when the widget is in focus.
  /// - [hoverColor]: Color when the widget is hovered over.
  /// - [highlightColor]: Color when the widget is pressed.
  /// - [splashColor]: Color of the splash effect.
  /// - [splashFactory]: Factory for creating the splash effect.
  /// - [radius]: Radius of the splash effect.
  /// - [customBorder]: Custom shape for the ripple effect.
  /// - [enableFeedback]: Whether to enable feedback sounds.
  /// - [excludeFromSemantics]: Whether to exclude from semantics.
  /// - [focusNode]: FocusNode for the widget.
  /// - [canRequestFocus]: Whether the widget can request focus.
  /// - [autoFocus]: Whether the widget should autofocus.
  /// - [enable]: Whether the ripple effect is enabled.
  Widget ripple({
    Key? key,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    InteractiveInkFeatureFactory? splashFactory,
    double? radius,
    ShapeBorder? customBorder,
    bool enableFeedback = true,
    bool excludeFromSemantics = false,
    FocusNode? focusNode,
    bool canRequestFocus = true,
    bool autoFocus = false,
    bool enable = true,
  }) =>
      enable
          ? Builder(
              key: key,
              builder: (BuildContext context) {
                GestureDetector? gestures =
                    context.findAncestorWidgetOfExactType<GestureDetector>();
                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    focusColor: focusColor,
                    hoverColor: hoverColor,
                    highlightColor: highlightColor,
                    splashColor: splashColor,
                    splashFactory: splashFactory,
                    radius: radius,
                    customBorder: customBorder,
                    enableFeedback: enableFeedback,
                    excludeFromSemantics: excludeFromSemantics,
                    focusNode: focusNode,
                    canRequestFocus: canRequestFocus,
                    autofocus: autoFocus,
                    onTap: gestures?.onTap,
                    child: this,
                  ),
                );
              },
            )
          : Builder(
              key: key,
              builder: (context) => this,
            );

  /// Wraps this widget in a [SafeArea] to avoid system UI intrusions.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [top]: Whether to avoid the top system UI (default is true).
  /// - [bottom]: Whether to avoid the bottom system UI (default is true).
  /// - [left]: Whether to avoid the left system UI (default is true).
  /// - [right]: Whether to avoid the right system UI (default is true).
  Widget safeArea({
    Key? key,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
  }) =>
      SafeArea(
        key: key,
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        child: this,
      );

  /// Adds semantic label to this widget using [Semantics].
  ///
  /// Parameters:
  /// - [label]: The semantic label for the widget.
  /// - [key]: Optional key for the widget.
  Widget semanticsLabel(
    String label, {
    Key? key,
  }) =>
      Semantics.fromProperties(
        key: key,
        properties: SemanticsProperties(label: label),
        child: this,
      );

  /// Wraps this widget in a [ConstrainedBox] to set constraints.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [width]: Optional width for the widget.
  /// - [height]: Optional height for the widget.
  /// - [minWidth]: Minimum width constraint (default is 0.0).
  /// - [maxWidth]: Maximum width constraint (default is double.infinity).
  /// - [minHeight]: Minimum height constraint (default is 0.0).
  /// - [maxHeight]: Maximum height constraint (default is double.infinity).
  Widget constrained({
    Key? key,
    double? width,
    double? height,
    double minWidth = 0.0,
    double maxWidth = double.infinity,
    double minHeight = 0.0,
    double maxHeight = double.infinity,
  }) {
    BoxConstraints constraints = BoxConstraints(
      minWidth: minWidth,
      maxWidth: maxWidth,
      minHeight: minHeight,
      maxHeight: maxHeight,
    );
    constraints = (width != null || height != null)
        ? constraints.tighten(width: width, height: height)
        : constraints;
    return ConstrainedBox(
      key: key,
      constraints: constraints,
      child: this,
    );
  }

  /// Wraps this widget in an [UnconstrainedBox] to remove constraints.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [textDirection]: The text direction for the widget.
  /// - [alignment]: Alignment for the widget (default is Alignment.center).
  /// - [constrainedAxis]: Optional axis to keep constrained.
  /// - [clipBehavior]: How to clip the widget (default is Clip.none).
  Widget unconstrained({
    Key? key,
    TextDirection? textDirection,
    AlignmentGeometry alignment = Alignment.center,
    Axis? constrainedAxis,
    Clip clipBehavior = Clip.none,
  }) =>
      UnconstrainedBox(
        key: key,
        textDirection: textDirection,
        alignment: alignment,
        constrainedAxis: constrainedAxis,
        clipBehavior: clipBehavior,
        child: this,
      );
}
