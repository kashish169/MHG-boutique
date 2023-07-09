import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/services/deep_link_service.dart';
import 'package:mhg/features/home/view/widgets/custom_dot_swiper.dart';
import 'package:mhg/widgets/heart_widget.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../controller/product_details_controller.dart';

class ProductDetailsSlider extends StatelessWidget {
  const ProductDetailsSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsController>();
    return Stack(
      children: [
        SizedBox(
          height: 430,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return NetImage(
                image: controller.productImages[index],
              );
            },
            viewportFraction: 1,
            loop: false,
            itemCount: controller.productImages.length,
            outer: true,
            pagination: SwiperPagination(
              builder: CustomDotSwiperPaginationBuilder(
                color: AppColors.primary,
                activeColor: AppColors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 430,
          child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 60),
                child: FavouriteWidget(
                  from: 'productDetails',
                  isProductDetails: true,
                  inWishlist: controller.model.inWishlist,
                  itemId: controller.productId,
                  height: 31,
                  fromArrival: controller.fromArrival,
                ),
              )),
        ),
        Align(
            alignment: AlignmentDirectional.topEnd,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
              child: IconButton(
                onPressed: () {
                  DeepLinkSevice.shareProduct(controller.model.id);
                },
                icon: Image.asset(
                  AppAssets.upload,
                  height: 30,
                ),
              ),
            )),
      ],
    );
  }
}
