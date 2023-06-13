import 'package:flutter/material.dart';

class AppColors {
  static Color primary = const Color(0xFF232323);
  static Color secondary = const Color(0xFF6E8674);
  static Color label = const Color(0xFF333333);
  static Color secondaryBlack = const Color(0xFF1B291E);
  static Color black3 = const Color(0xFF232C39);
  static Color darkGrey = const Color(0xFF515C6F);
  static Color red = const Color(0xFFF15B3A);
  static Color lightLabel = const Color(0xFF9B9B9B);
  static Color lightGray = const Color(0xFFF0F0F0);
  static Color lightGray2 = const Color(0xFF91959C);
  static Color lightGray3 = const Color(0xFFEDF2F5);
  static Color lightGray4 = const Color(0xFFB4B4B4);
  static Color mojab = const Color(0xFFF7F1E2);
  static Color moghram = const Color(0xFFF4F4F5);
  static Color molah = const Color(0xFF1B291E);
  static Color white2 = const Color(0xFFF8F8F8);

  static Color grey = Colors.grey;
  static Color green = Colors.green;
  static Color white = Colors.white;
  static List<BoxShadow> shadow = [
    BoxShadow(
      color: AppColors.primary.withOpacity(0.5),
      blurRadius: 8,
    )
  ];
}
