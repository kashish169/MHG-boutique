import 'dart:async';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';
import 'package:mhg/features/forgot_password/controller/forget_controller.dart';

class OtpController extends GetxController {
  VerificationController verificationController =
      Get.put(VerificationController());
  ForgetController? forgetController;
  OtpController(){log(Get.arguments.toString());
    if(Get.arguments["type"]=="reset") {
      forgetController = Get.find<ForgetController>();
    }
  }

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

    if (times.value == 0) {
      startTimer(30);



      if(verificationController.type=='reset'){
        forgetController?.forgetPassword();
      }else{
        verificationController.sendOtpCode();
      }

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
