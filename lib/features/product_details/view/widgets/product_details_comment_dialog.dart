import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:mhg/widgets/rating_widget.dart';
// import '../../../../constants/app_assets.dart';

class ProductDetailsCommentDialog extends StatelessWidget {
  const ProductDetailsCommentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            // height: 250,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
                // key: controller.formKey,
                child: Column(children: [
              RatingWidget(
                  boxSize: AppDimensions.screenWidth(context) * 0.7,
                  starSize: AppDimensions.screenWidth(context) * 0.1),
              const SizedBox(
                height: 20,
              ),
              const CustomFormField(
                obscure: false,
                // isFileWhite: true,
                multiLine: true,
                hint: 'Write Your Review Here ...',
                // suffixIcon: IconButton(
                //     onPressed: () {},
                //     icon: SizedBox(
                //         height: 20,
                //         width: 20,
                //         child: Image.asset(AppAssets.sendIcon))),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: PrimaryButton(
                          color: AppColors.white,
                          height: 50,
                          reverseColor: true,
                          isSelcted: true,
                          // width: AppDimensions.screenWidth(context) * 0.6,
                          title: "Cancel",
                          onTap: () {
                            Get.back();
                          }),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: PrimaryButton(
                          height: 50,
                          // width: AppDimensions.screenWidth(context) * 0.6,
                          title: "Confirm",
                          onTap: () {}),
                    ),
                  ),
                ],
              ),
            ]))));
  }
}
