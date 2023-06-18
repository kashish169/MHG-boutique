import 'package:get/get.dart';
import 'package:mhg/features/categories/controller/categories_controller.dart';
import 'package:mhg/features/categories/repository/categories_repo_impl.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/home/repository/home_repo_impl.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/features/my_wish_list/repository/wish_list_repo_impl.dart';
import 'package:mhg/features/mycart/repository/my_cart_repo_impl.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import '../../mycart/controller/my_cart_controller.dart';
import '../controller/main_wrapper_controller.dart';
import '../repository/main_wrapper_repo_impl.dart';

class MainWrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoriesRepoImplement());
    Get.put(CategoriesController());
    Get.put(WishListRepoImpl());
    Get.put(WishListController());
    Get.put(ProfileRepoImpl());
    Get.put(ProfileController());
    Get.put(MainWrapperRepoImpl());
    Get.put(MainWrapperController());
    Get.put(HomeRepoImplement());
    Get.put(HomeController());
    Get.put(MyCartRepoImplement());
    Get.put(MyCartController());
  }
}
