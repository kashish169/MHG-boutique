import 'package:get/get.dart';
import '../controller/main_wrapper_controller.dart';
import '../repository/main_wrapper_repo_impl.dart';

class MainWrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainWrapperRepoImpl());
    Get.put(MainWrapperController());
  }
}
