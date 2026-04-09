import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/forgot_password/controller/forget_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ResetPasswordView extends StatelessWidget {
  static String routeName = 'reset_password';
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ForgetController>();
    controller.otp.text = Get.arguments;

    return Obx(() => Scaffold(
          appBar: customAppBar(context, title: 'Reset password'),
          body: ModalProgressHUD(
            inAsyncCall: controller.isLoading.value,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                    key: controller.formKey2,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 55,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: CustomFormField(
                            hint: 'New password',
                            controller: controller.newPassword,
                            inputType: TextInputType.text,
                            obscure: false,
                            validator: (val) {
                              return controller.validatePassword(val!);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: CustomFormField(
                            hint: 'Confirm new password',
                            controller: controller.confirmNewPassword,
                            inputType: TextInputType.text,
                            obscure: false,
                            validator: (val) {
                              return controller
                                  .validatePasswordConfirmation(val!);
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

                                if (controller.formKey2.currentState!
                                    .validate()) {
                                  controller.resetPaassword();
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ));
  }
}
