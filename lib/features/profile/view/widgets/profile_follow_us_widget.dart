import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import '../../../../constants/app_assets.dart';
import '../../../../widgets/divider_widget.dart';

class ProfileFollowUsWidget extends StatelessWidget {
  const ProfileFollowUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Column(
      children: [
        const DividerWidget(),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Follow us on'.tr,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                controller.launchFacebookPage();
              },
              icon: Image.asset(
                AppAssets.facebook,
                height: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                controller.launchMyUrl('https://www.instagram.com/mhgboutique');
              },
              icon: Image.asset(
                AppAssets.insta,
                height: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                controller.launchMyUrl('https://www.twitter.com/mhgboutique');
              },
              icon: Image.asset(
                AppAssets.twitter,
                height: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
