import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/checkout/models/payment_methods.dart';
import 'package:mhg/features/checkout/repository/checkout_repo.dart';
import 'package:mhg/features/checkout/repository/checkout_repo_imp.dart';
import 'package:mhg/features/mycart/models/cart_model.dart';

class CheckoutController extends GetxController {
  late CheckoutRepository checkoutRepository;
  late PaymentMethodsModel paymentMethodsModel;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxList<CartModel> cartItemsList = <CartModel>[].obs;
  RxDouble totalPrice = 0.0.obs;

  CheckoutController() {
    checkoutRepository = Get.find<CheckoutRepoImplement>();
  }

  Future<void> getAllPaymentMethods() async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results =
          await checkoutRepository.getPaymentMethods();
      isLoading(false);
      results.fold(
        (l) {
          isError(true);

          AppToasts.errorToast(l.message);
          log("PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          isError(false);
        
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("PAYMENT METHODS RESPONSE STATUS $statusCode");

          if (statusCode == 200) {
            var json = r.object["data"];
            log(json.toString());
            paymentMethodsModel =
                PaymentMethodsModel.fromJson(r.object["data"]);
          
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      isError(true);
      isLoading(false);
      log("$e $s");
    }
  }

  @override
  void onInit() {
    getAllPaymentMethods();

    super.onInit();
  }
}
