import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/features/about_us/model/about_us_model.dart';
import '../../../constants/app_toasts.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';
import '../repository/about_us_repo.dart';
import '../repository/about_us_repo_impl.dart';

class AboutUsController extends GetxController {
  late AboutUsRepo aboutUsRepo;

  AboutUsController() {
    aboutUsRepo = Get.find<AboutUsRepoImpl>();
  }
  RxList<AboutUsModel> aboutUsList = <AboutUsModel>[].obs;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;
  @override
  void onInit() {
    getAboutData();
    super.onInit();
  }

  getAboutData() async {
    try {
      isLoading(true);
      isError(false);
      Either<Failure, ApiResponse> results = await aboutUsRepo.getAboutData();
      isLoading(false);
      results.fold(
        (l) {
          isError(true);
          AppToasts.errorToast(l.message);
          log("About us ${l.message}");
        },
        (r) {
          var statusCode = r.object["code"];
          var message = r.object["message"];
          var stats = r.object['isSuccessful'];
          log("About us Code $statusCode");
          if (stats == true) {
            List responseList = r.object['data']['about_us_pages'];
            aboutUsList.value =
                responseList.map((e) => AboutUsModel.fromJson(e)).toList();
            print(r.object['data']);
          } else {
            AppToasts.errorToast(message);
          }
        },
      );
    } catch (e) {
      isError(true);
      AppToasts.errorToast("$e");
      print("catch error" "$e");
    }
  }
}
