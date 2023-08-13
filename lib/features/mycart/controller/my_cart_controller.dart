import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/mycart/repository/my_cart_repo.dart';
import 'package:mhg/features/mycart/repository/my_cart_repo_impl.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../../checkout/views/pages/checkout_page.dart';
import '../models/cart_model.dart';

class MyCartController extends GetxController {
  late MyCartRepository myCartRepository;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxDouble columnSize = 0.0.obs;

  MyCartController() {
    myCartRepository = Get.find<MyCartRepoImplement>();
  }

  RxList<CartModel> cartItemsList = <CartModel>[].obs;
  RxDouble totalPrice = 0.0.obs;
  RxDouble discount = 0.0.obs;
  RxDouble tax = 0.0.obs;
  RxDouble subTotal = 0.0.obs;
  RxBool isGiveAway = false.obs;
  Future<void> getCart() async {
    try {
      if (cartItemsList.isEmpty) isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results = await myCartRepository.getCart();
      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          AppToasts.errorToast(l.message);
          log("CART RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("CART RESPONSE STATUS $statusCode");
          log(r.object["data"].toString());
          if (statusCode == 200) {
            log("////////////");
            log(r.object["data"].toString());
            log("////////////");
            var json = r.object["data"]["cart_items"];
            cartItemsList.value =
                List<CartModel>.from(json.map((x) => CartModel.fromJson(x)));
            checkIfThereGiveAway();
            // getTotalCartPrice();
            // getDiscount();
            // getSubTotalPrice();
            // getDiscount();
          } else {
            AppToasts.errorToast(message);
            isError(true);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      isError(true);
    }
  }

  Future<bool> increaseCartItem({
    required int cartItemId,
    required int quantity,
    required int variantId,
  }) async {
    bool result = false;
    try {
      Map<String, dynamic> body = {
        "item_id": cartItemId,
        "qty": quantity,
        "variant_id": variantId
      };
      Either<Failure, ApiResponse> results =
          await myCartRepository.increaseCartItem(
        body: jsonEncode(body),
      );
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("INCREASE CART RESPONSE ERROR ${l.message}");
          result = false;
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("INCREASE CART RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            Get.find<CheckoutController>().orderPrice();
            result = true;

            log("CART ITEM QUANTITY INCREASED");
          } else {
            result = false;

            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      result = false;
    }
    return result;
  }

  Future<bool> decreaseCartItem({
    required int cartItemId,
    required int quantity,
    required int variantId,
  }) async {
    bool result = false;
    try {
      Map<String, dynamic> body = {
        "item_id": cartItemId,
        "qty": quantity,
        "variant_id": variantId
      };
      Either<Failure, ApiResponse> results =
          await myCartRepository.decreaseCartItem(
        body: jsonEncode(body),
      );
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("DECREASE CART RESPONSE ERROR ${l.message}");
          result = false;
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("DECREASE CART RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            log("CART ITEM QUANTITY DECREASED");
            result = true;
            Get.find<CheckoutController>().orderPrice();
          } else {
            AppToasts.errorToast(message);
            result = false;
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      result = false;
    }
    return result;
  }

  Future<void> deleteCartItem(int cartItemId, int variantId) async {
    try {
      Map<String, dynamic> body = {
        "item_id": cartItemId,
        "variant_id": variantId
      };
      Either<Failure, ApiResponse> results =
          await myCartRepository.deleteCartItem(
        body: jsonEncode(body),
      );
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("DELETE CART RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("DELETE CART RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            AppToasts.successToast(
              "The product has been removed from the cart",
            );
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  void getTotalCartPrice() {
    totalPrice.value = 0;
    for (var element in cartItemsList) {
      if (element.options.discountPrice != null) {
        if (double.parse(
              element.options.discountParcent ?? '0',
            ).round() ==
            0) {
          totalPrice.value += element.weight.toDouble() * element.qty;
        } else {
          totalPrice.value +=
              double.parse(element.options.discountPrice ?? '') * element.qty;
        }
      }
    }
    debugPrint("TOTAL CART PRICE : $totalPrice");
  }

  void getSubTotalPrice() {
    subTotal.value = 0;
    for (var element in cartItemsList) {
      if (element.subtotal != null) {
        subTotal.value += element.subtotal.toDouble();
      }
    }
    debugPrint("TOTAL subTotal PRICE : $subTotal");
  }

  void getTax() {
    tax.value = 0;
    for (var element in cartItemsList) {
      if (element.tax != null) {
        tax.value += element.tax.toDouble();
      }
    }
    debugPrint("TOTAL subTotal PRICE : $subTotal");
  }

  void getDiscount() {
    discount.value = 0;
    for (var element in cartItemsList) {
      if (element.discount != null) {
        discount.value += element.discount.toDouble();
      }
    }
    debugPrint("TOTAL subTotal PRICE : $subTotal");
  }

  checkIfThereGiveAway() {
    if (cartItemsList
            .indexWhere((cartModel) => cartModel.options.isGiveAway == 1) !=
        -1) {
      isGiveAway.value = true;
      log('There is Give away item hide cod (giveAway Value is)$isGiveAway');
    } else {
      isGiveAway.value = false;
      log("There is no Give away item don't hide cod (giveAway Value is)$isGiveAway");
    }
  }

  checkForGiveAwayItems() {
    CheckoutController checkoutController = Get.find();
    if (cartItemsList
            .indexWhere((cartModel) => cartModel.options.isGiveAway == 1) !=
        -1) {
      checkoutController.isGiveAway = true;
      log('There is Give away item hide cod');

      Get.toNamed(
        CheckoutPage.routeName,
      );
      checkoutController.getPaymentMethods();
    } else {
      checkoutController.isGiveAway = false;
      log("There is no Give away item don't hide cod");
      Get.toNamed(CheckoutPage.routeName);
      checkoutController.getPaymentMethods();
    }
  }

  @override
  void onInit() {
    if (App.token.isNotEmpty) {
      getCart();
    }
    super.onInit();
  }
}
