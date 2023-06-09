import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';
import 'package:mhg/features/auth/otp/controller/otp_controller.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../widgets/arrow_back.dart';
import '../widget/bottom_part.dart';
import '../widget/top_part.dart';

class OtpPage extends StatelessWidget {
  static String routeName = '/otp';
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const ArrowBack(),
      ),
      body: GetX<VerificationController>(
        builder: (controller) => ModalProgressHUD(
          inAsyncCall: controller.isLoading.value,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                OtpTopPart(),
                OtpBottomPart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
