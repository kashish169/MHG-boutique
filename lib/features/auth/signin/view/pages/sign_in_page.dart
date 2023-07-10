import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/auth/signin/view/widget/sign_in_form.dart';
import 'package:mhg/widgets/arrow_back.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../controller/sign_in_controller.dart';
import 'package:get/get.dart';
import '../widget/bottom_sign_in.dart';
import '../widget/log_method_button.dart';

class SignInPage extends StatefulWidget {
  static String routeName = '/signIn';
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  void initState() {
    var args = Get.arguments;

    final controller = Get.find<SignInController>();
    controller.selectedCountryName = args["country"] ?? '';
    controller.firstCountryFlag.value = args["flag"] ?? '';
    controller.isGuest.value = args["is_guest"];
    controller.countryCode.value = args['country_code'] ?? '+971';
    controller.selectedCountryId = args['id'] ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignInController>();

<<<<<<< HEAD
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.white,
        extendBodyBehindAppBar: true,
        appBar: controller.isGuest.isFalse
            ? const PreferredSize(
                preferredSize: Size.zero,
                child: SizedBox(),
              )
            : AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: const ArrowBack(),
              ),
        body: GetX<SignInController>(
          builder: (controller) {
            return SingleChildScrollView(
              child: Form(
                key: controller.formKey,
                child: ModalProgressHUD(
                    inAsyncCall: controller.isLoading.value,
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Text(
                          "Login".tr,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(color: Colors.black, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        LogMethodButton(),
                        SignInForm(),
                        BottomSignIn()
                      ],
                    )),
              ),
            );
          },
        ),
=======
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: false,
      appBar: controller.isGuest.isFalse
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            )
          : AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: const ArrowBack(),
            ),
      body: GetX<SignInController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: ModalProgressHUD(
                  inAsyncCall: controller.isLoading.value,
                  child: Column(
                    children: [
                      Text(
                        "Login".tr,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.black, fontSize: 22),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      LogMethodButton(),
                      SignInForm(),
                      BottomSignIn()
                    ],
                  )),
            ),
          );
        },
>>>>>>> origin/a.nezam
      ),
    );
  }
}
