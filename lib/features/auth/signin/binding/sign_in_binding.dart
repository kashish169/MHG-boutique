import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/repository/sign_in_repo_Imp.dart';

import '../controller/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put(SignInRepoImpl());
    Get.put(SignInController());

  }
}
