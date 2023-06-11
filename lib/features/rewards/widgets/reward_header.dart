import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RewardHeader extends StatelessWidget {
  const RewardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AppAssets.cardBackground,
              ),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 12,
                left: 12,
                right: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rewards Progress',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontSize: 15, color: AppColors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Visibility(
                    visible: controller.model.value!.currentTier != null
                        ? true
                        : false,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Image.asset(
                            controller.getLevelIcon(),
                            height: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Current Level",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                        color: AppColors.secondary,
                                        fontSize: 10),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                controller.model.value!.currentTier ?? '_',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.white,
                                    ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  controller.model.value!.nextTierPts != 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: LinearPercentIndicator(
                              padding: EdgeInsets.zero,
                              lineHeight: 12.0,
                              percent: double.parse(
                                      controller.model.value!.hearts ?? '0') /
                                  double.parse(controller
                                      .model.value!.nextTierPts
                                      .toString()),
                              barRadius: const Radius.circular(10),
                              progressColor: const Color(0XFF6E8674),
                              backgroundColor: Colors.grey[300],
                            )),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${controller.model.value!.hearts}/${controller.model.value!.nextTierPts}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                      fontSize: 11, color: AppColors.white),
                            )
                          ],
                        )
                      : FittedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              'Unlock rewards with your first order! Start earning today.',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(color: AppColors.white),
                            ),
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: controller.model.value!.nextTierPts != 0
                        ? Text(
                            '${controller.model.value!.nextTierPtsLeft} Until ${controller.model.value!.nextTier}',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    fontSize: 10, color: AppColors.white),
                          )
                        : const SizedBox(),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: controller.model.value!.nextTierPts != 0
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                          'Your Orders And Points',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 13, color: AppColors.white),
                        )),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '${controller.model.value!.orderCount} Orders = ${controller.model.value!.hearts} Pts',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(fontSize: 11, color: AppColors.white),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
