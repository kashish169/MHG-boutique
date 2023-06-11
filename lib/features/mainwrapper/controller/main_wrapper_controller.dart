import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../repository/main_wrapper_repo_impl.dart';
import '../repository/main_wrapper_repository.dart';

class MainWrapperController extends GetxController {
  late MainWrapperRepo mainWrapperRepo;

  MainWrapperController() {
    mainWrapperRepo = Get.find<MainWrapperRepoImpl>();
  }

  RxInt navBarIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }
}
