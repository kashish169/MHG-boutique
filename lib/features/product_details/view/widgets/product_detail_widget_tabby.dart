import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/widgets/webview_show.dart';

import '../../controller/product_details_controller.dart';

class ProductDetailWidgetTabby extends StatefulWidget {
  const ProductDetailWidgetTabby({super.key, required this.price});
  final double price;

  @override
  State<ProductDetailWidgetTabby> createState() =>
      _ProductDetailWidgetTabbyState();
}

class _ProductDetailWidgetTabbyState extends State<ProductDetailWidgetTabby> {
  final controller = Get.find<ProductDetailsController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('or 4 interest-free payments of'.tr,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                  Text(' ${widget.price / 4} AED.',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Image.asset(
                AssetsPaymentsLogos.tabbyLogo,
                width: 50,
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 4)),
          InkWell(
            onTap: () async {
              await controller
                  .getTabbyLink(price: widget.price)
                  .then((value) async {
                if (!controller.isTabbyLoading.value) {
                  if (controller.tabbyLink.value.isNotEmpty) {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                WebViewShow(url: controller.tabbyLink.value)));
                  }
                }
              });
            },
            child: Text('Learn more'.tr,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontSize: 12,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
