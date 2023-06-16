import 'package:get/get.dart';
import 'package:mhg/features/product_details/controller/product_details_controller.dart';
import 'package:mhg/features/product_details/repository/product_details_repo.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductDetailsRepoImplement());
    Get.put(ProductDetailsController());
  }
}
