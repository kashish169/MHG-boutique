import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/setting/controller/setting_controller.dart';
import '../../../../app/app.dart';

class AllowNotification extends StatelessWidget {
  const AllowNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SettingController>();
    return Obx(() => InkWell(
          onTap: () {
            controller.notificationAllowed.value =
                !controller.notificationAllowed.value;
            App.notifyMe = controller.notificationAllowed.value;
            controller.updateNotification(
              controller.notificationAllowed.value,
            );
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
                    AppAssets.notification,
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
                        'Allow Notifications',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Stay up to date on latest offers and more',
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
                    value: controller.notificationAllowed.value,
                    activeColor: Colors.white, activeTrackColor: Colors.black,
                    onChanged: (bool value) {
                      controller.notificationAllowed.value =
                          !controller.notificationAllowed.value;
                      App.notifyMe = controller.notificationAllowed.value;
                      controller.updateNotification(
                        controller.notificationAllowed.value,
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
