import 'package:get/get.dart';
import 'package:mhg/features/rewards/controller/rewards_controller.dart';

class ReqwardsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(RewardsController());
  }
}
