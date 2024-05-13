import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/view/widgets/home_video_test_widget.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/widgets/dynamic_grid_view.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../products_page/view/pages/product_page.dart';
import '../../controller/home_controller.dart';

class HomeMiddleSectionWidget extends StatelessWidget {
  const HomeMiddleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Visibility(
      visible: controller.middleSectionList.isEmpty ? false : true,
      child: Column(
        children: [
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              if (controller.middleSectionMainBrandId != null) {
                log("BY_BRAND_ID");
                Get.toNamed(
                  ProductsPage.routeName,
                  arguments: {
                    'brandId': controller.middleSectionMainBrandId,
                  },
                );
                return;
              }
              if (controller.middleSectionMainProductId != null) {
                log("BY_PRODUCT_ID");
                Get.toNamed(
                  ProductDetailsPage.routeName,
                  arguments: {
                    "id": controller.middleSectionMainProductId,
                    "fromArrival": false,
                    "name": controller.middleSectionMainTitle
                  },
                );
                return;
              }
              if (controller.middleSectionMainCategoryId != null) {
                log("BY_CATEGORY");
                Get.toNamed(
                  ProductsPage.routeName,
                  arguments: {
                    "categoryId": controller.middleSectionMainCategoryId,
                  },
                );
              }
            },
            child: controller.middleSectionMainVideo.value.isNotEmpty
                ? HomeVideoTestWidget(
                    videoLink: controller.middleSectionMainVideo.value,
                    height: MediaQuery.of(context).size.height * 2 / 2.6)
                : Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      NetImage(
                        image: controller.middleSectionMainImage.value,
                        height: AppDimensions.screenWidth(context) * 0.95,
                        width: AppDimensions.screenWidth(context),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 4),
                        child: Text(
                          controller.middleSectionMainTitle.value.toUpperCase(),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.white,
                                fontSize: 14,
                              ),
                        ),
                      ),
                    ],
                  ),
          ),
          DynamicGridView(
            padding: const EdgeInsetsDirectional.all(8),
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            itemCount: controller.middleSectionList.length,
            builder: (ctx, index) {
              return InkWell(
                onTap: () {
                  log("brand id:${controller.middleSectionList[index].brandId}");

                  if (controller.middleSectionList[index].brandId != null) {
                    log("BY_BRAND_ID");
                    Get.toNamed(
                      ProductsPage.routeName,
                      arguments: {
                        'brandId': controller.middleSectionList[index].brandId,
                      },
                    );
                    return;
                  }
                  if (controller.middleSectionList[index].productId != null) {
                    log("BY_PRODUCT_ID");
                    Get.toNamed(
                      ProductDetailsPage.routeName,
                      arguments: {
                        "id": controller.middleSectionList[index].productId,
                        "fromArrival": false,
                        "name": controller.middleSectionList[index].enTitle
                      },
                    );
                    return;
                  }
                  if (controller.middleSectionList[index].categoryId != null) {
                    log("BY_CATEGORY");
                    Get.toNamed(
                      ProductsPage.routeName,
                      arguments: {
                        "categoryId":
                            controller.middleSectionList[index].categoryId,
                      },
                    );
                  }
                },
                child: controller.middleSectionList[index].brand?.videoLink !=
                        null
                    ? HomeVideoTestWidget(
                        videoLink: controller
                            .middleSectionList[index].brand!.videoLink!,
                        height: AppDimensions.screenWidth(context) * 0.6)
                    : Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          NetImage(
                            image:
                                controller.middleSectionList[index].imageLink,
                            height: AppDimensions.screenWidth(context) * 0.6,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 4),
                            child: Text(
                              "${controller.middleSectionList[index].enTitle}"
                                  .toUpperCase(),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: AppColors.white,
                                    fontSize: 14,
                                  ),
                            ),
                          ),
                        ],
                      ),
              );
            },
          ),
        ],
      ),
    );
  }
}
