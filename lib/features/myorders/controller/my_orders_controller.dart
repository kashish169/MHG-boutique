import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/myorders/models/order_model.dart';
import 'package:mhg/features/myorders/repository/my_orders_repo.dart';
import 'package:mhg/features/myorders/repository/my_orders_repo_impl.dart';
import 'package:mhg/widgets/loading_widget.dart';
import '../../../widgets/show_snakBar.dart';

class MyOrdersController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxBool showMessage = false.obs;
  late MyOrdersRepository myOrdersRepository;
  late MyOrdersModel myOrdersModel;
  RxList<MyOrder> orders = <MyOrder>[].obs;
  RxList<MyOrder> returns = <MyOrder>[].obs;
  RxList<MyOrder> cancelled = <MyOrder>[].obs;
  TextEditingController message = TextEditingController();

  MyOrdersController() {
    myOrdersRepository = Get.find<MyOrdersRepoImpl>();
  }

  @override
  onInit() {
    getMyOrders();
    super.onInit();
  }

  Future<void> getMyOrders() async {
    isLoading(true);
    isError(false);
    Either<Failure, ApiResponse> results = await myOrdersRepository.getOrders();
    isLoading(false);
    results.fold(
      (l) {
        isError(true);
        AppToasts.errorToast(l.message);
        log("Orders${l.message}");
      },
      (r) {
        var statusCode = r.object["code"];
        var message = r.object["message"];
        var stats = r.object['isSuccessful'];
        log("MyOrders Status Code $statusCode");
        if (stats == true) {
          var json = r.object["data"];
          myOrdersModel = MyOrdersModel.fromJson(json);
          filterOrders();
          log(myOrdersModel.toString());

          log(r.object["data"].toString());
        } else {
          AppToasts.errorToast(message);
        }
      },
    );
  }

  filterOrders() {
    returns.clear();
    cancelled.clear();
    orders.clear();

    for (int i = 0; i < myOrdersModel.orders.length; i++) {
      if (myOrdersModel.orders[i].orderStatus == 6) {
        returns.add(myOrdersModel.orders[i]);
      } else {
        if (myOrdersModel.orders[i].orderStatus == 5) {
          cancelled.add(myOrdersModel.orders[i]);
        } else {
          orders.add(myOrdersModel.orders[i]);
        }
      }
    }
  }

  String getStatus(int ind) {
    String temp = '';
    if (ind == 1) {
      temp = 'PENDING';
    }
    if (ind == 2) {
      temp = 'PROCESSING';
    }
    if (ind == 3) {
      temp = 'SHIPPED';
    }
    if (ind == 4) {
      temp = 'DELIVERED';
    }
    return temp;
  }

  Color getStatusColor(int ind) {
    if (ind == 1) {
      return AppColors.primary;
    }
    if (ind == 2) {
      return AppColors.primary;
    }
    if (ind == 3) {
      return AppColors.primary;
    }
    if (ind == 4) {
      return AppColors.primary;
    }
    if (ind == 5) {
      return AppColors.secondary;
    }
    return AppColors.secondary;
  }

  Future<void> cancelOrder({required String orderNumber}) async {
    var body =
        jsonEncode({"order_number": orderNumber, "message": message.text});
    Get.dialog(
      const LoadingWidget(),
      barrierDismissible: false,
    );
    Either<Failure, ApiResponse> results = await myOrdersRepository.cancelOrder(
      body: body,
    );
    Get.back();

    results.fold(
      (l) {
        showSnackBar(l.message);
      },
      (r) async {
        log("${r.object}");
        int statusCode = r.object["code"];
        var message = r.object['message'];
        if (statusCode == 200) {
          getMyOrders();
          AppToasts.successToast(r.object['data']);
          Get.back();
        } else if (statusCode == 400) {
          AppToasts.errorToast(message);
        } else {
          AppToasts.errorToast(message);
        }
      },
    );
  }

  Future<void> returnOrder({required String orderNumber}) async {
    var body =
        jsonEncode({"order_number": orderNumber, "message": message.text});
    Get.dialog(
      const LoadingWidget(),
      barrierDismissible: false,
    );
    Either<Failure, ApiResponse> results = await myOrdersRepository.returnOrder(
      body: body,
    );
    Get.back();
    results.fold(
      (l) {
        showSnackBar(l.message);
      },
      (r) async {
        log("${r.object}");
        int statusCode = r.object["code"];
        var message = r.object['message'];
        if (statusCode == 200) {
          getMyOrders();
          AppToasts.successToast(r.object['data']);
          Get.back();
        } else if (statusCode == 400) {
          AppToasts.errorToast(message);
        } else {
          AppToasts.errorToast(message);
        }
      },
    );
  }
}
