import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/features/product_details/models/product_details_model.dart';
import 'package:mhg/features/product_details/repository/product_details_repo.dart';
import 'package:mhg/features/product_details/repository/product_details_repo_impl.dart';
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
  RxString productName = ''.obs;

  ProductDetailsController() {
    productDetailsRepository = Get.find<ProductDetailsRepoImplement>();
  }

  late ProductDetailsModel model;

  List<String> productImages = [];

  Future<void> getProductDetails() async {
    productImages.clear();
    try {
      isLoading(true);
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
            var json = r.object["data"]["product"];
            model = ProductDetailsModel.fromJson(json);
            productImages.add(
              model.primaryImageLink,
            );
            productImages.add(
              model.image2Link,
            );
            productImages.add(
              model.image3Link,
            );
            productImages.add(
              model.image4Link,
            );
            productImages.add(
              model.image5Link,
            );
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
            AppToasts.successToast(
              "The product has been added to the bag",
            );
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

  @override
  void onInit() {
    var data = Get.arguments;
    productId = data["id"];
    productName.value = data["name"];
    log("PRODUCT ID IS : $productId");
    getProductDetails();
    super.onInit();
  }
}
