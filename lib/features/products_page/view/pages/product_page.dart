import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_fonts.dart';
import 'package:mhg/features/home/view/widgets/home_reward_box.dart';
import 'package:mhg/features/home/view/widgets/home_video_test_widget.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';
import 'package:mhg/features/products_page/view/widgets/products_items_list_view.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/dynamic_grid_view.dart';
import '../../../categories/view/widgets/category_filter_button.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';
import '../../../profile/controller/profile_controller.dart';

class ProductsPage extends StatefulWidget {
  static String routeName = '/products_page';

  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final profileController = Get.find<ProfileController>();
  ScrollController scrollController = ScrollController();
  Color greeding = Colors.black;
  Color topStatusColor = Colors.black;
  Color? backGroundColor;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 200), () {
      profileController.changeRewardBannerIsScrlling(false);
    });
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (isTop) {
          greeding = Colors.black;
          topStatusColor = Colors.black;
          backGroundColor = null;
        }
      } else {
        greeding = Colors.white;
        topStatusColor = Colors.white;
        backGroundColor = AppColors.dBlack;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>?;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.black,
          )),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: Stack(
        children: [
          ListView(
            controller: scrollController,
            children: [
              Column(
                children: [
                  if (routeArgs?['video_link'] != null ||
                      routeArgs?['image_link'] != null)
                    routeArgs?['video_link'] != null
                        ? HomeVideoTestWidget(
                            videoLink: routeArgs?['video_link']!,
                            height:
                                MediaQuery.of(context).size.height * 1 / 2.2,
                          )
                        : Opacity(
                            opacity: 1,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 2.2,
                              decoration: BoxDecoration(
                                  // color: Colors.black38,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          routeArgs?['image_link']!),
                                      fit: BoxFit.contain)),
                            ),
                          ),
                  if (routeArgs?['video_link'] != null ||
                      routeArgs?['image_link'] != null)
                    Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: CategoryFilterButton(
                          isChecked: false,
                          text: 'DISCOVER MORE',
                          onPressed: () {},
                        )),
                ],
              ),
              // const ProductsCategoriesListView(),
              Padding(
                padding: const EdgeInsets.only(top: 60),
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
                            const EdgeInsets.only(right: 20, left: 20, top: 50),
                        child: Text(
                            controller.products.isEmpty
                                ? ''
                                : '${controller.products.first.brand?.enBrandName ?? ''}',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey,
                                  fontSize: 14,
                                )),
                      ),
                      // const FiltersWidget(),
                      controller.isLoadingList.isTrue
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : controller.isLoading.isTrue
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
                                          controller:
                                              controller.scrollController,
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
          HomeRewardBox(
            topStatusColor: topStatusColor,
            greeding: greeding,
            backGroundColor: backGroundColor,
            //backGroundColor: AppColors.dBlack,
          ),
        ],
      ),
    );
  }
}
