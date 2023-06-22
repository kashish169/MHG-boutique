import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/products_page/models/product_tag_model.dart';
import 'package:mhg/features/products_page/repository/products_repo.dart';
import 'package:mhg/features/products_page/repository/products_repo_impl.dart';
import '../models/categories_brand_model.dart';

class ProductsController extends GetxController {
  late ProductsRepository productsRepository;
  RxList<ProductTagModel> scentList = <ProductTagModel>[].obs;
  RxString selectedScent = ''.obs;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  RxBool isFetching = false.obs;
  RxBool isEmpty = false.obs;
  RxBool isLoadingCategories = false.obs;
  RxBool isErrorCategories = false.obs;

  int page = 1;
  int last = 1000;

  ProductsController() {
    productsRepository = Get.find<ProductsRepoImplement>();
  }

  RxList<ProductModel> products = <ProductModel>[].obs;

  String? searchWord;
  RxString selectedSortBy = 'Featured'.obs;
  RxList sortByList = <String>['Featured'].obs;
  ScrollController scrollController = ScrollController();
  int? brandId;
  int? categoryId;
  List<CategoryBrandModel> categoriesList = [];
  RxInt selectedCategoryIndex = (-1).obs;
  @override
  Future<void> onInit() async {
    var args = Get.arguments;
    categoryId = args["categoryId"];
    brandId = args["brandId"];
    if (brandId != null) {
      getCategoriesByBrandId();
    }
    await getProducts(null);
    getProductsTags();
    paginate();
    super.onInit();
  }

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
          getProducts(searchWord);
        }
      }
    });
  }

  Future<void> getProducts(String? search) async {
    log("Search:$search");
    log("page:$page");
    try {
      if (page == 1 && search == null) {
        isLoading(true);
      } else {
        isFetching.trigger(true);
      }
      isError(false);
      var query = '&page=$page';
      if (categoryId != null) {
        query += "&categories[]=$categoryId";
      }
      if (brandId != null) {
        query += "&brands[]=$brandId";
      }
      if (search != null) {
        query += "&search=$search";
      }
      log("query $query");
      Either<Failure, ApiResponse> results =
          await productsRepository.getCategoryProduct(query);

      if (page == 1 && search == null) {
        isLoading(false);
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

  Future<void> getProductsTags() async {
    log("product tags");
    try {
      isLoading(true);

      isError(false);
      Either<Failure, ApiResponse> results =
          await productsRepository.getProductTags();

      isLoading(false);

      results.fold(
        (l) {
          isError(true);

          AppToasts.errorToast(l.message);
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          if (statusCode == 200) {
            var json = r.object["data"];
            scentList += List<ProductTagModel>.from(
                json['productTags'].map((x) => ProductTagModel.fromJson(x)));
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<void> getCategoriesByBrandId() async {
    log("getCategoriesByBrandId");
    try {
      isLoadingCategories(true);
      isErrorCategories(false);
      Either<Failure, ApiResponse> results =
          await productsRepository.getBrandsCategories(
        brandId!,
      );
      isLoadingCategories(false);
      results.fold(
        (l) {
          isErrorCategories(true);
          AppToasts.errorToast(l.message);
        },
        (r) {
          var statusCode = r.object["code"];
          if (statusCode == 200) {
            var json = r.object["data"];
            categoriesList = List<CategoryBrandModel>.from(
                json["categories"].map((x) => CategoryBrandModel.fromJson(x)));
          } else {
            isErrorCategories(true);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      isErrorCategories(true);
    }
  }
}
