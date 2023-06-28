import 'dart:async';
import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';

class OtpController extends GetxController {
  VerificationController verificationController =
      Get.put(VerificationController());
  Timer? timer;
  int remainingSeconds = 1;
  RxInt times = 30.obs;

  void startTimer(int seconds) {
    times.value = 30;
    const duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    timer = Timer.periodic(duration, (time) {
      if (remainingSeconds == 0) {
        times.value = remainingSeconds;
        time.cancel();
        update();
      } else {
        times.value = remainingSeconds;
        remainingSeconds--;
        update();
      }
    });
    update();
  }

  void resendCode() {
    if (times == 0) {
      startTimer(30);
      verificationController.sendOtpCode();
    }
  }

  @override
  void onReady() {
    startTimer(30);
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
