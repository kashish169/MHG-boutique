import 'package:flutter/material.dart';
import 'package:mhg/features/home/view/widgets/product_card.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../../../../widgets/dynamic_grid_view.dart';
import '../../../home/models/product_model.dart';

class AllProductsPage extends StatelessWidget {
  static String routeName = '/all_products';
  final List<ProductModel> products;
  const AllProductsPage({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'All Products'),
      body: DynamicGridView(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        crossAxisCount: 2,
        shrinkWrap: true,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: products.length,
        builder: (ctx, index) {
          return ProductCard(
            model: products[index],
          );
        },
      ),
    );
  }
}
