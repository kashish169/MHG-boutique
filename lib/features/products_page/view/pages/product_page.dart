import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';
import 'package:mhg/features/products_page/view/widgets/filter_widget.dart';
import 'package:mhg/features/products_page/view/widgets/products_items_list_view.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../widgets/dynamic_grid_view.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';

class ProductsPage extends StatelessWidget {
  static String routeName = '/products_page';

  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Products'),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductsCategoriesListView(),
          Expanded(
            child: GetX<ProductsController>(builder: (controller) {
              if (controller.isLoading.isTrue ||
                  controller.isLoadingCategories.isTrue) {
                return const LoadingWidget();
              } else if (controller.isError.isTrue) {
                return RetryButton(onTap: () {
                  controller.getProductsTags();
                  controller.getProducts('');
                  controller.paginate();
                });
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FiltersWidget(),
                  controller.isLoadingList.isTrue
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Expanded(
                          child: controller.isLoading.isTrue
                              ? const Center(child: CircularProgressIndicator())
                              : RefreshIndicator(
                                  onRefresh: () async {
                                    controller.searchWord = '';
                                    controller.selectedScent.value = '';
                                    controller.resetPaginate();
                                    await controller.getProducts(
                                      controller.searchWord,
                                    );
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
                                          padding: const EdgeInsetsDirectional
                                              .symmetric(
                                            horizontal: 20,
                                            vertical: 25,
                                          ),
                                          crossAxisCount: 2,
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
            }),
          ),
        ],
      ),
    );
  }
}
