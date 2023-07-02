import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/features/myorders/controller/my_orders_controller.dart';
import 'package:mhg/features/myorders/models/order_model.dart';
import 'package:mhg/features/myorders/view/pages/my_order_detail.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../profile/controller/profile_controller.dart';

class MyOrderCard extends StatelessWidget {
  final MyOrder model;

  const MyOrderCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();
    final controller = Get.find<MyOrdersController>();
    return InkWell(
      onTap: () {
        Get.toNamed(MyOrderDetailPage.routeName, arguments: model);
      },
      child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.orderNumber,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                              ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Total ${model.grandTotal} ${profileController.currnecy.value}',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${model.orderDetails.length} items',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                              ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '${AppHelper.dateFormat(model.createdAt.toLocal())} ${AppHelper.timeFormat(model.createdAt.toLocal())}',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 12,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Visibility(
                        visible:
                            model.orderStatus != 6 && model.orderStatus != 5,
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: 'Status ',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 16,
                                  ),
                            ),
                            TextSpan(
                              text: Get.find<MyOrdersController>()
                                  .getStatus(model.orderStatus),
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 16,
                                  ),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: (model.orderStatus == 1 &&
                            model.cancelRequested != 1) ||
                        (model.orderStatus == 4 && model.returnRequested != 1),
                    child: model.orderStatus == 1
                        ? PrimaryButton(
                            width: 100,
                            title: "Cancel Order".tr,
                            onTap: () async {
                              showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    true, // user must tap button!
                                builder: (BuildContext context) {
                                  return buildAlertCancelDialog(
                                      context, controller, true);
                                },
                              );
                            },
                            fontSize: 12,
                            color: AppColors.white,
                            height: 35,
                            reverseColor: true,
                            isSelcted: true,
                          )
                        : PrimaryButton(
                            title: "Return Order".tr,
                            onTap: () async {
                              showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext context) {
                                  return buildAlertCancelDialog(
                                      context, controller, false);
                                },
                              );
                            },
                            fontSize: 12,
                            color: AppColors.white,
                            height: 35,
                            reverseColor: true,
                            isSelcted: true,
                          ),
                  ),
                ],
              ),
              Visibility(
                visible: model.returnRequested == 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'You asked to return this order\n',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                ),
                      ),
                      TextSpan(
                        text: 'Reason: ' + model.returnReason.toString(),
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                ),
                      )
                    ]),
                  ),
                ),
              ),
              Visibility(
                visible: model.cancelRequested == 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'You asked to cancel this order\n',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                ),
                      ),
                      TextSpan(
                        text: 'Reason: ' + model.cancelReason.toString(),
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                ),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Dialog buildAlertCancelDialog(
      BuildContext context, MyOrdersController controller, bool isCancel) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                isCancel ? "Cancel Order" : "Return Order",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: CustomFormField(
                  hint: 'Reason',
                  obscure: false,
                  inputType: TextInputType.text,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This field is required";
                    }
                    return null;
                  },
                  controller: controller.message),
            ),
            const SizedBox(height: 10),
            PlaceOrderButton(
              color: AppColors.secondary,
              title: 'Confirm',
              width: 250,
              hasIcon: false,
              onPress: () {
                if (controller.formKey.currentState!.validate()) {
                  Get.back();
                  if (isCancel) {
                    Get.find<MyOrdersController>()
                        .cancelOrder(orderNumber: model.orderNumber);
                  } else {
                    Get.find<MyOrdersController>()
                        .returnOrder(orderNumber: model.orderNumber);
                  }

                  controller.message.clear();
                }
              },
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
