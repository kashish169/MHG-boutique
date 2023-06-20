import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/custom_form_field.dart';
import '../../controller/search_controller.dart';

class SearchForm extends StatelessWidget {
  SearchForm({super.key});
  final SearchingController searchController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomFormField(
          inputType: TextInputType.name,
          onFieldSubmitted: (val) {
            controller.serach.text.isNotEmpty
                ? searchController.filterSearchForProduct()
                : null;
          },
          obscure: false,
          oneSideBorder: false,
          controller: controller.serach,
          hint: "What Are You Looking For ?",
          prefixWidget: IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  AppAssets.search,
                  color: AppColors.primary,
                ),
              )),
        ),
      ),
    );
  }
}
