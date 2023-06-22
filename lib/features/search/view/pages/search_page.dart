import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/home/view/widgets/home_top_sellers_widget.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/search/controller/search_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../../home/controller/home_controller.dart';
import '../../../home/view/widgets/product_card.dart';
import '../widget/custom_search_section.dart';
import '../widget/recent_search_body.dart';
import '../widget/search_form.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final HomeController controller = Get.find();
  final HomeController homeController = Get.find();
  final WishListController wishListController = Get.find();
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchingController>();
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(
        context,
        title: "Search",
      ),
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            SearchForm(),
            RecentSearchBody(),
            GetX<HomeController>(
              builder: (homeController) => homeController.isLoading.isTrue
                  ? const LoadingWidget()
                  : homeController.isError.isTrue
                      ? RetryButton(onTap: () => homeController.getHome())
                      : homeController.topSellersList.isNotEmpty
                          ? HomeTopSellersWidget()
                          : SizedBox(
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Top Sellers is empty!',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomSearchSection(title: " Items You've Wishlisted"),
            GetX<WishListController>(
              builder: (wishListController) => wishListController
                      .isLoading.isTrue
                  ? const LoadingWidget()
                  : wishListController.isError.isTrue
                      ? RetryButton(
                          onTap: () => wishListController.getWishList())
                      : wishListController.wishListItems.isNotEmpty
                          ? Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              color: AppColors.white2,
                              width: double.infinity,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    for (var element
                                        in wishListController.wishListItems)
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 5),
                                        child: ProductCard(
                                          isWishList: true,
                                          wishListModel: element,
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            )
                          : SizedBox(
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Wish list is empty!',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ),
                            ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
              color: AppColors.dividerColor,
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
