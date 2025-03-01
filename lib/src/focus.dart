import 'package:flutter/material.dart';

extension FlutterDeclarativeSyntaxFocusModify on Widget {
  /// Makes widget focusable
  Widget focusable({
    Key? key,
    bool autofocus = false,
    FocusNode? focusNode,
    bool canRequestFocus = true,
    bool skipTraversal = false,
  }) =>
      Focus(
        key: key,
        autofocus: autofocus,
        focusNode: focusNode,
        canRequestFocus: canRequestFocus,
        skipTraversal: skipTraversal,
        child: this,
      );
}
