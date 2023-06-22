import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/repository/checkout_repo_imp.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';

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
