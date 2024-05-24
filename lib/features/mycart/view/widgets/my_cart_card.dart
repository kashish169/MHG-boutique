import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/languages/languages.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../constants/app_assets.dart';
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
    return Column(
      children: [
        Stack(
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
                          isAR()
                              ? model.options.arName ?? ''
                              : model.options.enName ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 14,
                                color: AppColors.mediumLabel,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              '${'Brand'.tr}:',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 10,
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
                                    fontSize: 10,
                                    color: AppColors.mediumLabel,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Obx(() => Row(
                              children: [
                                Text(
                                  '${profileController.currnecy.value} ${model.options.discountPrice}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                        fontSize: 12,
                                        color: AppColors.mediumLabel,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const SizedBox(width: 8),
                                Visibility(
                                  visible: double.parse(
                                            model.options.discountParcent ??
                                                '0',
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
                                          fontSize: 10,
                                          color: AppColors.lightLabel,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                  ),
                                ),
                              ],
                            )),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CartCounterWidget(
                            model: model,
                            isCheckout: isCheckOut,
                          ),
                        ),
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
        ),
        if (model.options.isGwp != null)
          if (model.options.isGwp!)
            GwpWidget(price: model.options.minGwpCartAmount!),
      ],
    );
  }
}

class GwpWidget extends StatelessWidget {
  const GwpWidget({super.key, required this.price});
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppAssets.starIcon,
            height: 10,
          ),
          const Padding(padding: EdgeInsets.only(right: 5)),
          Expanded(
            child: Wrap(
              children: [
                Text(
                  'You git this item as a gift because your order price exceeds $price.',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        height: 1.4,
                        fontSize: 9.5,
                        color: AppColors.label,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
