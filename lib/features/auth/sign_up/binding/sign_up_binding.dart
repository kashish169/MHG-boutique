import 'package:get/get.dart';
import 'package:mhg/features/auth/sign_up/controller/sign_up_controller.dart';

import '../repository/sign_up_repo_impl.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpRepoImpl());
    Get.put(SignUpController());
  }
}
