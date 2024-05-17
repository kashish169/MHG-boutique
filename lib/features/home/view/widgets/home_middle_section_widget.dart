import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/home/view/widgets/home_video_test_widget.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
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
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.middleSectionList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10),
              child: InkWell(
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
                child: controller.middleSectionList[index].videoLink != null
                    ? HomeVideoTestWidget(
                        videoLink:
                            controller.middleSectionList[index].videoLink,
                        height: MediaQuery.of(context).size.height * 2 / 2.6)
                    : Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          NetImage(
                              image:
                                  controller.middleSectionList[index].imageLink,
                              height:
                                  MediaQuery.of(context).size.height * 1 / 2,
                              width: double.infinity),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              controller.middleSectionMainTitle.value
                                  .toUpperCase(),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 30,
                                  ),
                            ),
                          ),
                        ],
                      ),
              ),
            );
          },
        ));
  }
}
