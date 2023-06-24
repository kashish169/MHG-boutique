import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/features/mycart/repository/my_cart_repo.dart';
import 'package:mhg/features/mycart/repository/my_cart_repo_impl.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
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
          if (statusCode == 200) {
            var json = r.object["data"]["cart_items"];
            cartItemsList.value =
                List<CartModel>.from(json.map((x) => CartModel.fromJson(x)));
            getTotalCartPrice();
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<bool> increaseCartItem({
    required int cartItemId,
    required int quantity,
  }) async {
    bool result = false;
    try {
      Map<String, dynamic> body = {
        "item_id": cartItemId,
        "qty": quantity,
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
  }) async {
    bool result = false;
    try {
      Map<String, dynamic> body = {
        "item_id": cartItemId,
        "qty": quantity,
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

  Future<void> deleteCartItem(int cartItemId) async {
    try {
      Map<String, dynamic> body = {"item_id": cartItemId};
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
}
