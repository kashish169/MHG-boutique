import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/view/widgets/home_reward_box.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/features/personal_infromation/model/personal_model.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';
import 'package:mhg/features/products_page/view/widgets/filter_widget.dart';
import 'package:mhg/features/products_page/view/widgets/products_items_list_view.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/dynamic_grid_view.dart';
import '../../../categories/view/widgets/category_filter_button.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';

class ProductsPage extends StatelessWidget {
  static String routeName = '/products_page';

  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.black,
          )),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1 / 2.2,
                color: Colors.grey,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: CategoryFilterButton(
                    isChecked: false,
                    text: 'DISCOVER MORE',
                    onPressed: () {},
                  )),
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
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 28),
                        child: Text(
                          controller.categoryName ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: AppColors.black3,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                        ),
                      ),
                      // const FiltersWidget(),
                      controller.isLoadingList.isTrue
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Expanded(
                              child: controller.isLoading.isTrue
                                  ? const Center(
                                      child: CircularProgressIndicator())
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
                                              controller
                                                  .isLoadingCategories.isTrue
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
                                                  const EdgeInsetsDirectional
                                                      .symmetric(
                                                horizontal: 20,
                                                vertical: 25,
                                              ),
                                              crossAxisCount: 2,
                                              controller:
                                                  controller.scrollController,
                                              shrinkWrap: true,
                                              mainAxisSpacing: 10,
                                              crossAxisSpacing: 10,
                                              itemCount:
                                                  controller.products.length,
                                              builder: (ctx, index) {
                                                return ProductCard(
                                                  model: controller
                                                      .products[index],
                                                );
                                              },
                                            ),
                                    ),
                            ),
                      Obx(() => controller.isFetching.isTrue
                          ? const SizedBox(
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
          const HomeRewardBox(),
        ],
      ),
    );
  }
}
