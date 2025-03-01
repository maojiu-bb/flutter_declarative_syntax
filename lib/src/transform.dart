import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxTransformModify on Widget {
  /// Applies a scale transform
  Widget scale({
    Key? key,
    required double scale,
    Offset? origin,
    AlignmentGeometry? alignment,
  }) =>
      Transform.scale(
        key: key,
        scale: scale,
        origin: origin,
        alignment: alignment ?? Alignment.center,
        child: this,
      );

  /// Applies a rotation transform
  Widget rotate({
    Key? key,
    required double angle,
    Offset? origin,
    AlignmentGeometry? alignment,
  }) =>
      Transform.rotate(
        key: key,
        angle: angle,
        origin: origin,
        alignment: alignment ?? Alignment.center,
        child: this,
      );

  /// Applies a translation transform
  Widget translate({
    Key? key,
    required Offset offset,
  }) =>
      Transform.translate(
        key: key,
        offset: offset,
        child: this,
      );
}
