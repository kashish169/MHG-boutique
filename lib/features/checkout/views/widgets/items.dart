// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/mycart/models/cart_model.dart';
import 'package:mhg/features/mycart/view/widgets/my_cart_card.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        title: Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Text(
            'Items',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                  color: AppColors.label,
                ),
          ),
        ),
        subtitle: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 3,
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                    ),
                    child: MyCartCard(
                      model: CartModel(
                          rowId: "1",
                          id: 1,
                          qty: 5,
                          name: "name",
                          price: 5,
                          weight: 5,
                          options: Options(imageLink: ''),
                          taxRate: 2,
                          instance: "instance"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
