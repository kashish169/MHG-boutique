import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';

import '../../../../widgets/rating_widget.dart';

class ProductDetailsComment extends StatelessWidget {
  const ProductDetailsComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 80,
              width: 50,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      const BorderRadius.horizontal(left: Radius.circular(6))),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Ali Ali",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    color: AppColors.dBlack, fontSize: 11),
                          ),
                          Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 60,
                              child: const RatingWidget(
                                isEnableToRate: false,
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "1 day ago",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: AppColors.primary, fontSize: 11),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "user name comment and review here ",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColors.veryDarkGrey, fontSize: 12),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
