import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import 'package:mhg/features/profile/repository/profile_repository.dart';

class ProductsController extends GetxController {


  ProductsController() {

  }
   RxString selectedScent='Floriental'.obs;
  RxList ScentList = <String>['Floriental'].obs;
  RxString selectedSortBy='Featured'.obs;
  RxList sortByList = <String>['Featured'].obs;
}
