import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../../profile/controller/profile_controller.dart';
import '../../controller/home_controller.dart';
import '../widgets/home_categories_list_widget.dart';
import '../widgets/home_footer_slider.dart';
import '../widgets/home_middle_section_widget.dart';
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

  @override
  void initState() {
    log('CURRENT ROUTE : ${Get.currentRoute}');
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (isTop) {
          profileController.changeRewardBannerIsScrlling(false);
        }
      } else {
        profileController.changeRewardBannerIsScrlling(true);
      }
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
        child: SingleChildScrollView(
          controller: scrollController,
          child:  Column(
            children: [
              HomeSlider(),
              HomeCategoriesListWidget(),
              HomeTopSellersWidget(),
              //HomeShopByCategoryWidget(),
              // HomeNewArrivelsWidget(),
              HomeMiddleSectionWidget(),
              HomeFooterSlider(),
              // HomeExploreOurBrandsWidget(),
            ],
          ),
        ),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
