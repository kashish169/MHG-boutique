import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/myorders/controller/my_orders_controller.dart';
import 'package:mhg/features/success_order/controller/success_order_controller.dart';

class SuccessOrderPaymentMethod extends StatelessWidget {
  SucessOrderController controller;

  SuccessOrderPaymentMethod({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final checkoutController = Get.find<CheckoutController>();
    return Padding(
      padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              'Payment Method',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 14,
                  color: AppColors.label,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              controller.orderModel.paymentMethod=='COD'?
              Text(
                'Cash On Delivery',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 12,
                  color: AppColors.mediumLabel,
                  fontWeight: FontWeight.bold,
                ),
              ):
              SizedBox()
              /* Text(
                      'ending ${controller.getCodedNumber(model.cardNumber)}',
                      maxLines: null,
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 14,
                            color: AppColors.mediumLabel,
                            fontWeight: FontWeight.bold,
                          ),
                    ) */
            ],
          ),
          controller.orderModel.tapPaymentMethod?.cardType != null
              ? Row(
                  children: [
                    Image.asset(
                      checkoutController.getCardIcon(
                        controller.orderModel.tapPaymentMethod!.cardType,
                      ),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      controller.orderModel.tapPaymentMethod!.cardType,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 12,
                            color: AppColors.mediumLabel,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        'ending ${checkoutController.getCodedNumber(controller.orderModel.tapPaymentMethod?.cardNumber)}',
                        maxLines: null,
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 12,
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    )
                  ],
                )
              : const SizedBox(),

          // Container(
          //   margin: const EdgeInsets.symmetric(
          //       horizontal: 20, vertical: 8),
          //   decoration: BoxDecoration(
          //       color: AppColors.white,
          //       borderRadius: BorderRadius.circular(8),
          //       boxShadow: AppColors.shadow(0.1),
          //       border: Border.all(
          //         color: Colors.transparent,
          //       )),
          //   child: null,
          // )
        ],
      ),
    );
  }
}
