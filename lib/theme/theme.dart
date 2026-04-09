import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mhg/constants/app_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData.light().copyWith(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.primary,
      primary: AppColors.primary,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.primary),
      centerTitle: true,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 28,
        color: AppColors.label,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.Century_Gothic,
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        color: AppColors.label,
        fontWeight: FontWeight.w600,
        fontFamily: AppFonts.Century_Gothic,
      ),
      displaySmall: TextStyle(
        fontSize: 13,
        color: AppColors.label,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.Century_Gothic,
      ),
    ),
    // datePickerTheme:
    //     DatePickerThemeData(yearStyle: TextStyle(color: AppColors.label)),
  );
}
