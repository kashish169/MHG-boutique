import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/product_details/controller/product_details_controller.dart';

import '../../../../app/app.dart';

class VariantsWidget extends StatelessWidget {
  const VariantsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsController>();

    return Visibility(
      visible: controller.model.variants.length > 1,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10, top: 5),
        height: 50,
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Obx(() => InkWell(
                    onTap: () {
                      controller.selectedVariantInd.value = index;
                      controller.selectedVariantId =
                          controller.model.variants[index].id;
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                            color: controller.selectedVariantInd.value == index
                                ? AppColors.secondary
                                : AppColors.grey,
                            width: controller.selectedVariantInd.value == index
                                ? 1.5
                                : 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            controller.model.variants[index].nameEn,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    color:
                                        controller.selectedVariantInd.value ==
                                                index
                                            ? AppColors.secondary
                                            : null),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${App.currency} ${controller.model.variants[index].price}',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    color:
                                        controller.selectedVariantInd.value ==
                                                index
                                            ? AppColors.secondary
                                            : null),
                          ),
                        ],
                      ),
                    ),
                  ));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
            itemCount: controller.model.variants.length),
      ),
    );
  }
}
