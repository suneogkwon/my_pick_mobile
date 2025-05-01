import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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

  await GoogleFonts.pendingFonts([GoogleFonts.ibmPlexSansKrTextTheme()]);

  runApp(builder());
}
