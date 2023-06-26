import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/product_details/models/product_review_model.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../core/helper/app_helper.dart';
import '../../../../widgets/rating_widget.dart';

class ProductDetailsReviewComment extends StatelessWidget {
  final ProductReviewModel model;
  const ProductDetailsReviewComment({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(end: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.secondary,
              backgroundImage: CachedNetworkImageProvider(model.user.imageLink),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            model.user.name ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    color: AppColors.dBlack, fontSize: 11),
                          ),
                          Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 60,
                              child: RatingWidget(
                                isEnableToRate: false,
                                initialRating: double.parse("${model.rating}"),
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          AppHelper.difference(model.createdAt),
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
                    model.feedback,
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
