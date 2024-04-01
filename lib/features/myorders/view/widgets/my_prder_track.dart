import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/primary_button.dart';
import '../../models/order_model.dart';

class MyOrderTrack extends StatelessWidget {
  const MyOrderTrack({super.key, required this.model});
  final MyOrder model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              model.deliveryStatusText!,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    height: 1.4,
                    color: AppColors.dBlack,
                    fontSize: 12,
                  ),
            ),
          ),
          if (model.trackingDeliveryUrl != null)
            PrimaryButton(
              title: "Track order".tr,
              onTap: () async {
                if (await canLaunchUrl(Uri.parse(model.trackingDeliveryUrl!))) {
                  await launchUrl(Uri.parse(model.trackingDeliveryUrl!));
                } else {
                  throw 'Could not launch ${model.trackingDeliveryUrl}';
                }
              },
              fontSize: 12,
              color: AppColors.white,
              height: 35,
              reverseColor: true,
              isSelected: true,
            ),
        ],
      ),
    );
  }
}
