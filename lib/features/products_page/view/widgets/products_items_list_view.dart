import 'package:flutter/material.dart';
import 'package:mhg/features/products_page/view/widgets/product_label_item.dart';
class ProductsListView extends StatelessWidget {
  const ProductsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const ProductLabelItem(title: 'Edge',),
          const ProductLabelItem(title: 'Hilal',),
          const  ProductLabelItem(title: 'Michael Crorner',),
          const  ProductLabelItem(title: 'Rose Rossa',),
          const ProductLabelItem(title: 'Wedding Moments',),


        ],
      ),
    );
  }
}
