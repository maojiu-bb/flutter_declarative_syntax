import 'package:flutter/widgets.dart';

/// Extension on [List] to check if it contains a specified value.
///
/// This extension method adds a `hasValue` function to the [List] class,
/// allowing you to check if a specific value exists within the list.
///
/// Example:
/// ```dart
/// List<int> numberList = [1, 2, 3];
/// bool result = numberList.hasValue(1);
/// print(result); // true
/// ```
///
/// This method can be used with any list type, as shown below:
/// ```dart
/// List<String> stringList = ['apple', 'banana', 'cherry'];
/// bool result = stringList.hasValue('banana');
/// print(result); // true
/// ```
///
/// - Parameter value: The value to search for in the list.
/// - Returns: `true` if the value is found in the list, `false` otherwise.
extension FlutterDeclarativeSyntaxListModify<T> on List<T> {
  /// Checks if the list contains the specified [value].
  ///
  /// - Parameter value: The value to search for in the list.
  /// - Returns: `true` if the value is found in the list, `false` otherwise.
  bool hasValue(T value) {
    if (isNotEmpty) {
      if (indexWhere((element) => element == value) != -1) {
        return true;
      }
    }
    return false;
  }
}

/// Extension on [List<Widget>] to convert it into various Flutter widgets.
extension FlutterDeclarativeSyntaxListWidgetModify on List<Widget> {
  /// Converts the list of widgets to a [Row].
  ///
  /// - Parameters:
  ///   - key: An optional key for the [Row].
  ///   - mainAxisAlignment: How the children should be placed along the main axis.
  ///   - mainAxisSize: How much space the [Row] should occupy in the main axis.
  ///   - crossAxisAlignment: How the children should be placed along the cross axis.
  ///   - textDirection: The text direction to use when placing children.
  ///   - verticalDirection: The vertical direction to use when placing children.
  ///   - textBaseline: The text baseline to use when aligning text.
  ///   - children: An optional widget to interleave between the children.
  ///
  /// - Returns: A [Row] widget containing the list's elements and optionally interleaved children.
  Widget toRow({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Widget? children,
  }) =>
      Row(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: children != null && length > 0
            ? (expand((element) => [element, children]).toList()..removeLast())
            : this,
      );

  /// Converts the list of widgets to a [Column].
  ///
  /// - Parameters:
  ///   - key: An optional key for the [Column].
  ///   - mainAxisAlignment: How the children should be placed along the main axis.
  ///   - mainAxisSize: How much space the [Column] should occupy in the main axis.
  ///   - crossAxisAlignment: How the children should be placed along the cross axis.
  ///   - textDirection: The text direction to use when placing children.
  ///   - verticalDirection: The vertical direction to use when placing children.
  ///   - textBaseline: The text baseline to use when aligning text.
  ///   - children: An optional widget to interleave between the children.
  ///
  /// - Returns: A [Column] widget containing the list's elements and optionally interleaved children.
  Widget toColumn({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Widget? children,
  }) =>
      Column(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: children != null && length > 0
            ? (expand((element) => [element, children]).toList()..removeLast())
            : this,
      );

  /// Converts the list of widgets to a [Stack].
  ///
  /// - Parameters:
  ///   - key: An optional key for the [Stack].
  ///   - alignment: How the children should be aligned within the stack.
  ///   - textDirection: The text direction to use when aligning children.
  ///   - fit: How the children should be sized to fit within the stack.
  ///   - clipBehavior: Whether to clip the children to the stack's bounds.
  ///
  /// - Returns: A [Stack] widget containing the list's elements.
  Widget toStack({
    Key? key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      Stack(
        key: key,
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
        children: this,
      );

  /// Converts the list of widgets to a [ListView].
  ///
  /// - Parameters:
  ///   - key: An optional key for the [ListView].
  ///   - scrollDirection: The axis along which the list should scroll.
  ///   - scrollController: An optional controller for the list's scrollable widget.
  ///
  /// - Returns: A [ListView] widget containing the list's elements.
  Widget toListView({
    Key? key,
    Axis scrollDirection = Axis.vertical,
    ScrollController? scrollController,
  }) =>
      ListView(
        key: key,
        scrollDirection: scrollDirection,
        controller: scrollController,
        children: this,
      );
}
