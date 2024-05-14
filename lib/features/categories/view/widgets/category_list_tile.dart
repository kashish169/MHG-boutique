import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/features/categories/view/pages/sub_categories_page.dart';
import 'package:mhg/features/product_details/view/pages/product_details_page.dart';
import 'package:mhg/features/products_page/view/pages/product_page.dart';
import 'package:mhg/widgets/divider_widget.dart';

class CategoryListTile extends StatelessWidget {
  final Menu model;
  final Function()? onTap;

  const CategoryListTile({
    super.key,
    this.onTap,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    log('CATEGORY CATEGORY "${model.toJson()}');
    return InkWell(
      onTap: () {
        if (model.categoryId == null && model.allActiveSubMenus.isEmpty) {
          if (model.productId != null) {
            Get.toNamed(
              ProductDetailsPage.routeName,
              arguments: {
                "id": model.productId,
                "fromArrival": false,
                "name": model.enName
              },
            );
          }
          return;
        }
        if (model.allActiveSubMenus.isEmpty) {
          log(model.categoryId.toString());
          Get.toNamed(
            ProductsPage.routeName,
            arguments: {
              "categoryId": model.categoryId,
            },
          );
        } else {
          Navigator.pushNamed(context, SubCategoriesPage.routeName,
              arguments: [model.allActiveSubMenus, model.enName]);
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              color: AppColors.white,
              height: 50,
              child: Row(
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  Expanded(
                    child: Text(
                      model.enName.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontSize: 14),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColors.lightLabel2,
                    size: 20,
                  ),
                  const SizedBox(width: 22),
                ],
              )),
          const DividerWidget()
        ],
      ),
    );
  }
}
