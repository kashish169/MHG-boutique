import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/models/brand_model.dart';
import 'package:mhg/features/home/models/home_model.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/home/repository/home_repo.dart';
import 'package:mhg/features/home/repository/home_repo_impl.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../models/category_model.dart';
import '../models/slider_model.dart';

class HomeController extends GetxController {
  late HomeRepository homeRepository;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;

  HomeController() {
    homeRepository = Get.find<HomeRepoImplement>();
  }

  List<SliderModel> slidersList = [];
  RxList<ProductModel> topSellersList = <ProductModel>[].obs;
  RxList<ProductModel> newArrivalsList = <ProductModel>[].obs;
  List<BrandModel> brandsList = [];
  List<CategoryModel> categories = [];

  updateList(List<ProductModel> model, bool fromArrival) {
    for (int i = 0; i < model.length; i++) {
      if (fromArrival) {
        newArrivalsList[i] = model[i];
      } else {
        topSellersList[i] = model[i];
      }
    }
  }

  Future<void> getHome() async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results = await homeRepository.getHome();
      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          log("HOME RESPONSE ERROR ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          log("HOME RESPONSE STATUS $statusCode");
          if (statusCode == 200) {
            var json = r.object["data"];
            var data = HomeModel.fromJson(json);
            slidersList = data.sliders;
            topSellersList.value = data.topSellers;
            newArrivalsList.value = data.newArrivals;
            brandsList = data.brands;
            categories = data.categories;
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
    getHome();
    super.onInit();
  }
}
