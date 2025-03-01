import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxThemeModify on Widget {
  /// Applies a custom theme to this widget.
  ///
  /// Parameters:
  /// - [key]: Optional key for the widget.
  /// - [theme]: The theme data to apply.
  Widget withTheme({
    Key? key,
    required ThemeData theme,
  }) =>
      Theme(
        key: key,
        data: theme,
        child: this,
      );

  /// Applies a primary color to this widget's theme.
  ///
  /// Parameters:
  /// - [color]: The primary color to apply.
  Widget withPrimaryColor(Color color) =>
      withTheme(theme: ThemeData(primaryColor: color));

  /// Applies a brightness mode to this widget's theme.
  ///
  /// Parameters:
  /// - [brightness]: The brightness mode to apply (light or dark).
  Widget withBrightness(Brightness brightness) =>
      withTheme(theme: ThemeData(brightness: brightness));

  /// Applies a text theme to this widget's theme.
  ///
  /// Parameters:
  /// - [textTheme]: The text theme to apply.
  Widget withTextTheme(TextTheme textTheme) =>
      withTheme(theme: ThemeData(textTheme: textTheme));

  /// Applies a custom font family to this widget's theme.
  ///
  /// Parameters:
  /// - [fontFamily]: The name of the font family to apply.
  Widget withFontFamily(String fontFamily) =>
      withTheme(theme: ThemeData(fontFamily: fontFamily));
}
