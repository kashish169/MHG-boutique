import 'package:get/get.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/mycart/repository/my_cart_repo_impl.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import '../../mycart/controller/my_cart_controller.dart';
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
    Get.put(MyCartRepoImplement());
    Get.put(MyCartController());
  }
}
