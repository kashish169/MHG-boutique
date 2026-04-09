import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/auth/sign_up/controller/sign_up_controller.dart';

import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../constants/app_assets.dart';
import 'package:get/get.dart';
import '../../../verification/view/pages/verfication_page.dart';
import '../../../widgets/country_picker_widget.dart';

class SignUpPage extends StatefulWidget {
  static String routeName = '/signUp';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    var args = Get.arguments;
    final SignUpController controller = Get.find();
    bool firstFlag = args['isFirstFlag'];
    controller.countryCode = args['country_code'] ?? '+971';
    if (firstFlag) {
      controller.firstCountryFlag.value = args["flag"] ?? '';
    } else {
      controller.firstCountryFlag.value = '';
      controller.countryFlag = args["flag"] ?? AppAssets.flag;
    }

    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<SignUpController>(
        builder: (controller) {
          return SafeArea(
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                ModalProgressHUD(
                    inAsyncCall: controller.isLoading,
                    child: Form(
                      key: controller.formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: AppDimensions.screenHeight(context) / 10,
                            ),
                            Text(
                              "Sign Up".tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(color: Colors.black, fontSize: 22),
                            ),
                            SizedBox(
                              height: AppDimensions.screenHeight(context) / 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: CustomFormField(
                                hint: 'Full name'.tr,
                                controller: controller.name,
                                suffixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Image.asset(
                                      AppAssets.person,
                                      height: 18,
                                    )),
                                inputType: TextInputType.text,
                                obscure: false,
                                validator: (val) {
                                  return AppHelper.validation(
                                    val!,
                                    1,
                                    500,
                                    '',
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: CustomFormField(
                                hint: 'Email address'.tr,
                                controller: controller.email,
                                suffixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Image.asset(
                                      AppAssets.message,
                                      height: 14,
                                    )),
                                inputType: TextInputType.text,
                                obscure: false,
                                validator: (val) {
                                  return AppHelper.validation(
                                      val!, 1, 500, 'email');
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: CustomFormField(
                                hint: 'Phone number'.tr,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Image.asset(
                                    AppAssets.phone,
                                    height: 18,
                                  ),
                                ),
                                prefixWidget: const CountryPickerWidget(),
                                inputType: TextInputType.number,
                                obscure: false,
                                controller: controller.phone,
                                validator: (val) {
                                  return AppHelper.validatePhone(
                                      val!, controller.countryCode);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: CustomFormField(
                                hint: 'Password'.tr,
                                controller: controller.password,
                                suffixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.changeVisanility();
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Icon(
                                          controller.isVisable
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    )),
                                inputType: TextInputType.text,
                                obscure: controller.isVisable,
                                validator: (val) {
                                  return AppHelper.validatePassword(val!);
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 25,
                                horizontal: 25,
                              ),
                              child: PrimaryButton(
                                color: AppColors.secondary,
                                title: 'Sign Up'.tr,
                                height: 50,
                                width: double.infinity,
                                onTap: () {
                                  var formState =
                                      controller.formKey.currentState;
                                  if (formState!.validate()) {
                                    AppHelper.closeKeyboard();
                                    String phoneNumber =
                                        controller.phone.text.trim();
                                    Get.toNamed(
                                      VerificationPage.routeName,
                                      arguments: {
                                        "type": "signup",
                                        "countryCode": controller.countryCode,
                                        "phone": phoneNumber,
                                      },
                                    );
                                  }
                                },
                              ),
                            ),
                            Text(
                              "By continuing sign up you agree to the".tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: const Color(0XFF666666),
                                  ),
                            ),
                            MaterialButton(
                              padding: EdgeInsets.zero,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onPressed: () async {
                                await launchUrl(Uri.parse(
                                    'https://www.mhgboutique.com/pages/terms-conditions'));
                              },
                              child: Text("Terms & conditions".tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(height: .2)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?".tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                          color: const Color(0XFF666666)),
                                ),
                                Flexible(
                                  child: TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "Sign in".tr,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            color: Colors.red,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
