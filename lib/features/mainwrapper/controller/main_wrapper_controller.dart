import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/services/deep_link_service.dart';
import '../repository/main_wrapper_repo_impl.dart';
import '../repository/main_wrapper_repository.dart';

class MainWrapperController extends GetxController {
  late MainWrapperRepo mainWrapperRepo;

  MainWrapperController() {
    mainWrapperRepo = Get.find<MainWrapperRepoImpl>();
  }

  RxInt navBarIndex = 0.obs;
  RxBool isLoadingAdd = false.obs;
  RxBool isErrorAdd = false.obs;
  String? globalGuestCountryCode;
  String? globalGuestCountryFlag;
  int? globalGuestCountryId;

  void changeNavi(int index) {
    navBarIndex.value = index;
  }

  Future<void> launchUrl(String url) async {
    try {
      // ignore: deprecated_member_use
      if (await canLaunch(url)) {
        // ignore: deprecated_member_use
        await launch(url);
      } else {
        AppToasts.errorToast("Error Launch URL");
      }
    } catch (e) {
      log('$e');
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
          await mainWrapperRepo.addProductToCart(
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
            bool fromArrival = false;
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

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning'.tr;
    }
    if (hour < 17) {
      return 'Good Afternoon'.tr;
    }
    return 'Good Evening'.tr;
  }

  @override
  void onInit() {
    DeepLinkSevice.initDynamicLink();
    super.onInit();
  }
}
