import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/products_page/repository/products_repo.dart';
import 'package:mhg/features/products_page/repository/products_repo_impl.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import 'package:mhg/features/profile/repository/profile_repository.dart';

class ProductsController extends GetxController {
  late ProductsRepository productsRepository;

  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxBool isFetching = false.obs;
  RxBool isEmpty = false.obs;
  int page = 1;
  int last = 1000;

  ProductsController() {
    productsRepository = Get.find<ProductsRepoImplement>();
  }

   RxList<ProductModel> products=<ProductModel>[].obs;

  RxString selectedScent = 'Floriental'.obs;
  RxList ScentList = <String>['Floriental'].obs;
  RxString selectedSortBy = 'Featured'.obs;
  RxList sortByList = <String>['Featured'].obs;
  ScrollController scrollController = ScrollController();

  // topSellers:

  @override
  Future<void> onInit() async {
    log(Get.arguments.toString());
    getProducts(await Get.arguments);
     paginate();
    super.onInit();
  }
  resetPaginate() {

    page = 1;
    last=1000;
    isFetching.trigger(false);
    isEmpty.trigger(false);
    products.clear();
  }
  Future<void> paginate() async {
    log("pagination .................................");
    scrollController.addListener(() {
      if (scrollController.offset ==
              scrollController.position.maxScrollExtent ) {
        page++;
        if (products.length < last) {
          log(products.length.toString());
          log(last.toString());
          getProducts(Get.arguments);
        }
      }
    });
  }

  Future<void> getProducts(int catId) async {
    try {
      if(page==1){
        isLoading(true);
      }else{
        isFetching.trigger(true);
      }
      isError(false);
      Either<Failure, ApiResponse> results =
          await productsRepository.getCategoryProduct(
              categoryId: catId.toString(), page: page.toString());
      if(page==1){
        isLoading(false);
      }else{
        isFetching.trigger(false);
      }
      results.fold(
        (l) {
          isError(true);
          page--;
          AppToasts.errorToast(l.message);
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];

          if (statusCode == 200) {
            var json = r.object["data"];
            log(json.toString());
            log("here");
            last=r.object['data']["products"]['total'];
            products += List<ProductModel>.from(
                json["products"]['data'].map((x) => ProductModel.fromJson(x)));

            // CategoriesModel.fromJson(r.object["data"]);
            // var data = HomeModel.fromJson(json);
            //
            // categories = data.categories;
          } else {
            AppToasts.errorToast(message);
            page--;
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }
}
