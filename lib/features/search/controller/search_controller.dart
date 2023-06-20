import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../../home/models/product_model.dart';
import '../model/search_model.dart';
import '../repository/search_repo.dart';
import '../repository/search_repo_impl.dart';

class SearchingController extends GetxController {
  late SearchRepository searchRepo;
  SearchingController() {
    searchRepo = Get.find<SearchRepoImplement>();
  }
  bool iSLoading = false;
  bool isError = false;
  int page = 1;
  List<ProductModel> productList = [];
  List<SearchModel> serachResponsList = [];
  TextEditingController serach = TextEditingController();
  Future<void> filterSearchForProduct() async {
    productList.clear();
    iSLoading = true;
    isError = false;
    update();

    Either<Failure, ApiResponse> results = await searchRepo.filterProduct(
      storeiD: '1',
      serchingProduct: serach.text,
      page: page.toString(),
    );
    iSLoading = false;
    update();
    results.fold(
      (l) {
        isError = true;
        update();
        AppToasts.errorToast(l.message);
        log("RESPONSE ERROR ${l.message}");
      },
      (r) {
        var statusCode = r.object["code"];
        var message = r.object["message"];
        log("search response $statusCode");
        if (statusCode == 200) {
          var json = r.object["data"];
          List products = json['products'];
          productList = products.map((e) => ProductModel.fromJson(e)).toList();
          print(json);
        } else {
          AppToasts.errorToast(message);
        }
      },
    );
  }

  Future<void> searchForProduct() async {
    productList.clear();
    iSLoading = true;
    isError = false;
    update();

    Either<Failure, ApiResponse> results = await searchRepo.search(serach.text);
    iSLoading = false;
    update();
    results.fold(
      (l) {
        isError = true;
        update();
        AppToasts.errorToast(l.message);
        log("RESPONSE ERROR ${l.message}");
      },
      (r) {
        var statusCode = r.object["code"];
        var message = r.object["message"];
        log("search response $statusCode");
        if (statusCode == 200) {
          var json = r.object["data"];
          List products = json['products'];

          productList = products.map((e) => ProductModel.fromJson(e)).toList();
          print(productList.length);
        } else {
          AppToasts.errorToast(message);
        }
      },
    );
  }
}
