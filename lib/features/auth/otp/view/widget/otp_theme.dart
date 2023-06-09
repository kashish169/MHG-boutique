import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../../constants/app_colors.dart';

final defaultPinTheme = PinTheme(
  width: 45,
  height: 45,
  padding: const EdgeInsets.all(5),
  margin: const EdgeInsets.symmetric(horizontal: 7),
  textStyle: TextStyle(
    fontSize: 22,
    color: AppColors.primary,
  ),
  decoration: BoxDecoration(
    color: AppColors.lightGray,
    borderRadius: BorderRadius.circular(55),
    border: Border.all(color: Colors.transparent),
  ),
);
