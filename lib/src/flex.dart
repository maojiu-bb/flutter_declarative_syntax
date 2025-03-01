import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxFlexModify on Widget {
  /// Wraps widget in an Expanded
  Widget expanded({
    Key? key,
    int flex = 1,
  }) =>
      Expanded(
        key: key,
        flex: flex,
        child: this,
      );

  /// Wraps widget in a Flexible
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
}
