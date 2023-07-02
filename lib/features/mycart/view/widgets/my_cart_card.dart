import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../profile/controller/profile_controller.dart';
import '../../models/cart_model.dart';
import 'cart_counter_widget.dart';
import 'delete_cart_button.dart';

class MyCartCard extends StatelessWidget {
  final CartModel model;
  final bool isCheckOut;
  const MyCartCard({
    super.key,
    required this.model,
    this.isCheckOut = false,
  });

  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: AppColors.shadow(0.1),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadiusDirectional.horizontal(
                  start: Radius.circular(8),
                ),
                child: NetImage(
                  image: model.options.imageLink,
                  width: 120,
                  // height: AppDimensions.productHeight(context) / 1.3,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    Text(
                      model.name,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 16,
                            color: AppColors.mediumLabel,
                          ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Brand:',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 12,
                                color: AppColors.lightLabel,
                              ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          model.options.brandName ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 12,
                                color: AppColors.mediumLabel,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Obx(() => Row(
                          children: [
                            Expanded(
                              child: Text(
                                '${profileController.currnecy.value} ${model.options.discountPrice}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      fontSize: 14,
                                      color: AppColors.mediumLabel,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Visibility(
                                visible: double.parse(
                                          model.options.discountParcent ?? '0',
                                        ).round() ==
                                        0
                                    ? false
                                    : true,
                                child: Text(
                                  '${profileController.currnecy.value} ${model.weight}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        fontSize: 12,
                                        color: AppColors.lightLabel,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                ),
                              ),
                            ),
                            CartCounterWidget(
                              model: model,
                            ),
                          ],
                        )),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: !isCheckOut,
          child: DeleteCartButton(
            model: model,
          ),
        ),
      ],
    );
  }
}
