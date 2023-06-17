import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/search/view/widget/search_recent_button.dart';
import 'package:mhg/widgets/loading_widget.dart';

import '../../../../constants/app_colors.dart';
import '../../../home/view/widgets/product_card.dart';
import '../../controller/search_controller.dart';
import 'custom_search_section.dart';

class RecentSearchBody extends StatelessWidget {
  RecentSearchBody({super.key});
  final SearchingController searchingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(
      builder: (controller) => Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomSearchSection(title: " Recent Searaches"),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: RecentSearchButton(
                      title: "Shay Much Perfume",
                      onTap: () {},
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: RecentSearchButton(
                      title: "Eid Is Shay Gift Set",
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          searchingController.iSLoading
              ? const LoadingWidget()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                      physics: const ScrollPhysics(),
                      itemCount: searchingController.productList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 5 / 9,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return ProductCard(
                            model: searchingController.productList[index]);
                      }),
                ),
          const SizedBox(
            height: 20,
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
