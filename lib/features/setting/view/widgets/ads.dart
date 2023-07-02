import 'dart:developer';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/setting/controller/setting_controller.dart';
import 'package:mhg/widgets/primary_button.dart';

class AllowAds extends StatelessWidget {
  const AllowAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SettingController>();
    return Obx(() => InkWell(
          onTap: () async {
            TrackingStatus status = await _initPlugin(context);
            if (status == TrackingStatus.authorized) {
              controller.adsAllowed.value = !controller.adsAllowed.value;
            } else {
              controller.adsAllowed.value = false;
            }
          },
          child: ColoredBox(
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    AppAssets.ads,
                    height: 20,
                    color: AppColors.primary,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Ads',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'See the Ads you want and personalized \nto you',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(fontSize: 10, color: AppColors.grey),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Switch(
                    // This bool value toggles the switch.
                    value: controller.adsAllowed.value,
                    activeColor: Colors.white, activeTrackColor: Colors.black,
                    onChanged: (bool value) async {
                      TrackingStatus status = await _initPlugin(context);
                      if (status == TrackingStatus.authorized) {
                        controller.adsAllowed.value =
                            !controller.adsAllowed.value;
                      } else {
                        controller.adsAllowed.value = false;
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

Future<TrackingStatus> _initPlugin(BuildContext context) async {
  final TrackingStatus status =
      await AppTrackingTransparency.trackingAuthorizationStatus;
  // If the system can show an authorization request dialog
  log("status $status");
  if (status == TrackingStatus.notDetermined) {
    // Show a custom explainer dialog before the system dialog
    // ignore: use_build_context_synchronously
    await showCustomTrackingDialog(context);
    // Wait for dialog popping animation
    await Future.delayed(const Duration(milliseconds: 200));
    // Request system's tracking authorization dialog
    final TrackingStatus status =
        await AppTrackingTransparency.requestTrackingAuthorization();
    log("status $status");
    return status;
  }

  final uuid = await AppTrackingTransparency.getAdvertisingIdentifier();
  log("UUID: $uuid");
  return status;
}

Future<void> showCustomTrackingDialog(BuildContext context) async =>
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: Text(
          'We care about your privacy and data security. We keep this app free by showing ads. '
          'Can we continue to use your data to tailor ads for you?\n\nYou can change your choice anytime in the app settings. '
          'Our partners will collect data and use a unique identifier on your device to show you ads.',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        actions: [
          Center(
            child: PrimaryButton(
                width: 180,
                height: 40,
                title: 'Continue',
                onTap: () {
                  Get.back();
                }),
          ),
        ],
      ),
    );
