import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/view/widgets/home_slider.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../widgets/home_explore_our_brands_widget.dart';
import '../widgets/home_footer_slider.dart';
import '../widgets/home_middle_section_widget.dart';
import '../widgets/home_new_arrivels_widget.dart';
import '../widgets/home_shop_by_category_widget.dart';
import '../widgets/home_top_sellers_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
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
          child: Column(
            children: const [
              HomeSlider(),
              HomeTopSellersWidget(),
              //HomeShopByCategoryWidget(),
              HomeNewArrivelsWidget(),
              HomeMiddleSectionWidget(),
              HomeFooterSlider(),
             //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
              //
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
