import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/languages/languages.dart';
import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/features/categories/view/pages/sub_categories_page.dart';
import 'package:mhg/features/products_page/view/pages/product_page.dart';

import '../../../categories/models/menu.dart';

class HomeCategoryCard extends StatelessWidget {
  final MenuModel model;
  const HomeCategoryCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (model.categoryId == null) {
          return;
        }
        Get.toNamed(
          ProductsPage.routeName,
          arguments: {
            "categoryId": model.categoryId,
            "categoryName": isAR() ? model.enName : model.enName,
          },
        );
        // if (model.allActiveSubMenus.isEmpty) {
        //   Get.toNamed(
        //     ProductsPage.routeName,
        //     arguments: {
        //       "categoryId": model.categoryId,
        //       "categoryName": isAR() ? model.enName : model.enName,
        //     },
        //   );
        // } else {
        //   Navigator.pushNamed(context, SubCategoriesPage.routeName, arguments: [
        //     model.allActiveSubMenus,
        //     isAR() ? model.frName : model.enName
        //   ]);
        // }
      },
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: AppColors.shadow(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Text(
            isAR() ? model.frName! : model.enName!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 12,
                ),
          ),
        ),
      ),
    );
  }
}
