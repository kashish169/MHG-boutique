import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_comment.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/rating_widget.dart';
import 'product_details_comment_dialog.dart';

class ProductDetialsReview extends StatelessWidget {
  const ProductDetialsReview({super.key});

  @override
  Widget build(BuildContext context) {
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
                  "4.0",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColors.dBlack, fontSize: 44),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        width: 60,
                        child: RatingWidget(
                          isEnableToRate: false,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "(Reviewed By 213 Persons)",
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
          ListView.separated(
            shrinkWrap: true,
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const ProductDetailsComment(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: PrimaryButton(
              title: "Add Comment",
              onTap: () {
                Get.defaultDialog(
                  title: "Add Review",
                  titleStyle: Theme.of(context).textTheme.headline2,
                  titlePadding: const EdgeInsets.only(
                    top: 20,
                  ),
                  content: ProductDetailsCommentDialog(),
                );
              },
              height: 60,
              width: AppDimensions.screenWidth(context) * 0.8,
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
