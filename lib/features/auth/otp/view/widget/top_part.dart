import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/otp/controller/otp_controller.dart';
import 'package:mhg/features/auth/otp/view/widget/pin_put_field.dart';
import '../../../../../constants/app_colors.dart';

class OtpTopPart extends StatelessWidget {
  const OtpTopPart({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 22, color: AppColors.primary),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
                "OTP has been sent to your mobile\nEnter your 4 digit code here",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 15,
                      color: AppColors.label,
                    ),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 40,
            ),
            const PinPutField(),
            const SizedBox(
              height: 20,
            ),
            GetBuilder<OtpController>(builder: (controller) {
              return Text(
                controller.times < 10
                    ? "00:0${controller.times}"
                    : "00:${controller.times}",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 13,
                      color: AppColors.label,
                    ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
