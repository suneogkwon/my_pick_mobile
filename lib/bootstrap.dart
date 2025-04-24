import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> bootstrap(Widget Function() builder) async {
  final flavor = appFlavor ?? 'development';

  runApp(builder());
}
