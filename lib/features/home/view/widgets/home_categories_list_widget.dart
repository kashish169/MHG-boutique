import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_fonts.dart';
import '../../../../core/languages/languages.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../../categories/view/pages/sub_categories_page.dart';
import '../../../product_details/view/pages/product_details_page.dart';
import '../../../products_page/view/pages/product_page.dart';
import '../../controller/home_controller.dart';

class HomeCategoriesListWidget extends StatefulWidget {
  const HomeCategoriesListWidget({super.key});

  @override
  State<HomeCategoriesListWidget> createState() =>
      _HomeCategoriesListWidgetState();
}

class _HomeCategoriesListWidgetState extends State<HomeCategoriesListWidget> {
  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const LoadingWidget();
      } else if (controller.isError.isTrue) {
        return RetryButton(onTap: () {
          controller.getHome();
        });
      }
      return Visibility(
        visible: controller.homeModel!.categories.isNotEmpty,
        child: Container(
          padding: const EdgeInsets.only(top: 5, left: 5),
          child: SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: controller.homeModel!.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final model = controller.homeModel!.categories[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: InkWell(
                    onTap: () async {
                      if (model.categoryId == null &&
                          model.allActiveSubMenus.isEmpty) {
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
                        Navigator.pushNamed(
                            context, SubCategoriesPage.routeName,
                            arguments: [model.allActiveSubMenus, model.enName]);
                      }
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: controller
                                      .homeModel!.categories[index].imageLink !=
                                  null
                              ? ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.35),
                                      BlendMode.darken),
                                  child: Image(
                                    image: NetworkImage(
                                      controller.homeModel!.categories[index]
                                          .imageLink!,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : const Text(''),
                        ),
                        Container(
                          width: 100,
                          height: 120,
                          color: Colors.black.withOpacity(0),
                          child: Center(
                            child: Text(
                                isAR()
                                    ? controller
                                        .homeModel!.categories[index].frName
                                    : controller
                                        .homeModel!.categories[index].enName,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 11.4,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: AppFonts.gothic)),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
    });
  }
}
