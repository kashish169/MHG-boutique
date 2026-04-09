import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/forgot_password/controller/forget_controller.dart';
import 'package:mhg/features/forgot_password/view/widgets/country_picker.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ForgetPasswordView extends StatelessWidget {
  static String routeName = 'forgot_password';
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ForgetController>();

    return Obx(() => Scaffold(
          appBar: customAppBar(context, title: 'Forgot password'),
          body: ModalProgressHUD(
            inAsyncCall: controller.isLoading.value,
            child: SafeArea(
              child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 55,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: CustomFormField(
                          hint: controller.type == 'email'
                              ? 'Email address'
                              : 'Phone number',
                          controller: controller.textController,
                          suffixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                controller.type == 'email'
                                    ? AppAssets.message
                                    : AppAssets.phone,
                                height: 14,
                              )),
                          prefixWidget: controller.type == 'email'
                              ? null
                              : CountryButtonPick2(),
                          inputType: controller.type == 'email'
                              ? TextInputType.text
                              : TextInputType.number,
                          obscure: false,
                          validator: (val) {
                            if (controller.type == 'email') {
                              return AppHelper.validation(
                                  val!, 1, 500, 'email');
                            } else {
                              return AppHelper.validatePhone(
                                val!,
                                controller.countryCode.value,
                              );
                            }
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
                          title: 'Submit',
                          height: 50,
                          width: double.infinity,
                          onTap: () {
                            if (controller.formKey.currentState!.validate()) {
                              AppHelper.closeKeyboard();

                              if (controller.formKey.currentState!.validate()) {
                                controller.forgetPassword();
                              }
                            }
                          },
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ));
  }
}
