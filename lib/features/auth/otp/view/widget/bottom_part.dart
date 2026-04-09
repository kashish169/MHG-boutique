import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/app_colors.dart';
import '../../controller/otp_controller.dart';

class OtpBottomPart extends StatelessWidget {
  const OtpBottomPart({super.key});
  @override
  Widget build(BuildContext context) {
    OtpController controller = Get.find();
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Didn’t receive code?',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Obx(() => TextButton(
              onPressed: () {
                controller.resendCode();
              },
              child: Text(
                "Resend code",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: controller.times == 0
                          ? AppColors.red
                          : AppColors.darkGrey2.withOpacity(.5),
                    ),
              )))
        ],
      ),
    );
  }
}
