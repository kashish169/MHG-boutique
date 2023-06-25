import 'package:get/get.dart';

import 'package:mhg/features/setting/controller/setting_controller.dart';

import '../repository/settings_repo_impl.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SettingsRepoImpl());
    Get.put(SettingController());
  }
}
