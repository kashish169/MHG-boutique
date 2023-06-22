import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/search/view/widget/search_recent_button.dart';
import 'package:mhg/widgets/loading_widget.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/retry_button.dart';
import '../../../home/view/widgets/product_card.dart';
import '../../controller/search_controller.dart';
import 'custom_search_section.dart';

class RecentSearchBody extends StatelessWidget {
  RecentSearchBody({super.key});

  final SearchingController searchingController = Get.find();
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(
      builder: (controller) => Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomSearchSection(title: " Recent Searches"),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Obx(
                () => homeController.isLoading.isTrue
                    ? const LoadingWidget()
                    : homeController.isError.isTrue
                        ? RetryButton(onTap: () => homeController.getHome())
                        : homeController.recentSearchList.isNotEmpty
                            ? SizedBox(
                                height: 45,
                                width: double.infinity,
                                child: ListView.builder(
                                  itemCount:
                                      homeController.recentSearchList.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: RecentSearchButton(
                                      title: homeController
                                          .recentSearchList[index].query,
                                      onTap: () {
                                        searchingController
                                            .onSelectRecentSearch(homeController
                                                .recentSearchList[index].query);
                                      },
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'No Recent Search!',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                              ),
              )),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => searchingController.isLoading.isTrue
                ? const LoadingWidget()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: DynamicHeightGridView(
                        itemCount: searchingController.productList.length,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 20,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        builder: (ctx, index) {
                          return ProductCard(
                              model: searchingController.productList[index],
                          isSearch: true,);
                        }),
                  ),
          ),
          Obx(
            () => searchingController.isFetching.isTrue
                ? const SizedBox(
                    height: 50,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : const SizedBox(
                    height: 20,
                  ),
          ),
          Divider(
            thickness: 1,
            color: AppColors.dividerColor,
          ),
        ],
      ),
    );
  }
}
