import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/features/categories/repository/categories_repo.dart';
import 'package:mhg/features/categories/repository/categories_repo_impl.dart';
import 'package:mhg/features/home/models/category_model.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../models/brand_model.dart';

class CategoriesController extends GetxController {
  late CategoriesRepository categoriesRepository;
  CategoriesModel categoriesModel = CategoriesModel(menus: []);
  List<BrandCategoryModel> brands = [];
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;

  CategoriesController() {
    categoriesRepository = Get.find<CategoriesRepoImplement>();
  }

  List<CategoryModel> categories = [];

  Future<void> getCategories() async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results =
          await categoriesRepository.getCategories();
      isLoading(false);
      results.fold(
        (l) {
          isError(true);
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          if (statusCode == 200) {
            final data = r.object["data"];
            if (data is Map<String, dynamic>) {
              categoriesModel = CategoriesModel.fromJson(data);
            } else {
              categoriesModel = CategoriesModel(menus: []);
            }
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
    }
  }

  Future<void> getBrands() async {
    debugPrint('getBrands: start');
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results =
          await categoriesRepository.getBrands();
      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          debugPrint('getBrands: error occurred ${l.message}');
        },
        (r) {
          debugPrint('getBrands: raw response ${jsonEncode(r.object)}');
          var statusCode = r.object["code"];
          var message = r.object["message"];
          if (statusCode == 200) {
            final raw = r.object["data"];
            if (raw is List) {
              brands = raw
                  .map((e) =>
                      BrandCategoryModel.fromJson(e as Map<String, dynamic>))
                  .toList();
            } else {
              brands = [];
            }
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("$e $s");
      debugPrint('getBrands: error occurred $e\nStackTrace: $s');
    }
  }

  @override
  void onInit() {
    getCategories();
    getBrands();
    super.onInit();
  }
}
