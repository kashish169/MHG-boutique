import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_toasts.dart';
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
          'box ofs'.tr,
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontSize: 12,
              color: AppColors.mediumLabel,
              fontWeight: FontWeight.w500),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        ElevatedButton(
          onPressed: () async {
            setState(() {
              sendNoti = !sendNoti;
            });
            if (sendNoti) {
              PermissionStatus? statusNotification =
                  await Permission.notification.request();

              if (statusNotification.isDenied) {
                setState(() {
                  sendNoti = false;
                });
              } else {
                controller.ofsSubscribe(
                    controller.model.id,
                    controller.model
                        .variants[controller.selectedVariantInd.value].id);
                AppToasts.successToast(
                  "You will receive a notification once the product becomes available.",
                );
              }
            } else {
              controller.ofsUnSubscribe(
                  controller.model.id,
                  controller
                      .model.variants[controller.selectedVariantInd.value].id);
            }
          },
          style: ElevatedButton.styleFrom(
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.5),
              backgroundColor: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                    value: sendNoti,
                    onChanged: (val) {
                      setState(() {
                        sendNoti = val!;
                      });
                      if (sendNoti) {
                        controller.ofsSubscribe(controller.model.id,
                            controller.model.variants[0].id);
                      } else {
                        controller.ofsUnSubscribe(controller.model.id,
                            controller.model.variants[0].id);
                      }
                    }),
              ),
              const Padding(padding: EdgeInsets.only(right: 9)),
              Text(
                'notify'.tr,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 11,
                    color: AppColors.mediumLabel,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        )
      ],
    );
  }
}
