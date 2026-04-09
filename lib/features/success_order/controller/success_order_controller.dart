import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../../myorders/models/order_model.dart';
import '../repository/success_order_repo.dart';
import '../repository/success_order_repo_impl.dart';

class SucessOrderController extends GetxController {
  late SuccessOrderRepo successOrderRepo;
  SucessOrderController() {
    successOrderRepo = Get.find<SuccessOrderRepoImpl>();
  }
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  // late Rxn<SuccessOrderModel> orderModel = Rxn<SuccessOrderModel>();
  // String orderNumber = Get.arguments['orderNumber'];
  late MyOrder orderModel;

  @override
  void onInit() {
    getMyOrders();
    super.onInit();
  }

  Future<void> getMyOrders() async {
    isLoading(true);
    isError(false);
    Either<Failure, ApiResponse> results = await successOrderRepo.getOrders();
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
          log(r.object["data"].toString());
          var myOrdersModel = MyOrdersModel.fromJson(json);
          orderModel = myOrdersModel.orders.first;
        } else {
          isError(true);
          AppToasts.errorToast(message);
        }
      },
    );
  }
}
