import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxMediaQueryModify on Widget {
  /// Conditionally builds this widget based on screen width.
  ///
  /// Parameters:
  /// - [breakpoint]: The width threshold in logical pixels.
  /// - [builder]: The builder function to use when width >= breakpoint.
  /// - [orElse]: Optional builder function to use when width < breakpoint.
  Widget whenWidth(
    double breakpoint, {
    required Widget Function(BuildContext, Widget) builder,
    Widget Function(BuildContext, Widget)? orElse,
  }) =>
      Builder(
        builder: (context) {
          final width = MediaQuery.of(context).size.width;
          if (width >= breakpoint) {
            return builder(context, this);
          }
          return orElse?.call(context, this) ?? this;
        },
      );

  /// Conditionally builds this widget based on screen height.
  ///
  /// Parameters:
  /// - [breakpoint]: The height threshold in logical pixels.
  /// - [builder]: The builder function to use when height >= breakpoint.
  /// - [orElse]: Optional builder function to use when height < breakpoint.
  Widget whenHeight(
    double breakpoint, {
    required Widget Function(BuildContext, Widget) builder,
    Widget Function(BuildContext, Widget)? orElse,
  }) =>
      Builder(
        builder: (context) {
          final height = MediaQuery.of(context).size.height;
          if (height >= breakpoint) {
            return builder(context, this);
          }
          return orElse?.call(context, this) ?? this;
        },
      );

  /// Conditionally builds this widget based on device orientation.
  ///
  /// Parameters:
  /// - [portrait]: The builder function to use in portrait mode.
  /// - [landscape]: The builder function to use in landscape mode.
  Widget whenOrientation({
    required Widget Function(BuildContext, Widget) portrait,
    required Widget Function(BuildContext, Widget) landscape,
  }) =>
      Builder(
        builder: (context) {
          final orientation = MediaQuery.of(context).orientation;
          if (orientation == Orientation.portrait) {
            return portrait(context, this);
          }
          return landscape(context, this);
        },
      );

  /// Conditionally builds this widget based on platform.
  ///
  /// Parameters:
  /// - [android]: Optional builder for Android platform.
  /// - [ios]: Optional builder for iOS platform.
  /// - [web]: Optional builder for web platform.
  /// - [windows]: Optional builder for Windows platform.
  /// - [macos]: Optional builder for macOS platform.
  /// - [linux]: Optional builder for Linux platform.
  /// - [fuchsia]: Optional builder for Fuchsia platform.
  Widget whenPlatform({
    Widget Function(BuildContext, Widget)? android,
    Widget Function(BuildContext, Widget)? ios,
    Widget Function(BuildContext, Widget)? web,
    Widget Function(BuildContext, Widget)? windows,
    Widget Function(BuildContext, Widget)? macos,
    Widget Function(BuildContext, Widget)? linux,
    Widget Function(BuildContext, Widget)? fuchsia,
  }) =>
      Builder(
        builder: (context) {
          if (Theme.of(context).platform == TargetPlatform.android) {
            return android?.call(context, this) ?? this;
          } else if (Theme.of(context).platform == TargetPlatform.iOS) {
            return ios?.call(context, this) ?? this;
          } else if (Theme.of(context).platform == TargetPlatform.windows) {
            return windows?.call(context, this) ?? this;
          } else if (Theme.of(context).platform == TargetPlatform.macOS) {
            return macos?.call(context, this) ?? this;
          } else if (Theme.of(context).platform == TargetPlatform.linux) {
            return linux?.call(context, this) ?? this;
          } else if (Theme.of(context).platform == TargetPlatform.fuchsia) {
            return fuchsia?.call(context, this) ?? this;
          }
          return this;
        },
      );
}
