import 'package:flutter/material.dart';

class AppDimensions {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double viewBottomPadding(BuildContext context) {
    return MediaQuery.of(context).viewPadding.bottom;
  }

  static isSmallPhone(BuildContext context) {
    if (screenWidth(context) < 400) {
      return true;
    } else {
      return false;
    }
  }
}
