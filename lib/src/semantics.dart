import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxSemanticsModify on Widget {
  /// Adds semantic label
  Widget semanticLabel(String label) => Semantics(
        label: label,
        child: this,
      );

  /// Marks widget as button
  Widget semanticButton({String? label}) => Semantics(
        button: true,
        label: label,
        child: this,
      );

  /// Excludes widget from semantics
  Widget excludeSemantics() => ExcludeSemantics(
        child: this,
      );
}
