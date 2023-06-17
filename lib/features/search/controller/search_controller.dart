import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/search/model/search_product_model.dart';

import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../repository/search_repo.dart';
import '../repository/search_repo_impl.dart';

class SearchingController extends GetxController {
  late SearchRepository searchRepo;
  SearchingController() {
    searchRepo = Get.find<SearchRepoImplement>();
  }
  bool iSLoading = false;
  bool isError = false;
  List<SearchProductModel> productList = [];
  TextEditingController serach = TextEditingController();
  Future<void> searchForProduct() async {
    try {
      iSLoading = true;
      isError = false;
      print(serach.text);
      Either<Failure, ApiResponse> results =
          await searchRepo.search(serach.text);
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

            productList =
                products.map((e) => SearchProductModel.fromJson(e)).toList();
            print(productList);
            // var data = HomeModel.fromJson(json);
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e, s) {
      log("catch error $e $s");
    }
  }
}
