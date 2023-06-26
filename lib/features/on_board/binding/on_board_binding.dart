import 'package:get/get.dart';
import '../controller/on_board_controller.dart';
import '../repository/on_board_repo_impl.dart';

class OnBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UnBoardRepoImpl());
    Get.put(OnboardController());
  }
}
