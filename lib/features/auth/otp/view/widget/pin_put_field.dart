import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';
import 'package:pinput/pinput.dart';
import 'otp_theme.dart';

class PinPutField extends StatelessWidget {
  const PinPutField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<VerificationController>();
    return Pinput(
      length: 6,
      controller: controller.codeController,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme,
      submittedPinTheme: defaultPinTheme,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      showCursor: true,
      onCompleted: (pin) {
        try{
        if (controller.type == 'reset') {
          controller.verifyResetPasswordOtp(controller.codeController.text);
        } else {
          controller.signInWithCredential(controller.codeController.text);
        }
        }catch(e){}
      },
    );
  }
}
