import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/product_details/controller/product_details_controller.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:mhg/widgets/rating_widget.dart';

class ProductAddReviewDialog extends StatelessWidget {
  final int productId;
  const ProductAddReviewDialog({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsController>();
    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(children: [
              RatingWidget(
                boxSize: AppDimensions.screenWidth(context) * 0.7,
                starSize: AppDimensions.screenWidth(context) * 0.1,
                isEnableToRate: true,
                onRatingUpdate: (rate) {
                  controller.ratingValue = rate;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormField(
                controller: controller.reviewNote,
                obscure: false,
                multiLine: true,
                hint: 'Write Your Review Here ...'.tr,
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
                          height: 44,
                          reverseColor: true,
                          isSelcted: true,
                          title: "Cancel".tr,
                          onTap: () {
                            controller.reviewNote.clear();
                            Get.back();
                          }),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: PrimaryButton(
                        height: 44,
                        title: "Send".tr,
                        color: AppColors.secondary,
                        onTap: () {
                          controller.addReview(
                            productId: productId,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
