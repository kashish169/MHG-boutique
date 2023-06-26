import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/features/categories/repository/categories_repo.dart';
import 'package:mhg/features/categories/repository/categories_repo_impl.dart';
import 'package:mhg/features/home/models/category_model.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

class CategoriesController extends GetxController {
  late CategoriesRepository categoriesRepository;
  late CategoriesModel categoriesModel;
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
            var json = r.object["data"];
            log("categoriesModel ");
            log(json.toString());

            categoriesModel = CategoriesModel.fromJson(r.object["data"]);
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
    getCategories();
    super.onInit();
  }
}
