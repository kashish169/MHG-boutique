import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../../home/models/product_model.dart';
import '../repository/swipe_repo.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../repository/swipe_repo_impl.dart';

class SwipController extends GetxController {
  late SwipRepository swipRepository;
  SwipController() {
    swipRepository = Get.find<SwipeRepoImplement>();
  }

  var isError = false.obs;
  var isLoading = true.obs;
  var products = <SwipeItem>[].obs;
  // var productsLove = <ProductModel>[].obs;
  // var productsNope = <ProductModel>[].obs;

  @override
  Future<void> onInit() async {
    await getSwipeProducts();
    super.onInit();
  }

  Future<void> prefProduct(bool isLike, int id) async {
    Either<Failure, ApiResponse> results = await swipRepository.prefProduct(
        body: jsonEncode(
            {"product_id": id, "preference": isLike ? "like" : "skip"}));

    results.fold(
      (l) {
        isError(true);
        AppToasts.errorToast(l.message);
      },
      (r) {
        var statusCode = r.object["code"];
        var message = r.object["message"];
        if (statusCode == 200) {
        } else {
          AppToasts.errorToast(message);
          isError(true);
        }
      },
    );
  }

  // loveProduct(ProductModel productModel) {
  //   productsNope.add(productModel);
  // }

  // nopeProduct(ProductModel productModel) {
  //   productsLove.add(productModel);
  // }

  Future<void> getSwipeProducts() async {
    Either<Failure, ApiResponse> results =
        await swipRepository.getSwipProducts();
    isLoading.value = false;
    results.fold(
      (l) {
        isError(true);
        AppToasts.errorToast(l.message);
      },
      (r) {
        var statusCode = r.object["code"];
        var message = r.object["message"];
        if (statusCode == 200) {
          var json = r.object["data"]["products"]["data"];
          final List<ProductModel> products =
              (json as List).map((e) => ProductModel.fromJson(e)).toList();
          this.products.value =
              products.map((e) => SwipeItem(content: e)).toList();
        } else {
          AppToasts.errorToast(message);
          isError(true);
        }
      },
    );
  }
}
