import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/net_image.dart';

class HomeCategoryCard extends StatelessWidget {
  const HomeCategoryCard({super.key});

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
              "Top Sellers",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 15,
                  ),
            ),
          ),
          NetImage(
            image: "https://fimgs.net/mdimg/perfume/375x500.43120.jpg",
            height: 45,
            width: 45,
          ),
        ],
      ),
    );
  }
}
