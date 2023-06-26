import 'package:get/get.dart';
import 'package:mhg/features/myorders/controller/my_orders_controller.dart';
import 'package:mhg/features/myorders/repository/my_orders_repo_impl.dart';

class MyOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyOrdersRepoImpl());
    Get.put(MyOrdersController());
  }
}
