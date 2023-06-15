import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/primary_button.dart';

class ProductDetailsBrandCard extends StatelessWidget {
  const ProductDetailsBrandCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0XFFF8F8F8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Neor (60ml)',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 22,
                    color: AppColors.mediumLabel,
                  ),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Brand: ',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.lightLabel2,
                        fontSize: 16,
                        height: 1.7)),
                TextSpan(
                    text: 'Edge\n',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                          color: AppColors.mediumLabel,
                        )),
                TextSpan(
                    text: 'Dhs. 495.00',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.lightLabel2,
                        fontSize: 18,
                        decoration: TextDecoration.lineThrough)),
                const TextSpan(
                  text: '   ',
                ),
                TextSpan(
                    text: 'Dhs. 396.00',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 15)),

              ]),

            ),
            Row(
              children: [

                Image.asset(
                  AppAssets.starIcon,
                  height: 17,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '250 pts',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 22,
                      color: AppColors.secondaryBlack,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 15,
              ),
              child: PrimaryButton(
                fontSize: 16,
                height: 42,
                title: 'Add to Bag',
                onTap: () {},
                width: double.infinity,
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
