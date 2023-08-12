import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/categories/controller/categories_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../widgets/category_list_tile.dart';

class CategoriesPage extends StatelessWidget {
  static String routeName = '/categories';
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CategoriesController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const LoadingWidget();
      } else if (controller.isError.isTrue) {
        return RetryButton(onTap: () => controller.getCategories());
      }
      return SingleChildScrollView(
          child: Column(
        children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.categoriesModel.menus.length,
              itemBuilder: (context, index) {
                return CategoryListTile(
                  model: controller.categoriesModel.menus[index],
                );
              }),
          //  const HomeExploreOurBrandsWidget(),
        ],
      ));
    });
  }
}
