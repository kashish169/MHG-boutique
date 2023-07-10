import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';

class SuccessOrderPaymentMethod extends StatelessWidget {
  CheckoutController controller;

  SuccessOrderPaymentMethod({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    'Payment Method',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.label,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      controller.paymentMethodValue.value,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 14,
                            color: AppColors.mediumLabel,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
