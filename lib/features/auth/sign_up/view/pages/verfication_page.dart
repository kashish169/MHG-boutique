import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/auth/sign_up/controller/sign_up_controller.dart';
import 'package:mhg/features/auth/signin/view/widget/country_button_pick.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../constants/app_assets.dart';


import 'package:get/get.dart';

class VerificationPage extends StatelessWidget {
  static String routeName = '/verification';
  const VerificationPage({super.key});

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
                        "Verify Phone Number",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.black,
                            fontSize: 22),
                      ),
                      SizedBox(height:  AppDimensions.screenHeight(context) / 20,),
                      Text(
                        "We have sent you 4 digit code to verify \nyour phone number",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall

                      ),
                      SizedBox(height:  AppDimensions.screenHeight(context) / 10,),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
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
                        child: PrimaryButton(title: 'Continue',
                          height: 50,
                          width: double.infinity,
                          color: const Color(0XFF232323),

                          onTap: () {  },),),


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
