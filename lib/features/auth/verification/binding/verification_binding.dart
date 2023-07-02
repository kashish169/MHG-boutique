import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';
import 'package:mhg/features/auth/verification/repository/verification_repo_impl.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VerificationRepoImpl());
    Get.put(VerificationController());
  }
}
