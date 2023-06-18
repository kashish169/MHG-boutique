// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/custom_form_field.dart';

import 'place_order_button.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Image.asset(
                  AppAssets.tag,
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Add Promo Code',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.label,
                      ),
                ),
              ],
            ),
            subtitle: Text(
              'If apply no points will add be added',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColors.lightLabel2, fontSize: 14, height: 1.7),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 44,
                child: CustomFormField(
                  inputType: TextInputType.text,
                  obscure: false,
                  hint: 'Enter Code Here',
                ),
              ),
             
              Container(
                margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.1),
                child: PlaceOrderButton(
                  title: 'Apply',
                  width: MediaQuery.of(context).size.width * 0.3,
                  hasIcon: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
