import 'package:get/get.dart';
import 'package:mhg/features/swipe/controller/swipe_controller.dart';
import 'package:mhg/features/swipe/repository/swipe_repo_impl.dart';

class SwipBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SwipeRepoImplement());
    Get.put(SwipController());
  }
}
