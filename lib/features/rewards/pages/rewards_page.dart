import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/rewards/widgets/reward_levels_widget.dart';
import 'package:mhg/features/rewards/widgets/scan_qr_card.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../../mainwrapper/view/widgets/bottom_nav_bar.dart';
import '../../profile/view/widgets/reward_widget.dart';

class RewardsPage extends StatelessWidget {
  static String routeName = '/reward';
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Scaffold(
      appBar: customAppBar(context, title: "Rewards".tr),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '${'Good Morning'.tr} ${controller.model.value!.name}',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 18,
                    ),
              ),
            ),
            const ProfileRewardBox(),
            const ScanQrCard(),
            RewardLevelsWidget(),
          ],
        ),
      ),
    );
  }
}
