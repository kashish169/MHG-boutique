import 'package:get/get.dart';
import '../controller/search_controller.dart';
import '../repository/search_repo_impl.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SearchRepoImplement());
    Get.put(SearchingController());
  }
}
