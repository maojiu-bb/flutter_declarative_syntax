import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

extension FlutterDeclarativeSyntaxScrollModify on Widget {
  /// Wraps this widget in a [SingleChildScrollView] to make it scrollable.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [scrollDirection]: The axis along which the scroll view scrolls (default is vertical).
  /// - [reverse]: Whether the scroll view scrolls in the reverse direction (default is false).
  /// - [primary]: Whether this is the primary scroll view associated with the parent primary scroll controller.
  /// - [physics]: How the scroll view should respond to user input.
  /// - [controller]: A controller for the scroll view.
  /// - [dragStartBehavior]: Determines when a drag is detected (default is DragStartBehavior.start).
  /// - [padding]: Insets to add around the scrollable content.
  Widget scrollable({
    Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    bool? primary,
    ScrollPhysics? physics,
    ScrollController? controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    EdgeInsetsGeometry? padding,
  }) =>
      SingleChildScrollView(
        key: key,
        scrollDirection: scrollDirection,
        reverse: reverse,
        primary: primary,
        physics: physics,
        controller: controller,
        dragStartBehavior: dragStartBehavior,
        padding: padding,
        child: this,
      );
}
