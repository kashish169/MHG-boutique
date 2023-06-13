import 'package:get/get.dart';
import 'package:mhg/features/myorders/controller/my_orders_controller.dart';

class MyOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyOrdersController());
  }
}
