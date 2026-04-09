import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/repository/checkout_repo_imp.dart';

class CheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      CheckoutController(),
    );
    Get.put(
      CheckoutRepoImplement(),
    );
  }
}
