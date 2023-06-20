import 'dart:convert';
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
  PaymentMethodsModel paymentMethodsModel = PaymentMethodsModel();
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxList<CartModel> cartItemsList = <CartModel>[].obs;
  RxDouble totalPrice = 0.0.obs;
  RxString cardType = ''.obs;
  RxString cardNumber = ''.obs;
  RxString shippingName = ''.obs;

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
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("PAYMENT METHODS RESPONSE STATUS $statusCode");

          if (statusCode == 200) {
            if (r.object["data"] != null) {
              paymentMethodsModel = PaymentMethodsModel.fromJson(r.object);

              cardType(paymentMethodsModel.data![0].cardType);
              cardNumber(
                  getCodedNumber(paymentMethodsModel.data![0].cardNumber));
            }
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  String getCodedNumber(String? cardNumber) {
    return cardNumber!
        .substring(cardNumber.indexOf('*'))
        .replaceRange(0, 2, "");
  }

  @override
  void onInit() {
    getAllPaymentMethods();

    super.onInit();
  }
}
