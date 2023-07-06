import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../model/order_model.dart';
import '../repository/success_order_repo.dart';
import '../repository/success_order_repo_impl.dart';

class SucessOrderController extends GetxController {
  late SuccessOrderRepo successOrderRepo;

  SucessOrderController() {
    successOrderRepo = Get.find<SuccessOrderRepoImpl>();
  }
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  late Rxn<SuccessOrderModel> orderModel = Rxn<SuccessOrderModel>();

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results =
          await successOrderRepo.getData('hzTXPo');
      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          log("Privacy ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          var stats = r.object['isSuccessful'];
          log("Privacy Status Code $statusCode");
          if (stats == true) {
            var model = r.object['data'];
            orderModel.value = SuccessOrderModel.fromJson(model);
            print(orderModel.value);
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e) {
      isError(true);
      AppToasts.errorToast("$e");
      print("catch error" "$e");
    }
  }
}
