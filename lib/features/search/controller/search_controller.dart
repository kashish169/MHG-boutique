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

  @override
  void onInit() {
    paginate();

  filterSearchForProduct();

    super.onInit();
  }

  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  int page = 1;
  RxBool isFetching = false.obs;
  RxBool isEmpty = false.obs;

  int last = 1000;
  RxList<ProductModel> productList = <ProductModel>[].obs;
  List<SearchModel> serachResponsList = [];
  TextEditingController serach = TextEditingController();
  ScrollController scrollController = ScrollController();
  bool isSearch = false;

  resetPaginate() {
    page = 1;
    last = 1000;
    isFetching.trigger(false);
    productList.clear();
  }
  updateList(List<ProductModel> model, bool fromArrival) {
    for (int i = 0; i < model.length; i++) {

        productList[i] = model[i];

    }
  }

  Future<void> paginate() async {
    log("pagination .................................");
    scrollController.addListener(() {
      if (scrollController.position.extentAfter <= 600 &&
          productList.isNotEmpty &&
          productList.length<last&&
          isLoading.isFalse &&
          isFetching.isFalse) {
        page++;
        //   scrollController.animateTo(569, duration: const Duration(milliseconds: 1), curve: Curves.decelerate);
        if (productList.length < last) {
          log(productList.length.toString());
          log(last.toString());
          filterSearchForProduct();
        }
      }
    });
  }

  Future<void> filterSearchForProduct() async {
    log("called");
    if (page == 1) {
      isLoading(true);
    } else {
      isFetching.trigger(true);
    }

    Either<Failure, ApiResponse> results = await searchRepo.filterProduct(
      storeiD: '1',
      serchingProduct: serach.text,
      page: page.toString(),
    );
    if (page == 1) {
      isLoading(false);
    } else {
      isFetching.trigger(false);
    }
    results.fold(
      (l) {
        if (page > 1) {
          page--;
        }
        isError(false);
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
          log('json $json');
          last=json['products']['total'];
          List products = json['products']['data'];

          productList += products.map((e) => ProductModel.fromJson(e)).toList();

          log(productList.length.toString());
        } else {
          if (page > 1) {
            page--;
          }
          AppToasts.errorToast(message);
        }
      },
    );
  }

  Future<void> searchForProduct() async {
    productList.clear();
    isLoading(true);
    isError(false);

    Either<Failure, ApiResponse> results = await searchRepo.search(serach.text);
    isLoading(false);
    results.fold(
      (l) {
        isError(true);
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

          productList.value =
              products.map((e) => ProductModel.fromJson(e)).toList();
          print(productList.length);
        } else {
          AppToasts.errorToast(message);
        }
      },
    );
  }

  onSelectRecentSearch(String selected) {
    resetPaginate();
    // isSearch = true;
    update();
    productList.clear();
    serach.text = selected;
    filterSearchForProduct();
    update();
  }
}
