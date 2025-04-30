import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum Flavor {
  development,
  staging,
  production;

  static Flavor fromString(String? flavor) => Flavor.values.firstWhere(
      (e) => e.name == flavor,
      orElse: () => Flavor.development,
    );
}

Future<void> bootstrap(Widget Function() builder) async {
  final flavor = Flavor.fromString(appFlavor);

  runApp(builder());
}
