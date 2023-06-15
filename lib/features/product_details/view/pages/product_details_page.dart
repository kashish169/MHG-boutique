import 'package:flutter/material.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_brand_card.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_info_card.dart';
import 'package:mhg/features/product_details/view/widgets/product_details_slider.dart';
import 'package:mhg/features/product_details/view/widgets/similar_products.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/divider_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  static String routeName = '/product_details';
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF8F8F8),
      appBar: customAppBar(context, title: "View Product"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProductDetailsSlider(),
            ProductDetailsBrandCard(),
            DividerWidget(),
            ProductDetailsInfoCard(),
            SimilarProductsWidget(),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
