import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/models/token_model/google_pay_result_model.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:pay/pay.dart';

import '../../../../widgets/three_bounce_loading.dart';
import '../../models/apple_pay_result_model.dart';

class ApplePayWidget extends StatefulWidget {
  const ApplePayWidget({super.key, required this.isIOS});
  final bool isIOS;

  @override
  State<ApplePayWidget> createState() => _ApplePayWidgetState();
}

class _ApplePayWidgetState extends State<ApplePayWidget> {
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
            if (widget.isIOS) {
              controller.getApplePayConfiguration();
            } else {
              controller.geGooglePayConfiguration();
            }
          });
        }

        return widget.isIOS
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
                paymentConfiguration: PaymentConfiguration.fromJsonString(
                  jsonEncode(
                    controller.googleConfiguration,
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
                type: GooglePayButtonType.buy,
                margin: const EdgeInsets.only(top: 15.0),
                onPaymentResult: (result) {
                  final model = GooglePayResultModel.fromJson(jsonDecode(
                      result['paymentMethodData']['tokenizationData']
                          ['token']));

                  controller.createOrder(
                    isGooglePay: true,
                    googlePayResultModel: model,
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
