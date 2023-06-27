import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AddPaymentMethodWebViewPage extends StatefulWidget {
  static String routeName = '/add_payment_method_web_view';
  final String? title;
  final String? url;
  final bool is3dAUth;

  const AddPaymentMethodWebViewPage({
    super.key,
    this.title,
    this.url,
    this.is3dAUth = false,
  });

  @override
  State<AddPaymentMethodWebViewPage> createState() =>
      _AddPaymentMethodWebViewPageState();
}

class _AddPaymentMethodWebViewPageState
    extends State<AddPaymentMethodWebViewPage> {
  final CheckoutController checkoutController = Get.find<CheckoutController>();
  late final WebViewController webViewController;

  @override
  void initState() {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            checkoutController.loadingPercentage(0);
          },
          onProgress: (progress) {
            checkoutController.loadingPercentage(progress);
          },
          onPageFinished: (url) async {
            checkoutController.loadingPercentage(100);
            log("REDIRECT URL $url");
            if (widget.is3dAUth == true) {
              if (url.contains("thank-you")) {
                Get.back(result: true);
              }
            } else {
              checkoutController.getUserPaymentMethods();
            }
          },
        ),
      );
    if (widget.url != null) {
      webViewController.loadRequest(Uri.parse(widget.url ?? ''));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(
        context,
        title: widget.title ?? 'Add Payment Method',
      ),
      body: widget.url == null
          ? Center(
              child: Text(
                "INVALID URL",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            )
          : Obx(() => SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: checkoutController.loadingPercentage.value != 100
                    ? const LoadingWidget()
                    : WebViewWidget(
                        controller: webViewController,
                      ),
              )),
    );
  }
}
