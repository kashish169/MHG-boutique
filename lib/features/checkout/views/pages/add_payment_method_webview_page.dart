import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/primary_button.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AddPaymentMethodWebViewPage extends StatefulWidget {
  static String routeName = '/add_payment_method_web_view';
  final String? title;
  final String? url;
  final bool is3dAUth;
  final bool? isAddCard;
  final bool? isProfile;
  final double? titleFontSize;
  final List<Widget> actions;

  const AddPaymentMethodWebViewPage({
    super.key,
    this.title,
    this.url,
    this.is3dAUth = false,
    this.isAddCard = false,
    this.isProfile = false,
    this.titleFontSize,
    this.actions = const [],
  });

  @override
  State<AddPaymentMethodWebViewPage> createState() =>
      _AddPaymentMethodWebViewPageState();
}

class _AddPaymentMethodWebViewPageState
    extends State<AddPaymentMethodWebViewPage> {
  final CheckoutController checkoutController = Get.find<CheckoutController>();
  late final WebViewController webViewController;
  bool isAddedSuccessful = false;

  @override
  void initState() {
    log('WEBVIEW URL WEBVIEW URWEBVIEW URWEBVIEW UR: ${widget.url}');
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
              if (widget.isAddCard == true) {
                if (url.contains("Thank")) {
                  isAddedSuccessful = true;
                  if (mounted) setState(() {});
                }
              }
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
      appBar: customAppBar(context,
          fontSize: widget.titleFontSize,
          title: widget.title ?? 'Add Payment Method'.tr,
          actions: widget.actions),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            widget.url == null
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
            Visibility(
              visible: isAddedSuccessful,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: PrimaryButton(
                    width: 220,
                    height: 45,
                    title: widget.isProfile == true ? "Done" : "Return to Cart",
                    onTap: () {
                      Get.back();
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
