// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

import 'package:mhg/constants/app_colors.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        title: Text(
          'Payment Method',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: 16,
                color: AppColors.label,
              ),
        ),
        subtitle: Padding(
          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.014,),
          child: Row(
            children: [
              Image.asset(
                AppAssets.master,
                height: 50,
                width: 50,
              ),
              Text(
                ' Master Card ending **00',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 14,
                      color: AppColors.mediumLabel,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        trailing: Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ),
      ),
    );
  }
}
