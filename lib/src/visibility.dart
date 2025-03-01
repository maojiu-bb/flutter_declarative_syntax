import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxVisibilityModify on Widget {
  /// Controls widget visibility
  Widget visible(
    bool visible, {
    Key? key,
    Widget? replacement,
    bool maintainState = false,
    bool maintainAnimation = false,
    bool maintainSize = false,
    bool maintainSemantics = false,
    bool maintainInteractivity = false,
  }) =>
      Visibility(
        key: key,
        visible: visible,
        replacement: replacement ?? const SizedBox.shrink(),
        maintainState: maintainState,
        maintainAnimation: maintainAnimation,
        maintainSize: maintainSize,
        maintainSemantics: maintainSemantics,
        maintainInteractivity: maintainInteractivity,
        child: this,
      );

  /// Makes widget invisible while maintaining its space
  Widget invisible({Key? key}) => Opacity(
        key: key,
        opacity: 0,
        child: this,
      );
}
