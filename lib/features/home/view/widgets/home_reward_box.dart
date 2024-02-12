import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../constants/app_colors.dart';
import '../../../profile/controller/profile_controller.dart';
import '../../../rewards/pages/rewards_page.dart';

class HomeRewardBox extends StatelessWidget {
  const HomeRewardBox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();

    return Obx(() => InkWell(
          onTap: () async {
            Get.toNamed(RewardsPage.routeName);
            // if (controller.model.value?.nextTierPts != "0.00" ||
            //     controller.model.value?.nextTier == null) {
            //   showDialog(
            //       context: context,
            //       builder: (context) {
            //         return BackdropFilter(
            //             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            //             child: AlertDialog(
            //               backgroundColor: Colors.white,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(20)),
            //               title: Text(
            //                 'Rewards Progress',
            //                 style: Theme.of(context)
            //                     .textTheme
            //                     .displaySmall
            //                     ?.copyWith(
            //                         fontSize: 18,
            //                         color: AppColors.primary,
            //                         fontWeight: FontWeight.bold),
            //               ),
            //               content: Column(
            //                 mainAxisSize: MainAxisSize.min,
            //                 children: [
            //                   LinearPercentIndicator(
            //                     padding: EdgeInsets.zero,
            //                     lineHeight: 12.0,
            //                     percent: indicatorPercent(),
            //                     barRadius: const Radius.circular(10),
            //                     progressColor: const Color(0XFF6E8674),
            //                     backgroundColor: Colors.grey[300],
            //                   ),
            //                   TitleValueWidget(
            //                       title: 'Orders',
            //                       value:
            //                           '${controller.model.value?.orderCount}'),
            //                   TitleValueWidget(
            //                       title: 'Pts',
            //                       value: '${controller.model.value!.hearts}'),
            //                 ],
            //               ),
            //             ));
            //       });
            // }
          },
          child: Container(
            color: AppColors.primary,
            width: double.infinity,
            height: 40,
            child: Center(
              child: Text(
                  controller.model.value?.nextTierPts != "0.00" ||
                          controller.model.value?.nextTier == null
                      ? 'Total Pts: ${controller.model.value!.hearts}'
                      : 'Unlock rewards with your first order! Start earning today.',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ));
  }
}

class TitleValueWidget extends StatelessWidget {
  const TitleValueWidget({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: 15,
                color: AppColors.blue,
                fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: 15,
                color: AppColors.primary,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

double indicatorPercent() {
  final controller = Get.find<ProfileController>();
  if (controller.model.value?.nextTierPts == 0) {
    return 1.0;
  } else {
    return double.parse(controller.model.value?.hearts ?? '0') /
        double.parse(
          "${controller.model.value?.nextTierPts ?? 0}",
        );
  }
}
