import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_pick/app/theme/extensions.dart';

ThemeData get appTheme {
  var baseTheme = ThemeData.light();
  final colors = AppColors();

  return baseTheme.copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: colors.primary100),
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.ibmPlexSansKrTextTheme(baseTheme.textTheme),
    appBarTheme: AppBarTheme(
      shape: Border(bottom: BorderSide(color: colors.primary30)),
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      titleTextStyle: GoogleFonts.ibmPlexSansKr(
        fontSize: 20,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      selectedItemColor: colors.primary60,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colors.primary100),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey.shade500),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: baseTheme.colorScheme.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: baseTheme.colorScheme.error),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colors.primary30),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: colors.primary80,
        foregroundColor: Colors.white,
        minimumSize: Size(0, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: GoogleFonts.ibmPlexSansKr(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    cardTheme: CardThemeData(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      padding: EdgeInsets.zero,
      backgroundColor: Colors.white,
    ),
    extensions: [colors],
  );
}

ThemeData get appDarkTheme {
  var baseTheme = ThemeData.dark();
  final colors = AppColors.dark();

  return baseTheme.copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: colors.primary100),
    textTheme: GoogleFonts.ibmPlexSansKrTextTheme(baseTheme.textTheme),
    extensions: [colors],
  );
}
