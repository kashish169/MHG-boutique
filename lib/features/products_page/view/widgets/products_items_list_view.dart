import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';
import 'package:mhg/features/products_page/view/widgets/product_category_item.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';
import '../../../../widgets/retry_button.dart';

class ProductsCategoriesListView extends StatelessWidget {
  const ProductsCategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ProductsController>(builder: (controller) {
      if (controller.isLoadingCategories.isTrue) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SizedBox(
              height: 25,
              width: 25,
              child: LoadingThreeBounce(
                color: AppColors.primary,
              ),
            ),
          ),
        );
      } else if (controller.isErrorCategories.isTrue) {
        return RetryButton(onTap: () {
          controller.getCategoriesByBrandId();
        });
      }
      return Visibility(
        visible: controller.categoriesList.isEmpty ? false : true,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Obx(() => InkWell(
                    onTap: () {
                      controller.resetPaginate();
                      controller.selectedCategoryIndex.value = (-1);
                      controller.categoryId = null;
                      controller.getProducts(null);
                    },
                    child: ProductCategoryItem(
                      title: "ALL",
                      color: controller.selectedCategoryIndex.value == (-1)
                          ? AppColors.primary
                          : Colors.white,
                    ),
                  )),
              for (var index = 0;
                  index < controller.categoriesList.length;
                  index++)
                InkWell(
                  onTap: () {
                    controller.resetPaginate();
                    controller.selectedCategoryIndex.value = index;
                    controller.categoryId = controller.categoriesList[index].id;
                    controller.getProducts(null);
                  },
                  child: Obx(() => ProductCategoryItem(
                        title: controller.categoriesList[index].enCategoryName,
                        color: controller.selectedCategoryIndex.value == index
                            ? AppColors.primary
                            : Colors.white,
                      )),
                ),
            ],
          ),
        ),
      );
    });
  }
}
