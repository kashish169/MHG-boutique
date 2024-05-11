import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/categories/controller/categories_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../profile/controller/profile_controller.dart';
import '../widgets/category_filter_button.dart';
import '../widgets/category_list_tile.dart';
import 'brands_page.dart';

class CategoriesPage extends StatefulWidget {
  static String routeName = '/categories';
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int indexChosen = 0;
  final profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return GetX<CategoriesController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const LoadingWidget();
      } else if (controller.isError.isTrue) {
        return RetryButton(onTap: () {
          controller.getCategories();
          controller.getBrands();
        });
      }
      return SingleChildScrollView(
          child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryFilterButton(
                text: 'SHOB BY BRAND',
                onPressed: () {
                  setState(() {
                    indexChosen = 0;
                  });
                },
                isChecked: indexChosen == 0,
              ),
              const Padding(padding: EdgeInsets.only(right: 5)),
              CategoryFilterButton(
                text: 'SHOB BY CATEGORY',
                onPressed: () {
                  setState(() {
                    indexChosen = 1;
                  });
                },
                isChecked: indexChosen == 1,
              )
            ],
          ),
          indexChosen == 1
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.categoriesModel.menus.length,
                  itemBuilder: (context, index) {
                    return CategoryListTile(
                      model: controller.categoriesModel.menus[index],
                    );
                  })
              : BrandsPage(brands: controller.brands),
          //  const HomeExploreOurBrandsWidget(),
        ],
      ));
    });
  }
}
