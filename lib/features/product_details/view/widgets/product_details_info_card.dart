import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/languages/languages.dart';
import 'package:mhg/widgets/divider_widget.dart';

import '../../controller/product_details_controller.dart';

class ProductDetailsInfoCard extends StatelessWidget {
  const ProductDetailsInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProductDetailsController>();
    return ColoredBox(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              'Product Details'.tr,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 14,
                    color: AppColors.mediumLabel,
                  ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const DividerWidget(),
          const SizedBox(height: 10),
          Html(
            data: isAR()
                ? controller.model.frDescription
                : controller.model.enDescription,
            style: {
              "body": Style(
                  color: Colors.black,
                  margin: Margins.symmetric(
                    horizontal: 20,
                  ))
            },
          ),
          const SizedBox(height: 10),
          const DividerWidget(),
        ],
      ),
    );
  }
}
