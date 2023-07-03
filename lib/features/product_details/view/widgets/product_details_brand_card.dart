import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/languages/languages.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_counter_widget.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../app/app.dart';
import '../../../auth/signin/view/pages/sign_in_page.dart';
import '../../../mainwrapper/controller/main_wrapper_controller.dart';
import '../../../profile/controller/profile_controller.dart';
import '../../controller/product_details_controller.dart';

class ProductDetailsBrandCard extends StatelessWidget {
  const ProductDetailsBrandCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsController>();
    final profileController = Get.find<ProfileController>();
    final mainController = Get.find<MainWrapperController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isAR()
                ? controller.model.frProductName
                : controller.model.enProductName,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 22,
                  color: AppColors.mediumLabel,
                ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Brand: '.tr,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppColors.lightLabel2, fontSize: 16, height: 1.7),
              ),
              const SizedBox(width: 4),
              Text(
                controller.model.brand.enBrandName,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 16,
                      color: AppColors.mediumLabel,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Obx(() => Row(
                children: [
                  Visibility(
                    visible: double.parse(
                          controller.model.discount,
                        ).round() !=
                        0,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 10),
                      child: Text(
                        '${profileController.currnecy.value} ${controller.model.price}',
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.lightLabel,
                                  decoration: TextDecoration.lineThrough,
                                ),
                      ),
                    ),
                  ),
                  Text(
                    '${profileController.currnecy.value} ${controller.model.discountPrice}',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontSize: 15,
                        ),
                  ),
                ],
              )),
          const SizedBox(height: 5),
          controller.model.pts != null && controller.model.pts != 0
              ? Row(
                  children: [
                    Image.asset(
                      AppAssets.starIcon,
                      height: 17,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${controller.model.pts} pts',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 15,
                          color: AppColors.secondaryBlack,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              : SizedBox(),
          StatefulBuilder(builder: (context, setState) {
            return controller.model.inCart == 1
                ? ProductDetailsCounterWidget(
                    model: controller.model,
                  )
                : Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 15,
                    ),
                    child: Obx(() => PrimaryButton(
                          color: AppColors.secondary,
                          fontSize: 16,
                          height: 42,
                          title: 'Add to Bag'.tr,
                          isLoading: controller.isLoadingAdd.value,
                          onTap: () async {
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
                            var result = await controller.addProductToCart(
                              productId: controller.model.id,
                            );
                            if (result) {
                              controller.model.inCart = 1;
                              controller.model.cartQty = 1;
                              setState(() {});
                            }
                          },
                          width: double.infinity,
                          elevation: 0,
                        )),
                  );
          }),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
