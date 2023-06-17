import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/features/products_page/view/widgets/filter_widget.dart';

import 'package:mhg/features/products_page/view/widgets/products_items_list_view.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
class ProductsPage extends StatelessWidget {
  static String routeName='/products_page';
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(context, title: 'Products Page'),
      body:  SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductsListView(),
            const FiltersWidget(),
            // DynamicHeightGridView(
            //   physics: const NeverScrollableScrollPhysics(),
            //   crossAxisCount: 2,
            //   shrinkWrap: true,
            //   mainAxisSpacing: 25,
            //   crossAxisSpacing: 10,
            //   itemCount: 8,
            //   builder: (ctx, index) {
            //     return const ProductCard();
            //   },
            // )

          ],
        ),
      ),
    );
  }
}
