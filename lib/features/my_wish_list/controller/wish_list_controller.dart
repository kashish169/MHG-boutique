import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import 'package:mhg/features/my_wish_list/repository/wish_list_repo.dart';
import 'package:mhg/features/my_wish_list/repository/wish_list_repo_impl.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

class WishListController extends GetxController {
  late WishListRepository wishListRepository;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxList<WishListModel> wishListItems = <WishListModel>[].obs;
  WishListController() {
    wishListRepository = Get.find<WishListRepoImpl>();
  }
  HomeController controller = Get.find();

  Future<bool> addToWishList(int itemId) async {
    bool result = false;
    try {
      Map<String, dynamic> body = {"item_id": itemId};
      Either<Failure, ApiResponse> results =
          await wishListRepository.addToWishList(
        body: jsonEncode(body),
      );
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];

          if (statusCode == 200) {
            List json = r.object["data"]['wishlist_items'];
            wishListItems.value =
                json.map((e) => WishListModel.fromJson(e)).toList();
            result = true;
            controller.update();
            AppToasts.successToast(
              "The product has been added to the wishlist",
            );
          } else {
            result = false;
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
    return result;
  }

  Future<bool> removeFromWishList(int itemId) async {
    bool result = false;
    try {
      Map<String, dynamic> body = {"item_id": itemId};

      Either<Failure, ApiResponse> results =
          await wishListRepository.removeFromWishList(
        body: jsonEncode(body),
      );
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          result = false;
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];

          if (statusCode == 200) {
            AppToasts.successToast(
              "The product has been removed from the wishlist",
            );
            result = true;
            List json = r.object["data"]['wishlist_items'];
            wishListItems.value =
                json.map((e) => WishListModel.fromJson(e)).toList();
            controller.update();
            // wishListItems.removeWhere((element) => element.id == itemId);
          } else {
            AppToasts.errorToast(message);
            result = false;
          }
        },
      );
    } catch (e, s) {
      result = false;
      log("$e $s");
    }
    return result;
  }

  Future<void> getWishList({bool withoutLoading = false}) async {
    try {
      if(withoutLoading==true){
        isLoading(true);
      }

      isError(false);
      Either<Failure, ApiResponse> results =
          await wishListRepository.getWishListData();
      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          log("Wish List ${l.message}");
        },
        (r) {
          log("here");
          log(r.object["data"].toString());
          var statusCode = r.object["code"];
          var message = r.object["message"];
          var stats = r.object['isSuccessful'];
          log("Wish List Status Code $statusCode");
          if (stats == true) {

            List json = r.object["data"]['wishlist_items'];
            wishListItems.value =
                json.map((e) => WishListModel.fromJson(e)).toList();
            print(wishListItems.length);
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      isError(true);
      print("catch error" "$e,$s");
    }
  }

  Future<bool> addProductToCart({
    required int productId,
  }) async {
    bool result = false;

    try {
      Map<String, dynamic> body = {
        "item_id": productId,
        "qty": 1,
      };
      Either<Failure, ApiResponse> results = await wishListRepository.addToBag(
        body: jsonEncode(body),
      );
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("ADD PRODUCT TO CART RESPONSE ERROR ${l.message}");
          result = false;
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("ADD PRODUCT TO CART CART RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            result = true;
            Get.find<MyCartController>().getCart();
            Get.find<CheckoutController>().orderPrice();
            AppToasts.successToast(
              "The product has been added to the bag",
            );
          } else {
            result = false;
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      isError(true);
      result = false;
      AppToasts.errorToast("$e");
    }
    return result;
  }

  chechBeforAdd(int index) async {
    var result = await addProductToCart(
      productId: wishListItems[index].id,
    );
    if (result) {
      wishListItems[index].options.inCart = 1;
      wishListItems[index].options.cartQuantity = 1;
      update();
    }
  }

  @override
  void onInit() {
    if (App.token.isNotEmpty) {
      getWishList();
    }
    super.onInit();
  }
}
