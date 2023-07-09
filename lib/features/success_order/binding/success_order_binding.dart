import 'package:get/get.dart';

import '../controller/success_order_controller.dart';
import '../repository/success_order_repo_impl.dart';

class SuccessOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SuccessOrderRepoImpl());
    Get.put(SucessOrderController());
  }
}
