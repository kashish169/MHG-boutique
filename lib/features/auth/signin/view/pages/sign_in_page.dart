import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/auth/sign_up/view/pages/sign_up_view.dart';
import 'package:mhg/features/auth/signin/view/widget/country_button_pick.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../constants/app_assets.dart';
import '../../controller/sign_in_controller.dart';

import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  static String routeName = '/signIn';
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: GetX<SignInController>(
        builder: (controller) {
          return ModalProgressHUD(
              inAsyncCall: controller.isLoading.value,
              child: Column(

                children: [
                  SizedBox(
                    height: AppDimensions.screenHeight(context) / 10,
                  ),
                  Text(
                    "Login",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: Colors.black,
                    fontSize: 22),
                  ),
                   Padding(
                    padding: EdgeInsets.symmetric(vertical: AppDimensions.screenHeight(context) / 20,horizontal: 20),
                    child: CustomFormField(
                      title: ' ',
                      suffixIcon: IconButton(
                        onPressed: (){},
                        icon: Image.asset(AppAssets.close,
                          height: 22,),
                      ),
                      prefixWidget: const CountryButtonPick(),
                      inputType: TextInputType.number,
                      obscure: false,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25,
                  ),
                  child: PrimaryButton(title: 'Login',
                    height: 50,
                    width: double.infinity,
                    color: const Color(0XFF232323),

                    onTap: () {  },),),

                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall?.copyWith(
                          color: const Color(0XFF666666)
                        ),
                      ),
                      TextButton(
                        onPressed: () {

                        Get.toNamed(SignUpPage.routeName);
                        },
                        child: Text(
                          "Sign Up",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: Colors.red,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }
}
