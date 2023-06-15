import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

class ProductLabelItem extends StatelessWidget {
  final String title;

  const ProductLabelItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 9, vertical: 19),
        height: 74,
        width: 73,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
          boxShadow: AppColors.shadow(.3),

        ),
        child: Center(
          child: Text(title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
            fontSize: 14,
            color: AppColors.secondaryBlack
          ),),
        )
        ,
    );
  }
}
