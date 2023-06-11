import 'package:get/get.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import '../controller/main_wrapper_controller.dart';
import '../repository/main_wrapper_repo_impl.dart';

class MainWrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileRepoImpl());
    Get.put(ProfileController());
    Get.put(MainWrapperRepoImpl());
    Get.put(MainWrapperController());
    Get.put(HomeController());
  }
}
