// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AddPaymentMethodWebViewPage extends StatelessWidget {
  static String routeName = '/add_payment_method_web_view';
  AddPaymentMethodWebViewPage({super.key});
  final CheckoutController checkoutController = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(
        context,
        title: 'Add Payment Method',
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: (checkoutController.isLoading.value == false &&
                checkoutController.isError.value == false)
            ? WebViewWidget(
                controller: checkoutController.webViewController,
              )
            : (checkoutController.isLoading.value == false &&
                    checkoutController.isError.value == true)
                ? RetryButton(
                    onTap: () => checkoutController.getAllPaymentMethods(),
                  )
                : LoadingWidget(),
      ),
    );
  }
}
