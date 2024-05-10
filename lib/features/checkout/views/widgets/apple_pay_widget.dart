import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:pay/pay.dart';

import '../../../../widgets/three_bounce_loading.dart';
import '../../models/apple_pay_result_model.dart';

class ApplePayWidget extends StatelessWidget {
  const ApplePayWidget({super.key, required this.isIOS});
  final bool isIOS;

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
            if (isIOS) {
              controller.getApplePayConfiguration();
            }
          });
        }

        return isIOS
            ? ApplePayButton(
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
                    amount:
                        "${controller.orderPriceModal.value.data?.grandTotal}",
                    status: PaymentItemStatus.final_price,
                  )
                ],
                style: ApplePayButtonStyle.black,
                type: ApplePayButtonType.plain,
                margin: const EdgeInsets.only(top: 15.0),
                onPaymentResult: (result) {
                  // log("APPLE PAY $result");
                  var model = ApplePayResultModel.fromJson(result);
                  controller.createOrder(
                    isApplePay: true,
                    applePayResultModel: model,
                  );
                },
                onError: (error) {
                  log("APPLE PAY ERROR $error");
                },
                loadingIndicator: const Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : GooglePayButton(
                width: 300,
                paymentConfiguration: PaymentConfiguration.fromJsonString('''
                {
  "provider": "google_pay",
  "data": {
    "environment": "TEST",
    "apiVersion": 2,
    "apiVersionMinor": 0,
    "allowedPaymentMethods": [
      {
        "type": "CARD",
        "tokenizationSpecification": {
          "type": "PAYMENT_GATEWAY",
          "parameters": {
            "gateway": "example",
            "gatewayMerchantId": "gatewayMerchantId"
          }
        },
        "parameters": {
          "allowedCardNetworks": ["VISA", "MASTERCARD"],
          "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
          "billingAddressRequired": true,
          "billingAddressParameters": {
            "format": "FULL",
            "phoneNumberRequired": true
          }
        }
      }
    ],
    "merchantInfo": {
      "merchantId": "01234567890123456789",
      "merchantName": "Example Merchant Name"
    },
    "transactionInfo": {
      "countryCode": "US",
      "currencyCode": "USD"
    }
  }
}'''
                    // jsonEncode(
                    //   controller.appleConfiguration,
                    // ),
                    ),
                paymentItems: [
                  PaymentItem(
                    label: 'MHGBoutique',
                    amount:
                        "${controller.orderPriceModal.value.data?.grandTotal}",
                    status: PaymentItemStatus.final_price,
                  )
                ],
                margin: const EdgeInsets.only(top: 15.0),
                onPaymentResult: (result) {
                  // log("APPLE PAY $result");
                  var model = ApplePayResultModel.fromJson(result);
                  controller.createOrder(
                    isApplePay: true,
                    applePayResultModel: model,
                  );
                },
                onError: (error) {
                  log("GOOGLE PAY ERROR $error");
                },
                loadingIndicator: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
      }),
    );
  }
}
