import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/languages/languages.dart';
import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/features/categories/view/pages/sub_categories_page.dart';
import 'package:mhg/features/products_page/view/pages/product_page.dart';
import 'package:mhg/widgets/net_image.dart';

class HomeCategoryCard extends StatelessWidget {
  final Menu model;
  const HomeCategoryCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (model.categoryId == null && model.allActiveSubMenus.isEmpty) {
          return;
        }
        if (model.allActiveSubMenus.isEmpty) {
          Get.toNamed(
            ProductsPage.routeName,
            arguments: {
              "categoryId": model.categoryId,
              "categoryName": isAR() ? model.enName : model.enName,
            },
          );
        } else {
          Navigator.pushNamed(context, SubCategoriesPage.routeName, arguments: [
            model.allActiveSubMenus,
            isAR() ? model.frName : model.enName
          ]);
        }
      },
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: AppColors.shadow(0.2),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                isAR() ? model.frName : model.enName,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 12,
                    ),
              ),
            ),
            const SizedBox(width: 4),
            NetImage(
              image: model.imageLink,
              height: 45,
              width: 35,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
