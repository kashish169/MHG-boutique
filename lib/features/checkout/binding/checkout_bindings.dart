import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';

class CheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      CheckoutController(),
    );
  }
}
