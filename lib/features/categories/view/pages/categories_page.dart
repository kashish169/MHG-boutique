import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/categories/controller/categories_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../widgets/categoies_explore_our_brands_card.dart';
import '../widgets/category_list_tile.dart';

class CategoriesPage extends StatelessWidget {
  static String routeName = '/categories';
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetX<CategoriesController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const LoadingWidget();
      } else if (controller.isError.isTrue) {
        return RetryButton(onTap: () => controller.getCategories());
      }
      return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            for(int i=0 ;i<controller.categoriesModel.menus.length;i++)
            CategoryListTile(model: controller.categoriesModel.menus[i]),

            CategoryExploreOurBrandsWidget(),
            SizedBox(
              height: 80,
            )
          ],
        ),
      );
    });




  }
}
