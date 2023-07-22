import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';
import '../../../../constants/app_colors.dart';
import '../../../checkout/views/widgets/promo_code.dart';
import '../../../profile/controller/profile_controller.dart';
import 'checkout_button.dart';

class BottomCartWidget extends StatelessWidget {
  const BottomCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MyCartController>();
    final checkoutController=Get.find<CheckoutController>();
    final profileController = Get.find<ProfileController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: AppColors.primary,
        ),
        const SizedBox(height: 15),
        PromoCode(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: FittedBox(
            child: Text(
              'Orders above AED 500 are eligible for free shipping',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(

                fontSize: 8, color: AppColors.label,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: GetX<CheckoutController>(initState: (state) async {
            await state.controller?.orderPrice();
          }, builder: (checkoutController) {
            if (checkoutController.isLoadingRedeem.isTrue) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: LoadingThreeBounce(
                  color: AppColors.primary,
                  size: 20,
                ),
              );
            } else if (checkoutController.isErrorRedeem.isTrue) {
              return RetryButton(onTap: () => checkoutController.orderPrice());
            }
            return Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Subtotal',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                            height: 1.4,
                            fontSize: 14,
                            color: AppColors.label,
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Shipping',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                            height: 1.4,
                            fontSize: 14,
                            color: AppColors.label,
                          ),
                        ),
                      ),

                      Visibility(
                        visible:
                        checkoutController.orderPriceModal.data?.discount ==
                            0
                            ? false
                            : true,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Discount',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                              height: 1.4,
                              fontSize: 14,
                              color: AppColors.label,
                            ),
                          ),
                        ),
                      ),

                      Text(
                        'Total',
                        style:
                        Theme.of(context).textTheme.displaySmall?.copyWith(
                          height: 1.4,
                          fontSize: 14,
                          color: AppColors.dBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.subtotal}',
                        style:
                        Theme.of(context).textTheme.displaySmall?.copyWith(
                          height: 1.4,
                          color: AppColors.mediumLabel,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        checkoutController.orderPriceModal.data?.shippingCharge==0?'Free':
                        '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.shippingCharge}',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                          height: 1.4,
                          color: AppColors.mediumLabel,
                          fontSize: 14,
                        ),
                      ),
                    ),

                    Visibility(
                        visible:
                        checkoutController.orderPriceModal.data?.discount ==
                            0
                            ? false
                            : true,
                        child: FittedBox(
                          child: Text(
                            '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.discount}',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                              height: 1.4,
                              color: AppColors.dBlack,
                              fontSize: 14,
                            ),
                          ),
                        )),

                    FittedBox(
                      child: Text(
                        '${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.grandTotal}',
                        style:
                        Theme.of(context).textTheme.displayMedium?.copyWith(
                          height: 1.4,
                          color: AppColors.dBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            );
          }),
        ),
        Padding(
           padding:  EdgeInsets.only(left:Get.width*0.08),
          child: Visibility(
              visible:
              checkoutController.orderPriceModal.data?.hearts?.hearts ==
                  0
                  ? false
                  : true,
              child: Row(
                children: [
                  Image.asset(AppAssets.starIcon,height: 10,),
                  const SizedBox(width: 2,),
                  FittedBox(
                    child: Text(
                      'Earn ${checkoutController.orderPriceModal.data?.hearts?.hearts } Points',
                      style:
                      Theme.of(context).textTheme.displaySmall?.copyWith(
                        height: 1.4,
                        color: AppColors.dBlack,
                        fontSize: 8,
                      ),
                    ),
                  )
                ],
              )),
        ),
      Padding(
        padding:  EdgeInsets.only(left:Get.width*0.08),
        child: Visibility(
              visible: checkoutController
                  .orderPriceModal.data?.tax ==
                  0
                  ? false
                  : true,
      
              child: FittedBox(
                child: Text(
                  'Including ${profileController.currnecy.value} ${checkoutController.orderPriceModal.data?.tax} of taxes',
                  style:
                  Theme.of(context).textTheme.displaySmall?.copyWith(
                    height: 1.4,
                    color: AppColors.dBlack,
                    fontSize: 8,
                  ),
                ),
              ),
            ),
      ),
          const SizedBox(height: 15),
        // Row(
        //   children: [
        //     Expanded(
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Visibility(
        //             visible:controller.discount.value!=0.0,
        //             child: Text(
        //               'Discount'.tr,
        //               style: Theme.of(context).textTheme.displaySmall?.copyWith(
        //                     fontSize: 16,
        //                     color: AppColors.label,
        //                   ),
        //             ),
        //           ),
        //           Visibility(
        //             visible:controller.tax.value!=0.0,
        //             child: Text(
        //               'Tax'.tr,
        //               style: Theme.of(context).textTheme.displaySmall?.copyWith(
        //                     fontSize: 16,
        //                     color: AppColors.label,
        //                   ),
        //             ),
        //           ),
        //           Visibility(
        //             visible:controller.subTotal.value!=0.0,
        //             child: Text(
        //               'SubTotal'.tr,
        //               style: Theme.of(context).textTheme.displaySmall?.copyWith(
        //                     fontSize: 16,
        //                     color: AppColors.label,
        //                   ),
        //             ),
        //           ),
        //           Text(
        //             'TOTAL'.tr,
        //             style: Theme.of(context).textTheme.displaySmall?.copyWith(
        //                   fontSize: 16,
        //                   color: AppColors.label,
        //                 ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     const Expanded(child: SizedBox()),
        //     Expanded(
        //         child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Visibility(
        //           visible:controller.discount.value!=0.0,
        //           child: Obx(() => Text(
        //                 '${profileController.currnecy.value} ${controller.discount.value.toStringAsFixed(2)}',
        //                 style:
        //                     Theme.of(context).textTheme.displaySmall?.copyWith(
        //                           fontSize: 16,
        //                           color: AppColors.mediumLabel,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //               )),
        //         ),
        //         Visibility(
        //           visible:controller.tax.value!=0.0,
        //           child: Obx(() => Text(
        //                 '${profileController.currnecy.value} ${controller.tax.value.toStringAsFixed(2)}',
        //                 style:
        //                     Theme.of(context).textTheme.displaySmall?.copyWith(
        //                           fontSize: 16,
        //                           color: AppColors.mediumLabel,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //               )),
        //         ),
        //         Visibility(
        //           visible:controller.subTotal.value!=0.0,
        //           child: Obx(() => Text(
        //                 '${profileController.currnecy.value} ${controller.subTotal.value.toStringAsFixed(2)}',
        //                 style:
        //                     Theme.of(context).textTheme.displaySmall?.copyWith(
        //                           fontSize: 16,
        //                           color: AppColors.mediumLabel,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //               )),
        //         ),
        //         Obx(() => Text(
        //               '${profileController.currnecy.value} ${controller.totalPrice.value.toStringAsFixed(2)}',
        //               style:
        //                   Theme.of(context).textTheme.displaySmall?.copyWith(
        //                         fontSize: 16,
        //                         color: AppColors.mediumLabel,
        //                         fontWeight: FontWeight.bold,
        //                       ),
        //             )),
        //       ],
        //     ))
        //   ],
        // ),

        // Text(
        //   'Free Domestic Shipping',
        //   style: Theme.of(context).textTheme.displaySmall?.copyWith(
        //         fontSize: 16,
        //         color: AppColors.label,
        //       ),
        // ),

        const SizedBox(height: 15),
        const CheckOutButton(),
        const SizedBox(height: 15),
      ],
    );
  }
}
