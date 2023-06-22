import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

class ProductCategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const ProductCategoryItem(
      {Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 9, vertical: 19),
      height: 74,
      width: 73,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: AppColors.shadow(.3),
          border: Border.all(
            color: color,
          )),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.fade,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(fontSize: 14, color: AppColors.secondaryBlack),
        ),
      ),
    );
  }
}
