import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Widget useAutomaticKeepAliveWidget({
  bool wantKeepAlive = true,
  required Widget child,
}) {
  return HookBuilder(
    builder: (context) {
      useAutomaticKeepAlive(wantKeepAlive: wantKeepAlive);

      return child;
    },
  );
}
