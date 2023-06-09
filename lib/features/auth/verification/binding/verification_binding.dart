import 'package:get/get.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VerificationController());
  }
}
