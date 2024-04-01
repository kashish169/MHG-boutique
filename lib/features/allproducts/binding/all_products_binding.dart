import 'package:get/get.dart';
import 'package:mhg/features/allproducts/controller/all_products_controller.dart';
import 'package:mhg/features/allproducts/repository/all_products_repo_impl.dart';

class AllProductsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AllProductsRepoImplement());
    Get.put(AllProductsController());
  }
}
