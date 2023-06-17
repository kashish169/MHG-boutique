import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../models/category_model.dart';

class HomeCategoryCard extends StatelessWidget {
  final CategoryModel model;
  const HomeCategoryCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(18),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadiusDirectional.circular(8),
        boxShadow: AppColors.shadow(0.3),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              model.enName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 15,
                  ),
            ),
          ),
          NetImage(
            image: model.url,
            height: 45,
            width: 45,
          ),
        ],
      ),
    );
  }
}
