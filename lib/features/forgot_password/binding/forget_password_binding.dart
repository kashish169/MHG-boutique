import 'package:get/get.dart';
import 'package:mhg/features/forgot_password/controller/forget_controller.dart';
import 'package:mhg/features/forgot_password/repository/forget_password_repo_impl.dart';

class ForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ForgetPasswordRepoImpl());
    Get.put(ForgetController());
  }
}
