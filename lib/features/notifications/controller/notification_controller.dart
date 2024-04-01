import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/notifications/models/notification_model.dart';
import 'package:mhg/features/notifications/repository/notification_impl.dart';
import 'package:mhg/features/notifications/repository/notification_repo.dart';

class NotificationController extends GetxController {
  late NotificationRepo notificationRepo;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;

  NotificationController() {
    notificationRepo = Get.put(NotificationImpl());
  }

  RxList<NotificationModel> notificationsList = <NotificationModel>[].obs;
  ScrollController scrollController = ScrollController();
  RxBool isFetching = false.obs;
  RxBool isEmpty = false.obs;
  int page = 1;
  int last = 1000;
  @override
  void onInit() {
    paginate();
    super.onInit();
  }

  Future<void> paginate() async {
    log("pagination .................................");
    scrollController.addListener(() {
      if (scrollController.offset ==
              scrollController.position.maxScrollExtent &&
          !isFetching.value &&
          isEmpty.value == false) {
        page++;
        if (notificationsList.length < last) {
          log(notificationsList.length.toString());
          log(last.toString());
          getNotifications();
        }
      }
    });
  }

  resetPaginate() {
    page = 1;
    last = 1000;
    isFetching.trigger(false);
    isEmpty.trigger(false);
    notificationsList.clear();
  }

  Future<void> getNotifications() async {
    if (page == 1) {
      isLoading(true);
    } else {
      isFetching.trigger(true);
    }

    isError(false);
    log("page $page");
    var query = "?page=$page";
    log(query);
    Either<Failure, ApiResponse> results =
        await notificationRepo.getNotifications(
      query,
    );
    if (page == 1) {
      isLoading(false);
    } else {
      isFetching.trigger(false);
    }
    results.fold(
      (l) {
        if (page > 1) {
          page--;
        }
        log('$l');
      },
      (r) {
        if (r.statusCode == 200) {
          var json = r.object;
          log('notificationData${r.object}');
          last = r.object['data']['total'];
          notificationsList += List<NotificationModel>.from(
              json["data"]["data"].map((x) => NotificationModel.fromJson(x)));
          update();
        } else {
          log(r.object.toString());
          if (page > 1) {
            page--;
          }
        }
      },
    );
  }
}
