import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../../categories/controller/categories_controller.dart';
import '../../../profile/controller/profile_controller.dart';

class HomeCategoriesListWidget extends StatefulWidget {
  const HomeCategoriesListWidget({super.key});

  @override
  State<HomeCategoriesListWidget> createState() =>
      _HomeCategoriesListWidgetState();
}

class _HomeCategoriesListWidgetState extends State<HomeCategoriesListWidget> {
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
      return Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 10),
        child: SizedBox(
          height: 140,
          child: ListView.builder(
            itemCount: controller.categoriesModel.menus.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 140,
                    decoration:
                        controller.categoriesModel.menus[index].imageLink !=
                                null
                            ? BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(controller
                                        .categoriesModel
                                        .menus[index]
                                        .imageLink!)))
                            : null,
                    margin: const EdgeInsets.only(right: 8),
                  ),
                  Expanded(
                    child: Container(
                      width: 140,
                      height: 140,
                      color: Colors.black.withOpacity(0.4),
                      child: Center(
                        child: Text(
                          controller.categoriesModel.menus[index].enName,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      );
    });
  }
}
