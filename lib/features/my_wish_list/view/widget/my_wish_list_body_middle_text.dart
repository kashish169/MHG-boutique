import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class BodyMiddleText extends StatelessWidget {
  const BodyMiddleText({super.key, required this.brand, required this.price});
  final String brand;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Brand:',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 12, color: AppColors.lightGray4),
              ),
              TextSpan(
                text: " $brand",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 12, color: AppColors.darkGrey),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Dhs. $price",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 14, color: AppColors.darkGrey),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
