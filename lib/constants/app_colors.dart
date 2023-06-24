import 'package:flutter/material.dart';

class AppColors {
  static Color primary = const Color(0xFF232323);
  static Color secondary = const Color(0xFF6E8674);
  static Color label = const Color(0xFF333333);
  static Color secondaryBlack = const Color(0xFF1B291E);
  static Color black3 = const Color(0xFF232C39);
  static Color dBlack = const Color(0xFF101010);
  static Color darkGrey = const Color(0xFF515C6F);
  static Color darkGrey2 = const Color(0xFF8D8D8D);
  static Color veryDarkGrey = const Color(0xFF5D5C5C);
  // static Color red = const Color(0xFFF15B3A);
  static Color red = const Color(0xFFD97F76);
  static Color darkRed = const Color(0xFFF11027);
  static Color lightLabel = const Color(0xFF9B9B9B);
  static Color mediumLabel = const Color(0xFF515C6F);
  static Color lightLabel2 = const Color(0xFFB4B4B4);
  static Color dividerColor = const Color(0xFFDDDDDD);
  static Color lightGray = const Color(0xFFF0F0F0);
  static Color lightGray2 = const Color(0xFF91959C);
  static Color lightGray3 = const Color(0xFFEDF2F5);
  static Color lightGray4 = const Color(0xFFB4B4B4);
  static Color mojab = const Color(0xFFF7F1E2);
  static Color moghram = const Color(0xFFF4F4F5);
  static Color molah = const Color(0xFF1B291E);
  static Color white2 = const Color(0xFFF8F8F8);
  static Color white3 = const Color(0xFFECECEC);
  static Color grey = Colors.grey;
  static Color green = const Color(0xFF6E8674);
  static Color dGreen = const Color(0xFF1B291E);
  static Color white = Colors.white;
  static List<BoxShadow> shadow(double opacity) => [
        BoxShadow(
          color: AppColors.primary.withOpacity(opacity),
          blurRadius: 8,
        )
      ];
}
