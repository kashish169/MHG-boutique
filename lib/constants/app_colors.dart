import 'package:flutter/material.dart';

class AppColors {
  static Color primary = const Color(0xFF232323);
  static Color secondary = const Color(0xFF6E8674);
  static Color label = const Color(0xFF333333);
  static Color secondaryBlack = const Color(0xFF1B291E);
  static Color red = const Color(0xFFF15B3A);
  static Color lightLabel = const Color(0xFF9B9B9B);
  static Color lightGray = const Color(0xFFF0F0F0);
  static Color grey = Colors.grey;
  static Color green = Colors.green;
  static Color white = Colors.white;
  static List<BoxShadow> shadow = [
    BoxShadow(
      color: AppColors.primary.withOpacity(0.6),
      blurRadius: 8,
    )
  ];
}
