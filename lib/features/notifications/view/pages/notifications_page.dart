import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/notifications/controller/notification_controller.dart';
import 'package:mhg/features/notifications/view/widgets/notification_item.dart';
import 'package:mhg/widgets/divider_widget.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';

class NotificationsPage extends StatelessWidget {
  static String routeName = '/notify';
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarWidget(),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        title: Text(
          'Notifications'.tr,
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: AppColors.white),
        ),
        leading: IconButton(
          color: AppColors.white,
          icon: const Icon(
            Icons.close,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: GetX<NotificationController>(initState: (state) {
        state.controller?.getNotifications();
      }, builder: (controller) {
        if (controller.isLoading.isTrue) {
          return const LoadingWidget();
        } else if (controller.isError.isTrue) {
          return RetryButton(
            onTap: () {
              controller.getNotifications();
            },
          );
        }
        return controller.notificationsList.isEmpty
            ? Center(
                child: Text(
                  'Notifications will appear here!'.tr,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              )
            : ListView.separated(
                controller: controller.scrollController,
                padding: const EdgeInsets.only(bottom: 25),
                itemCount: controller.notificationsList.length,
                itemBuilder: (context, index) {
                  if (index == controller.notificationsList.length) {
                    return Obx(() => controller.isFetching.isTrue
                        ? Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primary,
                            ),
                          )
                        : const SizedBox());
                  }
                  return NotificationItem(
                    model: controller.notificationsList[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return const DividerWidget();
                },
              );
      }),
    );
  }
}
