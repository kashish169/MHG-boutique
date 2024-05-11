import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;
import '../../../../constants/app_colors.dart';
import '../../../mainwrapper/view/widgets/main_app_bar.dart';
import '../../../profile/controller/profile_controller.dart';
import '../../../rewards/pages/rewards_page.dart';

class HomeRewardBox extends StatelessWidget {
  const HomeRewardBox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();

    return Obx(() => ClipRect(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: controller.rewardBannerIsScrlling.value ? 10 : 0,
              sigmaY: controller.rewardBannerIsScrlling.value ? 10 : 0,
            ),
            child: Container(
              color: Colors.white
                  .withOpacity(controller.rewardBannerIsScrlling.value ? 1 : 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const MainAppBar(),
                  if (!controller.rewardBannerIsScrlling.value)
                    Divider(color: Colors.black.withOpacity(0.2), thickness: 1),
                  if (!controller.rewardBannerIsScrlling.value)
                    InkWell(
                        onTap: () async {
                          Get.toNamed(RewardsPage.routeName);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, bottom: 8, top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GetX<ProfileController>(builder: (controller) {
                                if (controller.isLoading.isTrue) {
                                  return Text(
                                    '${controller.greeting()},....',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium
                                        ?.copyWith(
                                          color: AppColors.black3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                  );
                                } else if (controller.isError.isTrue) {
                                  Text(
                                    "${controller.greeting()}, ....",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium
                                        ?.copyWith(
                                          color: AppColors.black3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                  );
                                }
                                return Text(
                                  "${controller.greeting()}, ${controller.model.value?.name ?? ""}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(
                                        color: AppColors.black3,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                );
                              }),
                              Text(
                                  controller.model.value?.nextTierPts !=
                                              "0.00" ||
                                          controller.model.value?.nextTier ==
                                              null
                                      ? '${controller.model.value?.hearts ?? 0} Pts'
                                      : 'Unlock rewards with your first order! Start earning today.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall
                                      ?.copyWith(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold))
                            ],
                          ),
                        ))
                ],
              ),
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
