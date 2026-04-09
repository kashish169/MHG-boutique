import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/rewards_controller.dart';
import 'level_card.dart';

class RewardLevelsWidget extends StatelessWidget {
  RewardLevelsWidget({super.key});
  final RewardsController rewardsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Levels'.tr,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                  ),
            ),
          ),
          const SizedBox(height: 25),
          ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: rewardsController.tiersList.length,
              itemBuilder: (context, index) => LevelCard(
                    model: rewardsController.tiersList[index],
                  ))
        ],
      ),
    );
  }
}
