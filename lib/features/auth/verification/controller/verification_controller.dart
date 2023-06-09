import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/controller/sign_in_controller.dart';
import 'package:pinput/pinput.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../../../widgets/show_snack_bar.dart';

class VerificationController extends GetxController {
  final signInController = Get.find<SignInController>();
  RxBool isLoading = false.obs;
  String verificationIdCode = '';
  final TextEditingController codeController = TextEditingController();
  final smartAuth = SmartAuth();
  FirebaseAuth auth = FirebaseAuth.instance;
  String smsCode = '';
  RxInt timerValue = 60.obs;
  late Timer timer;

  void codetimeout() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (timerValue.value == 0) {
          timer.cancel();
        } else {
          timerValue.value--;
        }
      },
    );
  }

  Future<void> sendOtpCode() async {
    String phoneNumber =
        signInController.countryCode + signInController.phone.text.trim();
    log('___PhoneNumber is : $phoneNumber');
    isLoading(true);
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 30),
      verificationCompleted: (PhoneAuthCredential authCredential) async {
        print('${authCredential.smsCode}');
      },
      verificationFailed: (FirebaseAuthException authException) {
        isLoading(false);
        print("${authException.message}");
        showSnackBar("${authException.message}");
      },
      codeSent: (String code, int? forceResendingToken) async {
        isLoading(false);
        verificationIdCode = code;
        print("verificationId is $code");
        if (Platform.isAndroid) {
          var appSignature = SmsAutoFill().getAppSignature;
          log("appSignature $appSignature");
          await SmsAutoFill().listenForCode();
        }
      },
      codeAutoRetrievalTimeout: (String code) {
        isLoading(false);
        verificationIdCode = code;
        print("verificationId is $code");
        print("Timout");
      },
    );
  }

  Future signInWithCredential(String sms) async {
    isLoading(true);
    var credential = PhoneAuthProvider.credential(
      verificationId: verificationIdCode,
      smsCode: sms,
    );
    log("sms is $sms");
    try {
      var result = await auth.signInWithCredential(credential);
      isLoading(false);
      if (result.user == null) {
        showSnackBar("Incorrect code");
      } else {
        signInController.signIn();
      }
    } catch (e, s) {
      isLoading(false);
      print("$e - $s");
      showSnackBar('Incorrect code');
    }
  }
}
