import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_colors.dart';
import '../../controller/otp_controller.dart';

class OtpBottomPart extends StatelessWidget {
  OtpBottomPart({super.key});
  OtpController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Didn’t receive code?',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            TextButton(
                onPressed: () {
                  controller.resendCode();
                },
                child: Text("Resend code",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColors.red)))
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
