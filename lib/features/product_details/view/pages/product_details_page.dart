import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/product_details/controller/product_details_controller.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_brand_card.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_info_card.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_slider.dart';
import 'package:mhg/features/product_details/view/widgets/similar_products.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/divider_widget.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';

class ProductDetailsPage extends StatelessWidget {
  static String routeName = '/product_details';
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ProductDetailsController>(builder: (controller) {
      return Scaffold(
        appBar: customAppBar(context, title: controller.productName.value),
        body: Obx(() {
          if (controller.isLoading.isTrue) {
            return const LoadingWidget();
          } else if (controller.isError.isTrue) {
            return RetryButton(onTap: () => controller.getProductDetails());
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ProductDetailsSlider(),
                ProductDetailsBrandCard(),
                DividerWidget(),
                ProductDetailsInfoCard(),
                SimilarProductsWidget(),
                SizedBox(height: 20)
              ],
            ),
          );
        }),
      );
    });
  }
}
