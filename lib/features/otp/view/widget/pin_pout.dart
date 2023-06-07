import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../constants/app_colors.dart';
import 'otp_theme.dart';

class PinPoutView extends StatelessWidget {
  const PinPoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyWith(
        textStyle: TextStyle(
          fontSize: 22,
          color: AppColors.white,
        ),
        decoration: defaultPinTheme.decoration!.copyWith(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(55),
        ),
      ),
      submittedPinTheme: defaultPinTheme,
      validator: (s) {
        return s;
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }
}
