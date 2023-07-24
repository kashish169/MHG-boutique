import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/product_details/models/product_details_model.dart';
import 'package:mhg/features/product_details/models/product_review_model.dart';
import 'package:mhg/features/product_details/models/review_model.dart';
import 'package:mhg/features/product_details/repository/product_details_repo.dart';
import 'package:mhg/features/product_details/repository/product_details_repo_impl.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

class ProductDetailsController extends GetxController {
  late ProductDetailsRepository productDetailsRepository;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxBool isLoadingAdd = false.obs;
  RxBool isErrorAdd = false.obs;
  late int productId;
  late int selectedVariantId;
  RxInt selectedVariantInd = 0.obs;
  late bool fromArrival;
  RxString productName = ''.obs;
  final profileController = Get.find<ProfileController>();

  ProductDetailsController() {
    productDetailsRepository = Get.find<ProductDetailsRepoImplement>();
  }

  TextEditingController reviewNote = TextEditingController();
  double ratingValue = 1;
  late ProductDetailsModel model;

  List<String> productImages = [];
  RxList<ProductReviewModel> productsReviews = <ProductReviewModel>[].obs;

  Future<void> getProductDetails({bool withoutLoading = false}) async {
    productImages.clear();
    try {
      if (!withoutLoading) {
        isLoading(true);
      }
      isError(false);
      Either<Failure, ApiResponse> results =
          await productDetailsRepository.getProductDetails(
        productId: productId,
      );
      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          AppToasts.errorToast(l.message);
          log("PRODUCT DETAILS RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("PRODUCT DETAILS RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            log(r.object["data"].toString());
            var json = r.object["data"]["product"];
            model = ProductDetailsModel.fromJson(json);
            productsReviews.value = model.productReviews;
            selectedVariantId = model.variants[0].id;
            for (int i = 0; i < model.variants.length; i++) {
              if (model.variants[i].inCart == 1) {
                selectedVariantId = model.variants[i].id;
                selectedVariantInd.value = i;
              }
            }
            productName.value = model.enProductName;
            if (model.image2 != null) {
              productImages.add(
                model.image2Link,
              );
            }
            if (model.image3 != null) {
              productImages.add(
                model.image3Link,
              );
            }
            if (model.image4 != null) {
              productImages.add(
                model.image4Link,
              );
            }
            if (model.image5 != null) {
              productImages.add(
                model.image5Link,
              );
            }
          } else {
            isError(true);
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      isError(true);
    }
  }

  Future<bool> addProductToCart({
    required int productId,
  }) async {
    bool result = false;

    try {
      isLoadingAdd(true);
      isErrorAdd(false);
      Map<String, dynamic> body = {
        "item_id": productId,
        "qty": 1,
        "variant_id": selectedVariantId
      };
      Either<Failure, ApiResponse> results =
          await productDetailsRepository.addProductToCart(
        body: jsonEncode(body),
      );
      isLoadingAdd(false);
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("ADD PRODUCT TO CART RESPONSE ERROR ${l.message}");
          isErrorAdd(true);
          result = false;
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("ADD PRODUCT TO CART CART RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            result = true;
            List<ProductModel> temp =
                Get.find<HomeController>().newArrivalsList;
            for (int i = 0; i < temp.length; i++) {
              if (temp[i].id == productId) {
                temp[i].inCart = 1;
                temp[i].cartQty = 1;
                fromArrival = true;
              }
            }
            List<ProductModel> temp2 =
                Get.find<HomeController>().topSellersList;
            for (int i = 0; i < temp2.length; i++) {
              if (temp2[i].id == productId) {
                temp2[i].inCart = 1;
                temp2[i].cartQty = 1;
                fromArrival = false;
              }
            }
            Get.find<HomeController>()
                .updateList(fromArrival == true ? temp : temp2, fromArrival);
            AppToasts.successToast(
              "The product has been added to the bag",
            );
            Get.find<MyCartController>().getCart();
            Get.find<CheckoutController>().orderPrice();
            update();
          } else {
            result = false;
            isErrorAdd(true);
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      isErrorAdd(true);
      result = false;
    }
    return result;
  }

  Future<void> addReview({
    required int productId,
  }) async {
    if (reviewNote.text.trim().isEmpty) {
      AppToasts.errorToast("Please Write Your Review");
      return;
    }
    AppHelper.closeKeyboard();
    Get.dialog(
      const LoadingWidget(),
      barrierDismissible: false,
    );
    try {
      Map<String, dynamic> body = {
        "product_id": productId,
        "rate": ratingValue,
        "review": reviewNote.text.trim()
      };
      Either<Failure, ApiResponse> results =
          await productDetailsRepository.addReview(
        body: jsonEncode(body),
      );
      Get.back();
      results.fold(
        (l) {
          AppToasts.errorToast(l.message);
          log("REVIEW RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("REVIEW RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            reviewNote.clear();
            var json = r.object["data"]["review"];
            var model = ReviewModel.fromJson(json);
            // for (int i = 0; i < productsReviews.length; i++) {
            //   if (model.userId == productsReviews[i].user.id) {
            //     print('${model.id}');
            //     print('===========${productsReviews[i].id}');
            //     print('update');
            //   } else {
            //     print('add');
            //   }
            // }
            // productsReviews.add(ProductReviewModel(
            //   id: model.id,
            //   rating: model.rating,
            //   feedback: model.feedback,
            //   productId: productId,
            //   userId: profileController.model.value!.id,
            //   createdAt: model.createdAt,
            //   updatedAt: model.updatedAt,
            //   user: User(
            //     id: profileController.model.value!.id,
            //     name: profileController.model.value?.name ?? '',
            //     imageLink: profileController.model.value?.imageLink,
            //   ),
            // ));
            getProductDetails(withoutLoading: true);
            AppToasts.successToast("Your review has been added successfully");
            Get.back();
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
    var data = Get.arguments;
    productId = data["id"];
    fromArrival = data["fromArrival"];
    productName.value = data["name"];
    log("PRODUCT ID IS : $productId");
    getProductDetails();
    super.onInit();
  }
}
