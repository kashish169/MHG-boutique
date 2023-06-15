import 'package:get/get.dart';
import 'package:mhg/features/products_page/controller/product_controller.dart';



class ProductsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductsController());

  }
}
