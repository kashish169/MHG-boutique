import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/repository/verification_repo_impl.dart';

import '../controller/otp_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VerificationRepoImpl());
    Get.put(OtpController());
  }
}
