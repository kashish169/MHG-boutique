import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/features/my_wish_list/repository/wish_list_repo.dart';
import 'package:mhg/features/my_wish_list/repository/wish_list_repo_impl.dart';

import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

class WishListController extends GetxController {
  late WishListRepository wishListRepository;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;



  WishListController() {
    wishListRepository = Get.find<WishListRepoImpl>();
  }

  Future<bool> addToWishList(int itemId) async {
    bool result=false;
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
            result=true;
            AppToasts.successToast(
              "The product has been added to the wishlist",
            );
          } else {
            result=false;
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
    bool result=false;
    try {
      Map<String, dynamic> body = {"item_id": itemId};

      Either<Failure, ApiResponse> results =
      await wishListRepository.addToWishList(
        body: jsonEncode(body),
      );
      results.fold(
            (l) {
          AppToasts.errorToast(l.message);
          result= false;

        },
            (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];

          if (statusCode == 200) {

            AppToasts.successToast(
              "The product has been removed from the wishlist",
            );
            result= true;
          } else {
            AppToasts.errorToast(message);
            result= false;
          }
        },
      );
    } catch (e, s) {
      result= false;
      log("$e $s");
    }
    return result;
  }
}
