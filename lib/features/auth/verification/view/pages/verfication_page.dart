import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';
import 'package:mhg/features/auth/otp/view/pages/otp.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../../constants/app_assets.dart';
import 'package:get/get.dart';
import '../../../../../core/helper/app_helper.dart';
import '../widgets/verification_country_picker.dart';

class VerificationPage extends StatelessWidget {
  static String routeName = '/verification';

  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<VerificationController>(
        builder: (controller) {
          return SafeArea(
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: AppDimensions.screenHeight(context) / 10,
                    ),
                    Text(
                      "Verify Phone Number".tr,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: Colors.black, fontSize: 22),
                    ),
                    SizedBox(
                      height: AppDimensions.screenHeight(context) / 20,
                    ),
                    Text(
                        "We have sent you 6 digit code to verify \nyour phone number"
                            .tr,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displaySmall),
                    SizedBox(
                      height: AppDimensions.screenHeight(context) / 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Form(
                        key: controller.formKey,
                        child: CustomFormField(
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.phone.clear();
                            },
                            icon: Image.asset(
                              AppAssets.close,
                              height: 22,
                            ),
                          ),
                          prefixWidget: const VerificationCountryPickerWidget(),
                          inputType: TextInputType.number,
                          obscure: false,
                          controller: controller.phone,
                          validator: (val) {
                            return AppHelper.validatePhone(
                                val!, controller.countryCode.value);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 25,
                        horizontal: 25,
                      ),
                      child: PrimaryButton(
                        title: 'Continue'.tr,
                        height: 50,
                        width: double.infinity,
                        color: AppColors.secondary,
                        onTap: () {
                          var formData = controller.formKey.currentState;
                          if (formData!.validate()) {
                            Get.find<VerificationController>().sendOtpCode();
                            Get.toNamed(OtpPage.routeName,
                                arguments: {"type": "signup"});
                          }
                        },
                      ),
                    ),
                  ],
                ),
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
