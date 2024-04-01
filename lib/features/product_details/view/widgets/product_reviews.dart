import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
// import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_comment.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/rating_widget.dart';
import '../../../auth/signin/view/pages/sign_in_page.dart';
import '../../../mainwrapper/controller/main_wrapper_controller.dart';
import '../../controller/product_details_controller.dart';
import 'product_add_review_dialog.dart';

class ProductDetailsReview extends StatelessWidget {
  const ProductDetailsReview({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsController>();
    final mainController = Get.find<MainWrapperController>();

    return Container(
      color: AppColors.white3,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  "Reviews".tr,
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
                    // Visibility(
                    //   visible:controller.model.avarageRate!=0,
                    //   child:  Text(
                    //   "${controller.model.avarageRate}",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .displayLarge!
                    //       .copyWith(color: AppColors.dBlack, fontSize: 44),
                    // ),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 60,
                            child: RatingWidget(
                              isEnableToRate: false,
                              initialRating: double.parse(
                                  "${controller.model.avarageRate}"),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          controller.productsReviews.length > 1
                              ? '${'(Reviewed By'.tr} ${controller.productsReviews.length} ${'People)'.tr}'
                              : '${'(Reviewed By'.tr} ${controller.productsReviews.length} ${'Persons)'.tr}',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color: AppColors.darkGrey2, fontSize: 11),
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
                itemCount: controller.productsReviews.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ProductDetailsReviewComment(
                  model: controller.productsReviews[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: PrimaryButton(
                    color: AppColors.secondary,
                    title: "Add Comment".tr,
                    onTap: () {
                      if (App.token.isEmpty) {
                        Get.toNamed(
                          SignInPage.routeName,
                          arguments: {
                            'country': App.countryName,
                            'is_guest': true,
                            'country_code':
                                mainController.globalGuestCountryCode,
                            'flag': mainController.globalGuestCountryFlag,
                            'id': mainController.globalGuestCountryId,
                          },
                        );
                        return;
                      }
                      controller.ratingValue = 3;
                      Get.defaultDialog(
                        title: "Add Review".tr,
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
          )),
    );
  }
}
