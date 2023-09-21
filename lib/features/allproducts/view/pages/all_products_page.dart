import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/allproducts/controller/all_products_controller.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../widgets/dynamic_grid_view.dart';
import '../../../home/models/product_model.dart';

class AllProductsPage extends StatelessWidget {
  static String routeName = '/all_products';


  const AllProductsPage({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.find<AllProductsController>();
    return Scaffold(
        appBar: customAppBar(context, title: 'All Products'),
        body: GetX<AllProductsController>(builder: (controller) {
          if (controller.isLoading.isTrue ||
              controller.isLoadingCategories.isTrue) {
            return const LoadingWidget();
          } else if (controller.isError.isTrue) {
            return RetryButton(onTap: () {
              controller.getProducts(null);
            });
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              controller.isLoadingList.isTrue
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Expanded(
                      child: controller.isLoading.isTrue
                          ? const Center(child: CircularProgressIndicator())
                          : RefreshIndicator(
                              onRefresh: () async {
                                // controller.searchWord = '';
                                controller.selectedScent.value = '';
                                controller.resetPaginate();
                                await controller.getProducts(null);
                              },
                              child: controller.products.isEmpty &&
                                      controller.isLoading.isFalse &&
                                      controller.isFetching.isFalse &&
                                      controller.isLoadingCategories.isTrue
                                  ? Center(
                                      child: Text(
                                        'No Results!',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                    )
                                  : DynamicGridView(
                                      padding:
                                          const EdgeInsetsDirectional.symmetric(
                                        horizontal: 20,
                                        vertical: 25,
                                      ),
                                      crossAxisCount: 2,
                                      controller: controller.scrollController,
                                      shrinkWrap: true,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10,
                                      itemCount: controller.products.length,
                                      builder: (ctx, index) {
                                        return ProductCard(
                                          model: controller.products[index],
                                        );
                                      },
                                    ),
                            ),
                    ),
              Obx(() => controller.isFetching.isTrue
                  ? const SizedBox(
                      height: 50,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox())
            ],
          );
        }));
  }
}
