import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
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
      visible: controller.middleSectionMainImage.isEmpty ? false : true,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(
                ProductsPage.routeName,
                arguments: {
                  'brandId': controller.middleSectionMainBrandId,
                },
              );
            },
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                NetImage(
                  image: controller.middleSectionMainImage.value,
                  height: AppDimensions.screenWidth(context) * 0.95,
                  width: AppDimensions.screenWidth(context),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                  child: Text(
                    controller.middleSectionMainTitle.value.toUpperCase(),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: AppColors.white,
                          fontSize: 16,
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
                  Get.toNamed(
                    ProductsPage.routeName,
                    arguments: {
                      'brandId': controller.middleSectionList[index].brandId,
                    },
                  );
                },
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    NetImage(
                      image: controller.middleSectionList[index].imageLink,
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
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: AppColors.white,
                                  fontSize: 16,
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
