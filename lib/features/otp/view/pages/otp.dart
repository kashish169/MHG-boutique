import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/features/otp/controller/otp_controller.dart';
import '../widget/bottom_part.dart';
import '../widget/top_part.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  AppAssets.arrowBack,
                  fit: BoxFit.contain,
                ),
              ))),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GetBuilder<OtpController>(
          builder: (controller) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OtpTopPart(),
              OtpBottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}
