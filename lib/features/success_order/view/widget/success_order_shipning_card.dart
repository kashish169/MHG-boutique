import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/success_order/view/widget/success_order_custom_card_text.dart';
import 'package:mhg/features/success_order/view/widget/success_order_custom_shipnning.dart';

import '../../controller/success_order_controller.dart';

class SuccessOrderShipningCard extends StatelessWidget {
  SuccessOrderShipningCard({super.key});
  final SucessOrderController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        borderRadius: BorderRadius.circular(4),
        elevation: 3,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 10, bottom: 15),
                child: Text(
                  'Order Details',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 14),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 5, right: 5, left: 5, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SuccessOrderCustomCardText(
                        title: 'Connection Information',
                        subTitle: controller.orderModel.value!.userModel.email,
                      ),
                      SuccessOrderCustomShipning(
                        title: 'Shipning Address',
                        shipningModel:
                            controller.orderModel.value!.shippingAddress,
                      ),
                      SuccessOrderCustomCardText(
                        title: 'Shipning Method',
                        subTitle: controller.orderModel.value!.paymentMethod,
                      ),
                      SuccessOrderCustomShipning(
                        title: 'Biling Address',
                        shipningModel:
                            controller.orderModel.value!.billingAddress,
                        isFinalText: true,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
