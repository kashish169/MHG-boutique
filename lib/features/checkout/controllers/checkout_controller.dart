import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/checkout/models/add_payment_methods_model.dart';
import 'package:mhg/features/checkout/models/payment_methods_model.dart';
import 'package:mhg/features/checkout/models/remove_payment_method_model.dart';
import 'package:mhg/features/checkout/models/set_default_payment_method_model.dart';
import 'package:mhg/features/checkout/repository/checkout_repo.dart';
import 'package:mhg/features/checkout/repository/checkout_repo_imp.dart';
import 'package:mhg/features/mycart/models/cart_model.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

/*
 * 5123450000000008
4508750015741019
345678901234564
4464040000000007
4228230000000001
 */
class CheckoutController extends GetxController {
  late CheckoutRepository checkoutRepository;
  PaymentMethodsModel paymentMethodsModel = PaymentMethodsModel();
  AddPaymentMethodsModel addPaymentMethodsModel = AddPaymentMethodsModel();
  RemovePaymentMethodsModel removePaymentMethodsModel =
      RemovePaymentMethodsModel();
  SetDefaultPaymentMethodsModel setDefaultPaymentMethodsModel =
      SetDefaultPaymentMethodsModel();
  late final WebViewController webViewController;
   final ProfileController profileController = Get.find<ProfileController>();
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxList<CartModel> cartItemsList = <CartModel>[].obs;
  RxDouble totalPrice = 0.0.obs;
  RxString cardType = ''.obs;
  RxString cardNumber = ''.obs;
  RxString shippingName = ''.obs;
  RxString paymentMethod = ''.obs;
  RxInt loadingPercentage = 0.obs;

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

  addPaymentMethod() async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results =
          await checkoutRepository.addPaymentMethod();
      isLoading(false);

      results.fold(
        (l) {
          isError(true);
          AppToasts.errorToast(l.message);
          log("Add PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("Add PAYMENT METHODS RESPONSE STATUS $statusCode");

          if (statusCode == 200) {
            if (r.object["data"] != null) {
              addPaymentMethodsModel =
                  AddPaymentMethodsModel.fromJson(r.object);
              Get.toNamed('/add_payment_method_web_view');
              webViewController = WebViewController()
                ..setJavaScriptMode(JavaScriptMode.unrestricted)
                ..setBackgroundColor(const Color(0x00000000))
                ..setNavigationDelegate(
                  NavigationDelegate(
                    onPageStarted: (url) {
                      print(url);
                      loadingPercentage(0);
                    },
                    onProgress: (progress) {
                       print(progress);
                      loadingPercentage(progress);
                    },
                    onPageFinished: (url) async {
                       print(url);
                      loadingPercentage(100);
                    },
                  ),
                )
                ..loadRequest(
                  Uri.parse(addPaymentMethodsModel.data!.link!),
                );
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

  deletePaymentMethod(paymentMethodID) async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results =
          await checkoutRepository.deletePaymentMethod(paymentMethodID);

      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          AppToasts.errorToast(l.message);

          log("DELETE PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("DELETE PAYMENT METHODS RESPONSE STATUS $statusCode");

          if (statusCode == 200) {
            if (r.object["data"] != null) {
              removePaymentMethodsModel =
                  RemovePaymentMethodsModel.fromJson(r.object);

              getAllPaymentMethods();
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

  setDefaultPaymentMethod(paymentMethodID) async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results = await checkoutRepository
          .setDefaultPaymentMethod(int.parse(paymentMethodID));

      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          AppToasts.errorToast(l.message);

          log("SET DEFAULT PAYMENT METHODS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("SET DEFAULT PAYMENT METHODS RESPONSE STATUS $statusCode");

          if (statusCode == 200) {
            if (r.object["data"] != null) {
              setDefaultPaymentMethodsModel =
                  SetDefaultPaymentMethodsModel.fromJson(r.object);

              paymentMethod(setDefaultPaymentMethodsModel.data!.id.toString());

              getAllPaymentMethods();
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

  @override
  void onInit() {
    getAllPaymentMethods();
    super.onInit();
  }
}
