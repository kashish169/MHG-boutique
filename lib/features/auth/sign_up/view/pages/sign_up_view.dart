import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/auth/sign_up/controller/sign_up_controller.dart';
import 'package:mhg/features/auth/sign_up/view/pages/verfication_page.dart';
import 'package:mhg/features/auth/signin/view/widget/country_button_pick.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../constants/app_assets.dart';


import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  static String routeName = '/signUp';
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: GetX<SignUpController>(
        builder: (controller) {
          return SafeArea(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [ModalProgressHUD(
                  inAsyncCall: controller.isLoading.value,
                  child: Column(

                    children: [
                      SizedBox(
                        height: AppDimensions.screenHeight(context) / 10,
                      ),
                      Text(
                        "Sign up",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.black,
                            fontSize: 22),
                      ),
                      SizedBox(height:  AppDimensions.screenHeight(context) / 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: CustomFormField(
                          title: 'Full name ',
                          controller: controller.name,
                          suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(AppAssets.person,height: 18,)),
                          inputType: TextInputType.text,
                          obscure: false,

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: CustomFormField(
                          title: 'Email address',
                          controller: controller.email,
                            suffixIcon: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Image.asset(AppAssets.message,height: 18,)),
                          inputType: TextInputType.text,
                          obscure: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                        child: CustomFormField(
                          title: 'Phone Number',
                          controller: controller.phone,
                          inputType: TextInputType.number,
                          obscure: false,
                          suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(AppAssets.phone,height: 18,)),

                        ),
                      ),
                      Padding(padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25,
                      ),
                        child: PrimaryButton(title: 'Sign up',
                          height: 50,
                          width: double.infinity,
                          color: const Color(0XFF232323),

                          onTap: () {
                          Get.toNamed(VerificationPage.routeName);
                          },),),
                      Text(
                        "By continuing sign up you agree to the",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall?.copyWith(
                          color: const Color(0XFF666666),

                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: TextButton(
                          onPressed: () {

                            Get.toNamed(SignUpPage.routeName);
                          },
                          child: Text(
                              "Terms & conditions",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall?.copyWith(
                                  height: .2
                              )

                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall?.copyWith(
                                color: const Color(0XFF666666)
                            ),
                          ),
                          Flexible(

                            child: TextButton(
                              onPressed: () {

                                //  Get.toNamed('/sign_up');
                              },
                              child: Text(
                                "Sign in",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              IconButton(onPressed: (){
                Get.back();
              }, icon: const Icon(
                Icons.arrow_back,
                size: 30,
              ))],
            ),
          );
        },
      ),
    );
  }
}
