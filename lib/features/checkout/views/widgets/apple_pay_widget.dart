import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:pay/pay.dart';

import '../../../../widgets/three_bounce_loading.dart';

class ApplePayWidget extends StatelessWidget {
  const ApplePayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetX<CheckoutController>(builder: (controller) {
        if (controller.loadingAppleConfiguration.isTrue) {
          return const Center(
            child: LoadingThreeBounce(),
          );
        }
        if (controller.errorAppleConfiguration.isTrue) {
          return RetryButton(onTap: () {
            controller.getApplePayConfiguration();
          });
        }
        return ApplePayButton(
          height: 40,
          width: 300,
          paymentConfiguration: PaymentConfiguration.fromJsonString(
            jsonEncode(
              controller.appleConfiguration,
            ),
          ),
          paymentItems: [
            PaymentItem(
              label: 'MHGBoutique',
              amount: "${controller.orderPriceModal.data?.grandTotal}",
              status: PaymentItemStatus.final_price,
            )
          ],
          style: ApplePayButtonStyle.black,
          type: ApplePayButtonType.plain,
          margin: const EdgeInsets.only(top: 15.0),
          onPaymentResult: (result) {
            log("APPLE PAY $obs");
          },
          onError: (error) {
            log("APPLE PAY ERROR $error");
          },
          loadingIndicator: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      }),
    );
  }
}
