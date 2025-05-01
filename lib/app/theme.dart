import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get appTheme {
  var baseTheme = ThemeData.light();

  return baseTheme.copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    textTheme: GoogleFonts.ibmPlexSansKrTextTheme(baseTheme.textTheme),
  );
}

ThemeData get appDarkTheme {
  var baseTheme = ThemeData.dark();

  return baseTheme.copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    textTheme: GoogleFonts.ibmPlexSansKrTextTheme(baseTheme.textTheme),
  );
}

abstract interface class AppColors {
  static const primary = Color(0xFF84C5F4);
}
