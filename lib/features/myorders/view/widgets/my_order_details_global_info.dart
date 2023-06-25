
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/myorders/models/order_model.dart';

class MyOrderDetailsGlobalInfo extends StatelessWidget {
     final MyOrder model;
  const MyOrderDetailsGlobalInfo({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(model.grandTotal);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
      child: Column(

        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: double.parse(model.tax)!=0,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Center(
                      child: Text(
                        'TAX \n${model.tax}',


                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 14,
                          color: AppColors.label,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Visibility(
                visible: double.parse(model.heartsDiscount)!=0,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Center(
                      child: Text(
                        'Hearts Discount\n${model.heartsDiscount}',

                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 14,
                          color: AppColors.label,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Visibility(
                visible: double.parse(model.subTotal)!=0,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Center(
                      child: Text(
                        'Sub Total\n${model.subTotal}',

                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 14,
                          color: AppColors.label,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Visibility(
                visible: double.parse(model.couponAmount)!=0,
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    child: Center(
                      child: Text(
                        'Coupon Amount\n${model.couponAmount}',

                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 14,
                          color: AppColors.label,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Visibility(
                visible: double.parse(model.grandTotal)!=0,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Center(
                      child: Text(
                        'Grand Total\n${model.grandTotal}',

                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 14,
                          color: AppColors.label,
                        ),
                      ),
                    ),
                  ),
                ),
              ),




            ],),


        ],
      ),
    );
  }
}
