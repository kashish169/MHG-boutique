import 'package:get/get.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';
import 'package:mhg/features/products_page/repository/products_repo_impl.dart';

class ProductsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductsRepoImplement());
    Get.put(ProductsController());
  }
}
