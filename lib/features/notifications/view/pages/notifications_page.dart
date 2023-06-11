import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_colors.dart';

import 'package:mhg/features/notifications/controller/notification_controller.dart';
import 'package:mhg/features/notifications/view/widgets/notification_item.dart';
import 'package:mhg/widgets/divider_widget.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';

class NotificationsPage extends StatefulWidget {
  static String routeName='/notify';
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    Get.find<NotificationController>().getNotifications();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
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
      body: GetX<NotificationController>(builder: (controller) {
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
            'Notifications will appear here!',
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

  @override
  bool get wantKeepAlive => true;
}
