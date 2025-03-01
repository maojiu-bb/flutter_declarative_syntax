import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxUtilsModify on Widget {
  /// Conditionally builds this widget.
  Widget when(
    bool condition, {
    required Widget Function(Widget) builder,
    Widget Function(Widget)? orElse,
  }) =>
      condition ? builder(this) : (orElse?.call(this) ?? this);

  /// Builds this widget with a builder function.
  Widget build(Widget Function(Widget) builder) => builder(this);

  /// Wraps this widget with a builder that provides BuildContext.
  Widget withContext(Widget Function(BuildContext, Widget) builder) =>
      Builder(builder: (context) => builder(context, this));
}
