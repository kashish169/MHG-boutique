import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/view/pages/qr_view.dart';
import 'package:mhg/features/profile/view/widgets/reward_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../widgets/divider_widget.dart';
import '../widgets/profile_card.dart';
import '../widgets/profile_follow_us_widget.dart';
import '../widgets/profile_header.dart';

class ProfileView extends StatelessWidget {
  static String routeName = '/profile';
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<ProfileController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (controller.isError.isTrue) {
        return RetryButton(
          onTap: () {
            controller.getProfileInfo();
          },
        );
      }
      return SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(
              name: controller.model.name,
              email: controller.model.email,
              image: controller.model.image,
              level: controller.model.currentTier ?? '-',
            ),
            const ProfileRewardBox(),
            const DividerWidget(),
            const ProfileRewardBox(),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.person1,
              title: 'Personal information',
            ),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.order,
              title: 'My Orders',
            ),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.setting,
              title: 'Settings',
            ),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.reward,
              title: 'Rewards',
            ),
            const DividerWidget(),
            ProfileCard(
                icon: AppAssets.scan,
                title: 'Scan QR to collect Rewards',
                onTap: () {
                  Get.to(
                    () => const QRPage(),
                  );
                }),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.payment,
              title: 'Payment information',
            ),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.invite,
              title: 'invite your friends',
            ),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.about,
              title: 'About MHGboutique',
            ),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.feedback,
              title: 'Send a feedback',
            ),
            const DividerWidget(),
            ProfileCard(
              icon: AppAssets.store,
              title: 'Find Our Stores',
            ),
            const DividerWidget(),
            const SizedBox(
              height: 40,
            ),
            ProfileCard(
              icon: AppAssets.store,
              title: 'Log out',
            ),
            const SizedBox(height: 15),
            const DividerWidget(),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.message,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Email',
                          style: Theme.of(context).textTheme.displaySmall)
                    ],
                  )),
                  const SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      )),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.phone,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Call us',
                          style: Theme.of(context).textTheme.displaySmall)
                    ],
                  )),
                ],
              ),
            ),
            const ProfileFollowUsWidget(),
          ],
        ),
      );
    });
  }
}
