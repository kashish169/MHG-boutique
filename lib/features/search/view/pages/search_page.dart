import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/search/controller/search_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../widget/custom_search_section.dart';
import '../widget/recent_search_body.dart';
import '../widget/search_top_sells_body.dart';
import '../widget/search_form.dart';
import '../widget/search_item_wish_list_body.dart';
import '../widget/search_top_sellers.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.find<SearchingController>();
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
            const SearchTopSellers(),
            Container(
              color: AppColors.white2,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const SearchTopSellsBody()),
            ),
            const SizedBox(
              height: 5,
            ),
            const CustomSearchSection(title: " Items You've Wishlisted"),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 225,
              color: AppColors.white2,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      const SearchItemWishListBody()),
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
