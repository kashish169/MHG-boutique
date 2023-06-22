import 'dart:async';
import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';

class OtpController extends GetxController {
  VerificationController verificationController =
      Get.put(VerificationController());
  Timer? timer;
  int remainingSeconds = 1;
  int times = 60;

  void startTimer(int seconds) {
    times = 60;
    const duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    timer = Timer.periodic(duration, (time) {
      if (remainingSeconds == 0) {
        times = remainingSeconds;
        time.cancel();
        update();
      } else {
        times = remainingSeconds;
        remainingSeconds--;
        update();
      }
    });
    update();
  }

  void resendCode() {
    if (times == 0) {
      startTimer(60);
      verificationController.sendOtpCode();
    }
  }

  @override
  void onReady() {
    startTimer(60);
    super.onReady();
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.onClose();
  }
}
