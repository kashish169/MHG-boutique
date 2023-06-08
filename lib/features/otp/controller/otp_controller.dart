import 'dart:async';

import 'package:get/get_state_manager/get_state_manager.dart';

class OtpController extends GetxController {
  Timer? timer;
  int remainingSeconds = 1;
  int times = 25;
  startTimer(int seconds) {
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

  resendCode() {
    if (times == 0) {
      startTimer(25);
    }
  }

  @override
  void onReady() {
    startTimer(25);
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
