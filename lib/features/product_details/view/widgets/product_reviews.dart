import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_comment.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/rating_widget.dart';
import '../../controller/product_details_controller.dart';
import 'product_add_review_dialog.dart';

class ProductDetailsReview extends StatelessWidget {
  const ProductDetailsReview({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsController>();

    return Container(
      color: AppColors.white3,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              "Reviews",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontSize: 16, color: AppColors.darkGrey),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${controller.model.avarageRate}",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColors.dBlack, fontSize: 44),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 60,
                        child: RatingWidget(
                          isEnableToRate: false,
                          initialRating:
                              double.parse("${controller.model.avarageRate}"),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "(Reviewed By ${controller.model.reviewsCount} Persons)",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: AppColors.darkGrey2, fontSize: 11),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Obx(() => ListView.separated(
                shrinkWrap: true,
                itemCount: controller.productsReviews.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ProductDetailsReviewComment(
                  model: controller.productsReviews[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: PrimaryButton(
                title: "Add Comment",
                onTap: () {
                  Get.defaultDialog(
                    title: "Add Review",
                    titleStyle: Theme.of(context).textTheme.headline2,
                    titlePadding: const EdgeInsets.only(
                      top: 20,
                    ),
                    content: ProductAddReviewDialog(
                      productId: controller.model.id,
                    ),
                  );
                },
                height: 40,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
