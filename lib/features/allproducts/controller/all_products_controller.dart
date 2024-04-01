import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/features/allproducts/repository/all_products_repo.dart';
import 'package:mhg/features/allproducts/repository/all_products_repo_impl.dart';
import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/features/home/models/brand_model.dart';
import 'package:mhg/features/home/models/home_model.dart';
import 'package:mhg/features/home/models/product_model.dart';

import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

class AllProductsController extends GetxController {
  late AllProductsRepository allProductsRepository;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  late String arg;

  AllProductsController() {
    allProductsRepository = Get.find<AllProductsRepoImplement>();
  }

  RxString selectedScent = ''.obs;

  RxBool isLoadingList = false.obs;

  RxBool isFetching = false.obs;
  RxBool isEmpty = false.obs;
  RxBool isLoadingCategories = false.obs;
  RxBool isErrorCategories = false.obs;

  int page = 1;
  int last = 1000;
  RxList<ProductModel> products = <ProductModel>[].obs;
  ScrollController scrollController = ScrollController();

  resetPaginate() {
    page = 1;
    last = 1000;
    isFetching.trigger(false);
    isEmpty.trigger(false);

    products.clear();
  }

  Future<void> paginate() async {
    log("pagination .................................");
    scrollController.addListener(() {
      if (scrollController.offset ==
          scrollController.position.maxScrollExtent) {
        page++;
        if (products.length < last) {
          log(products.length.toString());
          log(last.toString());
          getProducts(null);
        }
      }
    });
  }

  Future<void> getProducts(String? search) async {
    log("Search:$search");

    log("page:$page");
    try {
      if (page == 1) {
        isLoadingList(true);
      } else {
        isFetching.trigger(true);
      }
      isError(false);
      var query = '?page=$page';

      if (arg == 'topSeller') {
        query += "&best_sale=1";
      }
      if (arg == 'fromArrival') {
        query += "&new_arrival=1";
      }
      // if (brandId != null) {
      //   query += "&brands[]=$brandId";
      // }
      // if (search != null) {
      //   query += "&search=$search";
      // }
      // if (selectedSortBy.value == 'Featured') {
      //   query += "&featured=1";
      // }
      // if (selectedSortBy.value == 'Best Sellers') {
      //   query += "&best_sale=1";
      // }
      // if (selectedSortBy.value == 'New Arrival') {
      //   query += "&new_arrival=1";
      // }
      // log("query $query");
      Either<Failure, ApiResponse> results =
          await allProductsRepository.getAllProducts(
        query: query,
      );

      if (page == 1) {
        isLoadingList(false);
      } else {
        isFetching.trigger(false);
      }
      results.fold(
        (l) {
          isError(true);
          if (page > 1) {
            page--;
          }
          AppToasts.errorToast(l.message);
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          if (statusCode == 200) {
            var json = r.object["data"];
            last = r.object['data']["products"]['total'];
            products += List<ProductModel>.from(
                json["products"]['data'].map((x) => ProductModel.fromJson(x)));
          } else {
            AppToasts.errorToast(message);
            if (page > 1) {
              page--;
            }
            isError(true);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      isError(true);
    }
  }

  @override
  void onInit() {
    arg = Get.arguments;
    getProducts(null);
    paginate();
    super.onInit();
  }
}
