import 'package:get/get.dart';
import 'package:mhg/features/auth/sign_up/controller/sign_up_controller.dart';
import 'package:mhg/features/auth/sign_up/repository/sign_up_repo_impl.dart';
import 'package:mhg/features/auth/signin/repository/sign_in_repo_Imp.dart';

import '../controller/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInRepoImpl());
    Get.put(SignInController());
    Get.put(SignUpRepoImpl());
    Get.put(SignUpController());
  }
}
