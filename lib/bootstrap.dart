import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_pick/core/logger/provider_logger.dart';
import 'package:my_pick/firebase_options.dart';

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

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final user = await FirebaseAuth.instance.userChanges().first;
  if (user == null) {
    await FirebaseAuth.instance.signInAnonymously();
  }

  runApp(ProviderScope(observers: [ProviderLogger()], child: builder()));
}
