import 'package:flutter/material.dart';

extension InputDecorationExt on InputDecoration {
  InputDecoration noBorder() {
    return copyWith(
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    );
  }
}
