import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/app_colors.dart';
import '../../controller/product_details_controller.dart';

class ProductCheckBoxOfs extends StatefulWidget {
  const ProductCheckBoxOfs({super.key});

  @override
  State<ProductCheckBoxOfs> createState() => _ProductCheckBoxOfsState();
}

class _ProductCheckBoxOfsState extends State<ProductCheckBoxOfs> {
  bool sendNoti = false;
  final controller = Get.find<ProductDetailsController>();
  @override
  void initState() {
    setState(() {
      sendNoti = controller.model.variants[0].stockNotificationSubscribed;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.only(top: 10)),
        Text(
          'This product is currently not available in stock. You can click on the check box below so that we will send you notifications when the product is available.',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontSize: 12,
              color: AppColors.mediumLabel,
              fontWeight: FontWeight.w500),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                  value: sendNoti,
                  onChanged: (val) {
                    log('VARIANT VARIANT VARIANT VARIANT ${controller.model.variants[0].stockNotificationSubscribed}');
                    setState(() {
                      sendNoti = val!;
                    });
                    if (sendNoti) {
                      controller.ofsSubscribe(
                          controller.model.id, controller.model.variants[0].id);
                    } else {
                      controller.ofsUnSubscribe(
                          controller.model.id, controller.model.variants[0].id);
                    }
                  }),
            ),
            const Padding(padding: EdgeInsets.only(right: 9)),
            Text(
              'Notify me when this product is available',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 11,
                  color: AppColors.mediumLabel,
                  fontWeight: FontWeight.w800),
            ),
          ],
        )
      ],
    );
  }
}
