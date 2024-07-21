import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

extension FlutterDeclarativeSyntaxGestureModify on Widget {
  /// * Adds a tap gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onTap: The callback to invoke when the user taps on the widget.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified tap callback.
  Widget onTap(
    GestureTapCallback? onTap, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onTap: onTap,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a double tap gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onDoubleTap: The callback to invoke when the user double-taps on the widget.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified double tap callback.
  Widget onDoubleTap(
    GestureTapCallback? onDoubleTap, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onDoubleTap: onDoubleTap,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a long press gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onLongPress: The callback to invoke when the user long-presses on the widget.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified long press callback.
  Widget onLongPress(
    GestureLongPressCallback? onLongPress, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onLongPress: onLongPress,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a pan update gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onPanUpdate: The callback to invoke when the user performs a pan gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified pan update callback.
  Widget onPanUpdate(
    GestureDragUpdateCallback? onPanUpdate, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onPanUpdate: onPanUpdate,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a scale update gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onScaleUpdate: The callback to invoke when the user performs a scale gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified scale update callback.
  Widget onScaleUpdate(
    GestureScaleUpdateCallback? onScaleUpdate, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onScaleUpdate: onScaleUpdate,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a pan start gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onPanStart: The callback to invoke when the user starts a pan gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified pan start callback.
  Widget onPanStart(
    GestureDragStartCallback? onPanStart, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onPanStart: onPanStart,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a pan end gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onPanEnd: The callback to invoke when the user ends a pan gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified pan end callback.
  Widget onPanEnd(
    GestureDragEndCallback? onPanEnd, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onPanEnd: onPanEnd,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a scale start gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onScaleStart: The callback to invoke when the user starts a scale gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified scale start callback.
  Widget onScaleStart(
    GestureScaleStartCallback? onScaleStart, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onScaleStart: onScaleStart,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a scale end gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onScaleEnd: The callback to invoke when the user ends a scale gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified scale end callback.
  Widget onScaleEnd(
    GestureScaleEndCallback? onScaleEnd, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onScaleEnd: onScaleEnd,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a vertical drag update gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onVerticalDragUpdate: The callback to invoke when the user performs a vertical drag gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified vertical drag update callback.
  Widget onVerticalDragUpdate(
    GestureDragUpdateCallback? onVerticalDragUpdate, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onVerticalDragUpdate: onVerticalDragUpdate,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a horizontal drag update gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onHorizontalDragUpdate: The callback to invoke when the user performs a horizontal drag gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified horizontal drag update callback.
  Widget onHorizontalDragUpdate(
    GestureDragUpdateCallback? onHorizontalDragUpdate, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a horizontal drag start gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onHorizontalDragStart: The callback to invoke when the user starts a horizontal drag gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified horizontal drag start callback.
  Widget onHorizontalDragStart(
    GestureDragStartCallback? onHorizontalDragStart, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onHorizontalDragStart: onHorizontalDragStart,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a vertical drag start gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onVerticalDragStart: The callback to invoke when the user starts a vertical drag gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified vertical drag start callback.
  Widget onVerticalDragStart(
    GestureDragStartCallback? onVerticalDragStart, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onVerticalDragStart: onVerticalDragStart,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a horizontal drag end gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onHorizontalDragEnd: The callback to invoke when the user ends a horizontal drag gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified horizontal drag end callback.
  Widget onHorizontalDragEnd(
    GestureDragEndCallback? onHorizontalDragEnd, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onHorizontalDragEnd: onHorizontalDragEnd,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a vertical drag end gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onVerticalDragEnd: The callback to invoke when the user ends a vertical drag gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified vertical drag end callback.
  Widget onVerticalDragEnd(
    GestureDragEndCallback? onVerticalDragEnd, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onVerticalDragEnd: onVerticalDragEnd,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a secondary tap gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onSecondaryTap: The callback to invoke when the user performs a secondary tap gesture (e.g., right-click).
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified secondary tap callback.
  Widget onSecondaryTap(
    GestureTapCallback? onSecondaryTap, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onSecondaryTap: onSecondaryTap,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a tertiary tap up gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onTertiaryTapUp: The callback to invoke when the user performs a tertiary tap gesture (e.g., three-finger tap).
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified tertiary tap callback.
  Widget onTertiaryTapUp(
    GestureTapUpCallback? onTertiaryTapUp, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onTertiaryTapUp: onTertiaryTapUp,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a secondary tap down gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onSecondaryTapDown: The callback to invoke when the user performs a secondary tap down gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified secondary tap down callback.
  Widget onSecondaryTapDown(
    GestureTapDownCallback? onSecondaryTapDown, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onSecondaryTapDown: onSecondaryTapDown,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a tertiary tap down gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onTertiaryTapDown: The callback to invoke when the user performs a tertiary tap down gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified tertiary tap down callback.
  Widget onTertiaryTapDown(
    GestureTapDownCallback? onTertiaryTapDown, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onTertiaryTapDown: onTertiaryTapDown,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a secondary tap cancel gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onSecondaryTapCancel: The callback to invoke when the user performs a secondary tap cancel gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified secondary tap cancel callback.
  Widget onSecondaryTapCancel(
    GestureTapCancelCallback? onSecondaryTapCancel, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onSecondaryTapCancel: onSecondaryTapCancel,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );

  /// * Adds a tertiary tap cancel gesture callback to the [GestureDetector].
  ///
  /// - Parameters:
  ///   - onTertiaryTapCancel: The callback to invoke when the user performs a tertiary tap cancel gesture.
  ///   - key: An optional key to use for the widget.
  ///   - behavior: The hit test behavior to use. Defaults to [HitTestBehavior.opaque].
  ///   - excludeFromSemantics: Whether to exclude the widget from semantics. Defaults to false.
  ///   - dragStartBehavior: The drag start behavior. Defaults to [DragStartBehavior.start].
  ///
  /// - Returns: A [GestureDetector] widget with the specified tertiary tap cancel callback.
  Widget onTertiaryTapCancel(
    GestureTapCancelCallback? onTertiaryTapCancel, {
    Key? key,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) =>
      GestureDetector(
        key: key,
        onTertiaryTapCancel: onTertiaryTapCancel,
        behavior: behavior ?? HitTestBehavior.opaque,
        excludeFromSemantics: excludeFromSemantics,
        dragStartBehavior: dragStartBehavior,
        child: this,
      );
}
