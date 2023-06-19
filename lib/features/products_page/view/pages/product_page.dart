import 'dart:developer';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';
import 'package:mhg/features/products_page/view/widgets/filter_widget.dart';

import 'package:mhg/features/products_page/view/widgets/products_items_list_view.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

class ProductsPage extends StatelessWidget {
  static String routeName = '/products_page';

  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(context, title: 'Products Page'),
      body: GetX<ProductsController>(builder: (controller) {
        log(controller.scentList.toString());
        //   print(controller.products.length);
        if (controller.isLoading.isTrue) {
          return const LoadingWidget();
        } else if (controller.isError.isTrue) {
          return RetryButton(onTap: () {
            controller.getProductsTags();
            controller.getProducts(Get.arguments, null);

            controller.paginate();
          });
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductsListView(),
            const FiltersWidget(),
            Obx(() => controller.isFetching.isTrue
                ? const Center(child: CircularProgressIndicator())
                : controller.products.isEmpty
                    ? SizedBox(
                        height: 200,
                        child: Center(
                          child: Text(
                            "Nothing to show",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      )
                    : Expanded(
                        // padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: DynamicHeightGridView(
                          controller: controller.scrollController,
                          // physics: const NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          mainAxisSpacing: 25,
                          crossAxisSpacing: 5,
                          itemCount: controller.products.length,
                          builder: (ctx, index) {
                            return Center(
                                child: ProductCard(
                              model: controller.products[index],
                            ));
                          },
                        ),
                      ))
          ],
        );
      }),
    );
  }
}
