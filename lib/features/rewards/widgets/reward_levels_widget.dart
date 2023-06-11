import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import '../../profile/controller/profile_controller.dart';
import 'level_card.dart';

class RewardLevelsWidget extends StatelessWidget {
  const RewardLevelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Levels',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                  ),
            ),
          ),
          const SizedBox(height: 25),
          LevelCard(
            icon: AppAssets.mojab,
            title: "Mojab",
            description:
                "Unlock To Start Earning More Credits For Each Time You Buy From Our Brands",
            isLocked: controller.model.currentTier == "Mojab" ? false : true,
          ),
          LevelCard(
            icon: AppAssets.moghram,
            title: "Moghram",
            description: "Unlock To Have Special Offers And Extra Gifts",
            isLocked: controller.model.currentTier == "Moghram" ? false : true,
          ),
          LevelCard(
            icon: AppAssets.molah,
            title: "Molah",
            description:
                "Unlock To Be The Vip User, With Tons Of Gifts And Offers More Than 40% Sales",
            isLocked: controller.model.currentTier == "Molah" ? false : true,
          ),
        ],
      ),
    );
  }
}
