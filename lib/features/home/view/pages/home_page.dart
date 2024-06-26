import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/view/widgets/home_reward_box.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../../profile/controller/profile_controller.dart';
import '../../controller/home_controller.dart';
import '../widgets/home_categories_list_widget.dart';
import '../widgets/home_slider.dart';
import '../widgets/home_top_sellers_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  final profileController = Get.find<ProfileController>();
  ScrollController scrollController = ScrollController();
  bool isScrollForward = false;

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          isScrollForward = false;
        });
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          isScrollForward = true;
        });
      }
      // if (scrollController.position.atEdge) {
      //   bool isTop = scrollController.position.pixels == 0;
      //   if (isTop) {
      //     profileController.changeRewardBannerIsScrlling(false);
      //   }
      // } else {
      //   profileController.changeRewardBannerIsScrlling(true);
      // }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    profileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GetX<HomeController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const LoadingWidget();
      } else if (controller.isError.isTrue) {
        return RetryButton(onTap: () => controller.getHome());
      }
      return RefreshIndicator(
        onRefresh: () async => await controller.getHome(),
        child: Stack(
          children: [
            SingleChildScrollView(
                controller: scrollController,
                child: Column(
                    children: List.generate(
                  controller.slidersList.length,
                  (index) => Column(
                    children: [
                      HomeSlider(sliders: controller.slidersList[index]),
                      HomeCategoriesListWidget(
                          categories: controller.categories[index]),
                      HomeTopSellersWidget(
                          categoryID: controller.categoryIdsToppSeller[index],
                          topSellers: controller.topSellersList[index]),
                      //HomeShopByCategoryWidget(),
                      // HomeNewArrivelsWidget(),
                      // HomeExploreOurBrandsWidget(),
                    ],
                  ),
                ))),
            if (!isScrollForward) const HomeRewardBox()
          ],
        ),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
