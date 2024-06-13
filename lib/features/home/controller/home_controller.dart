import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/features/home/models/home_model.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/home/repository/home_repo.dart';
import 'package:mhg/features/home/repository/home_repo_impl.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../../categories/models/menu.dart';
import '../models/recent_search_model.dart';
import '../models/slider_model.dart';

class HomeController extends GetxController {
  late HomeRepository homeRepository;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;

  HomeController() {
    homeRepository = Get.find<HomeRepoImplement>();
  }

  RxInt lengthHomeSections = 0.obs;
  RxList<int> categoryIdsToppSeller = <int>[].obs;
  RxList<List<SliderModel>> slidersList = <List<SliderModel>>[].obs;
  RxList<List<ProductModel>> topSellersList = <List<ProductModel>>[].obs;
  RxList<ProductModel> newArrivalsList = <ProductModel>[].obs;
  RxList<List<MenuModel>> categories = <List<MenuModel>>[].obs;
  RxList<RecentSearchModel> recentSearchList = <RecentSearchModel>[].obs;

  updateList(
      {List<List<ProductModel>>? topSellers, List<ProductModel>? arrivals}) {
    if (arrivals != null) {
      for (int i = 0; i < arrivals.length; i++) {
        newArrivalsList[i] = arrivals[i];
      }
    } else {
      for (int i = 0; i < topSellers!.length; i++) {
        for (int j = 0; j < topSellers[i].length; j++) {
          topSellersList[i][j] = topSellers[i][j];
        }
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

          if (statusCode == 200) {
            var json = r.object["data"];

            var data = HomeModel.fromJson(json);
            log('HOME HOME HOME: ${data.homeSections.length}');
            lengthHomeSections.value = data.homeSections.length;
            categoryIdsToppSeller.value = data.homeSections
                .map((e) => e.bestSellersCategoryId ?? -1)
                .toList();
            slidersList.value =
                data.homeSections.map((e) => e.sliders).toList();
            topSellersList.value =
                data.homeSections.map((e) => e.topSellers).toList();
            newArrivalsList.value = data.newArrivals;
            categories.value =
                data.homeSections.map((e) => (e.categories)).toList();
            recentSearchList.value = data.recentSearch;
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
