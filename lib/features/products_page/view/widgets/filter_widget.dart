import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductsController>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _scentWidget(context, controller),
          ),
          Expanded(child: _sortByWidget(context, controller))
        ],
      ),
    );
  }

  _scentWidget(BuildContext context, ProductsController controller) {
    return Row(
      children: [
        Text(
          'Scent',
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: AppColors.secondaryBlack),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 35,
          width: AppDimensions.screenWidth(context) / 3.25,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.secondaryBlack),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: AppColors.white),
          child: Obx(() => DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isDense: true,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: AppColors.secondaryBlack,
                      ),
                  isExpanded: true,
                  value: controller.selectedScent.value != ''
                      ? controller.selectedScent.value
                      : null,
                  iconStyleData: IconStyleData(
                    icon: Image.asset(
                      AppAssets.arrowDown,
                      height: 8,
                      color: AppColors.primary,
                    ),
                  ),
                  items: controller.scentList.map((itemss) {
                    return DropdownMenuItem<String>(
                        value: itemss.name,
                        child: FittedBox(child: Text(itemss.name)));
                  }).toList(),
                  onChanged: (newValue) {
                    controller.selectedScent.value = newValue!;
                    controller.resetPaginate();
                    controller.searchWord = controller.selectedScent.value;
                    controller.getProducts(controller.searchWord);
                    // print(controller.categoryValue.value);
                  },
                ),
              )),
        )
      ],
    );
  }

  _sortByWidget(BuildContext context, ProductsController controller) {
    return Row(
      children: [
        Text(
          'Filter By',
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: AppColors.secondaryBlack),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 35,
          width: AppDimensions.screenWidth(context) / 3.25,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.secondaryBlack),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: AppColors.white),
          child: controller.categoryName != null
              ? Center(
                  child: Text(
                    "${controller.categoryName}",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 14, color: AppColors.secondaryBlack),
                  ),
                )
              : Obx(() => DropdownButtonHideUnderline(
                    child: DropdownButton(
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: AppColors.secondaryBlack,
                          ),
                      isDense: true,
                      isExpanded: true,
                      value: controller.selectedSortBy.value,
                      icon: Image.asset(
                        AppAssets.arrowDown,
                        height: 8,
                        color: AppColors.primary,
                      ),
                      items: controller.sortByList.map((itemss) {
                        return DropdownMenuItem<String>(
                            value: itemss, child: Text(itemss));
                      }).toList(),
                      onChanged: (newValue) {
                        controller.selectedSortBy.value = newValue!;
                        controller.resetPaginate();
                        controller.searchWord = controller.selectedScent.value;
                        controller.getProducts(controller.searchWord);

                        // print(controller.categoryValue.value);
                      },
                    ),
                  )),
        )
      ],
    );
  }
}
