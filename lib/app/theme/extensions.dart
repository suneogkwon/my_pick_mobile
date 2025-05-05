import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    Color? primary100,
    Color? primary90,
    Color? primary80,
    Color? primary70,
    Color? primary60,
    Color? primary50,
    Color? primary40,
    Color? primary30,
    Color? primary20,
  }) : primary100 = primary100 ?? const Color(0xFF0066CC),
       primary90 = primary90 ?? const Color(0xFF157DDA),
       primary80 = primary80 ?? const Color(0xFF3A95E2),
       primary70 = primary70 ?? const Color(0xFF5FADEB),
       primary60 = primary60 ?? const Color(0xFF84C5F4),
       primary50 = primary50 ?? const Color(0xFF9DCEF5),
       primary40 = primary40 ?? const Color(0xFFB6D7F6),
       primary30 = primary30 ?? const Color(0xFFD0E0F7),
       primary20 = primary20 ?? const Color(0xFFE9E9F8);

  const AppColors.dark({
    Color? primary100,
    Color? primary90,
    Color? primary80,
    Color? primary70,
    Color? primary60,
    Color? primary50,
    Color? primary40,
    Color? primary30,
    Color? primary20,
  }) : primary100 = primary100 ?? const Color(0xFF0066CC),
       primary90 = primary90 ?? const Color(0xFF157DDA),
       primary80 = primary80 ?? const Color(0xFF3A95E2),
       primary70 = primary70 ?? const Color(0xFF5FADEB),
       primary60 = primary60 ?? const Color(0xFF84C5F4),
       primary50 = primary50 ?? const Color(0xFF9DCEF5),
       primary40 = primary40 ?? const Color(0xFFB6D7F6),
       primary30 = primary30 ?? const Color(0xFFD0E0F7),
       primary20 = primary20 ?? const Color(0xFFE9E9F8);

  static AppColors of(BuildContext context) {
    return Theme.of(context).extension<AppColors>() ?? const AppColors();
  }

  final Color primary100;
  final Color primary90;
  final Color primary80;
  final Color primary70;
  final Color primary60;
  final Color primary50;
  final Color primary40;
  final Color primary30;
  final Color primary20;

  @override
  AppColors copyWith({
    Color? primary100,
    Color? primary90,
    Color? primary80,
    Color? primary70,
    Color? primary60,
    Color? primary50,
    Color? primary40,
    Color? primary30,
    Color? primary20,
  }) {
    return AppColors(
      primary100: primary100 ?? this.primary100,
      primary90: primary90 ?? this.primary90,
      primary80: primary80 ?? this.primary80,
      primary70: primary70 ?? this.primary70,
      primary60: primary60 ?? this.primary60,
      primary50: primary50 ?? this.primary50,
      primary40: primary40 ?? this.primary40,
      primary30: primary30 ?? this.primary30,
      primary20: primary20 ?? this.primary20,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primary100: Color.lerp(primary100, other.primary100, t)!,
      primary90: Color.lerp(primary90, other.primary90, t)!,
      primary80: Color.lerp(primary80, other.primary80, t)!,
      primary70: Color.lerp(primary70, other.primary70, t)!,
      primary60: Color.lerp(primary60, other.primary60, t)!,
      primary50: Color.lerp(primary50, other.primary50, t)!,
      primary40: Color.lerp(primary40, other.primary40, t)!,
      primary30: Color.lerp(primary30, other.primary30, t)!,
      primary20: Color.lerp(primary20, other.primary20, t)!,
    );
  }
}
