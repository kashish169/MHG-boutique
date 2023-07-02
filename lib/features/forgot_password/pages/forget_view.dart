import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';


import '../controller/forget_controller.dart';

class ForgetPasswordView extends StatelessWidget {
  static String routeName='forgot_password';
  const ForgetPasswordView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final  controller = Get.find<ForgetController>();

    return Obx(()=>Scaffold(
      appBar: customAppBar(context, title: 'Forgot password'),
      body: ModalProgressHUD(
        inAsyncCall: controller.isLoading.value,
        child: SafeArea(
          child: Form(
            key: controller.formKey,
            child:Column(
              children: [
                const SizedBox(
                  height: 55,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  child: CustomFormField(
                    hint: 'Email address',
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

                        if (controller.formKey.currentState!
                            .validate()) {
                          controller.forgetPassword();
                        }
                      }
                    },
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    ));
  }
}
