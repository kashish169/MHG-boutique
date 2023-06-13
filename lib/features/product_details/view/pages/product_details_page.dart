import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/view/widgets/custom_dot_swiper.dart';
import 'package:mhg/features/product_details/view/widgets/add_tobag_card.dart';
import 'package:mhg/features/product_details/view/widgets/details_card.dart';
import 'package:mhg/features/product_details/view/widgets/header.dart';
import 'package:mhg/features/product_details/view/widgets/other_products.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/divider_widget.dart';
import 'package:mhg/widgets/heart_widget.dart';

class ProductPage extends StatelessWidget {
  static String routeName = '/product';

  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF8F8F8),
      appBar: customAppBar(context, title: "View Product"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Head(),
            BagCard(),
            DividerWidget(),
            DetailsCard(),
            OtherProducts(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
