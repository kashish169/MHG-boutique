import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/products_page/view/pages/product_page.dart';
import 'package:mhg/widgets/divider_widget.dart';

class CategoryListTile extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const CategoryListTile({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(ProductsPage.routeName);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColors.white,
            height: 60,
            child: Row(children: [
              const SizedBox(width: 35,),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontSize: 16),
              ),
              const Expanded(child: SizedBox()),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: AppColors.lightLabel2,
                size: 20,
              ),
              const SizedBox(width: 22,),
            ],)


          ),
          const DividerWidget()
        ],
      ),
    );
  }
}
