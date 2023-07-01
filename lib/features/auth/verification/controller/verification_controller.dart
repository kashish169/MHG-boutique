import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:country_picker/country_picker.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/auth/sign_up/controller/sign_up_controller.dart';
import 'package:mhg/features/auth/signin/controller/sign_in_controller.dart';
import 'package:mhg/features/auth/verification/repository/verification_repo_impl.dart';
import 'package:mhg/features/auth/verification/repository/verification_repository.dart';
import 'package:pinput/pinput.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../../../constants/app_assets.dart';
import '../../../../widgets/show_snack_bar.dart';

class VerificationController extends GetxController {
  final signInController = Get.find<SignInController>();
  final signUpController = Get.find<SignUpController>();

  late VerificationRepo verificationRepo;

  VerificationController() {
    verificationRepo = Get.find<VerificationRepoImpl>();
  }

  RxBool isLoading = false.obs;
  String verificationIdCode = '';
  final TextEditingController codeController = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final smartAuth = SmartAuth();
  FirebaseAuth auth = FirebaseAuth.instance;
  String smsCode = '';
  RxInt timerValue = 60.obs;
  late Timer timer;
  String type = '';
  RxString countryCode = '+971'.obs;
  RxString countryFlag = AppAssets.flag.obs;
  RxString firstCountryFlag = ''.obs;

  @override
  void onInit() {
    var args = Get.arguments;
    type = args["type"];
    if (signUpController.firstCountryFlag.isNotEmpty) {
      firstCountryFlag.value = signUpController.firstCountryFlag.value;
    } else {
      countryFlag.value = signUpController.countryFlag;
    }
    countryCode.value = args["countryCode"];
    var phoneNumber = args["phone"];
     phone.setText(phoneNumber);
    log("countryCode ${countryCode.value}");
    log("PhoneNumber $phoneNumber");
    log("Type $type");
    if (type == 'signin') {
      sendOtpCode();
    }
    super.onInit();
  }

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
    String phoneNumber = countryCode.value + phone.text.trim();
    log('___PhoneNumber is : $phoneNumber');
    log('called');
    isLoading(true);
    Either<Failure, ApiResponse> results =  await verificationRepo.sendOtp(
        body: jsonEncode({"phone_number": phoneNumber}));

    isLoading(false);


    results.fold((l) {
      log(l.message);
      showSnackBar(l.message);
    }, (r) async {
      log("${r.object}");
      log('response');
      bool success = r.object['isSuccessful'];
      var message = r.object['message'];
      if (success == true) {
        if (Platform.isAndroid) {
          var appSignature = SmsAutoFill().getAppSignature;
          log("appSignature $appSignature");
          await SmsAutoFill().listenForCode();
        }
        AppToasts.successToast(r.object['data']);

      } else {
        AppToasts.errorToast(message);
      }
    });
    // await auth.verifyPhoneNumber(
    //   phoneNumber: phoneNumber,
    //   timeout: const Duration(seconds: 30),
    //   verificationCompleted: (PhoneAuthCredential authCredential) async {
    //     print('${authCredential.smsCode}');
    //   },
    //   verificationFailed: (FirebaseAuthException authException) {
    //     isLoading(false);
    //     print("${authException.message}");
    //     showSnackBar("${authException.message}");
    //   },
    //   codeSent: (String code, int? forceResendingToken) async {
    //     isLoading(false);
    //     verificationIdCode = code;
    //     print("verificationId is $code");
    //     if (Platform.isAndroid) {
    //       var appSignature = SmsAutoFill().getAppSignature;
    //       log("appSignature $appSignature");
    //       await SmsAutoFill().listenForCode();
    //     }
    //   },
    //   codeAutoRetrievalTimeout: (String code) {
    //     isLoading(false);
    //     verificationIdCode = code;
    //     print("verificationId is $code");
    //     print("Timout");
    //   },
    // );
  }

  Future signInWithCredential(String sms) async {
    if (type == 'signin') {
      signInController.signIn(verificationCode: sms,phone:countryCode + phone.text.trim());
    } else {
      signUpController.signUp(verificationCode: sms,phone:countryCode + phone.text.trim());
    }
    // isLoading(true);
    // var credential = PhoneAuthProvider.credential(
    //   verificationId: verificationIdCode,
    //   smsCode: sms,
    // );
    // log("sms is $sms");
    // try {
    //   var result = await auth.signInWithCredential(credential);
    //   isLoading(false);
    //   if (result.user == null) {
    //     AppToasts.errorToast("Incorrect code");
    //   } else {
    //     Get.back();
    //     Get.back();
    //     if (type == 'signin') {
    //       signInController.signIn();
    //     } else {
    //       signUpController.signUp();
    //     }
    //   }
    // } catch (e, s) {
    //   isLoading(false);
    //   print("$e - $s");
    //   showSnackBar('Incorrect code');
    // }
  }

  selectCountry(Country country) {
    countryFlag.value = country.flagEmoji;
    countryCode.value = "+${country.phoneCode}";
    log("+${country.phoneCode}");
    update();
  }
}
