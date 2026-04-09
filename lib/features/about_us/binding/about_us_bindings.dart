import 'package:get/get.dart';
import 'package:mhg/features/about_us/controller/about_us_controller.dart';
import 'package:mhg/features/about_us/repository/about_us_repo_impl.dart';

class AboutUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AboutUsRepoImpl());
    Get.put(AboutUsController());
  }
}
