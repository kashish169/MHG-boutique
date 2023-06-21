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
        return SingleChildScrollView(
          controller: controller.scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductsListView(),
              const FiltersWidget(),
              Obx(() => controller.isLoading.isTrue
                  ? const Center(child: CircularProgressIndicator())
                  : controller.products.isEmpty &&controller.isFetching.isFalse
                      ? InkWell(
                          onTap: () async {
                            controller.searchWord = '';
                            controller.selectedScent.value = '';
                            await controller.getProducts(
                                Get.arguments, controller.searchWord);
                          },
                          child: SizedBox(
                            height: 200,
                            child: Center(
                              child: Text(
                                "Nothing to show,Click to show all Products",
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                          ),
                        )
                      : RefreshIndicator(
                          onRefresh: () async {
                            controller.searchWord = '';
                            controller.selectedScent.value = '';
                            await controller.getProducts(
                                Get.arguments, controller.searchWord);
                          },
                          child: DynamicHeightGridView(
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 5,
                            itemCount: controller.products.length,
                            builder: (ctx, index) {
                              return Center(
                                  child: ProductCard(
                                model: controller.products[index],
                              ));
                            },
                          ),
                        )),
              Obx(() => controller.isFetching.isTrue
                  ? SizedBox(
                      height: 50,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox())
            ],
          ),
        );
      }),
    );
  }
}
