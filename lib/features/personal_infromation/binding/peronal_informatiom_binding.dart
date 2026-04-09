import 'package:get/get.dart';
import '../controller/peronal_informatiom_controller.dart';
import '../repository/personal_info_repo_imp.dart';

class PersonalInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PersonalInfoRepoImpl());
    Get.put(PersonalInformationController());
  }
}
