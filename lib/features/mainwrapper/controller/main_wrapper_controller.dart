import 'dart:developer';
import 'package:get/get.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../repository/main_wrapper_repo_impl.dart';
import '../repository/main_wrapper_repository.dart';

class MainWrapperController extends GetxController {
  late MainWrapperRepo mainWrapperRepo;

  MainWrapperController() {
    mainWrapperRepo = Get.find<MainWrapperRepoImpl>();
  }

  RxInt navBarIndex = 0.obs;

  Future<void> launchUrl(String url) async {
    try {
      // ignore: deprecated_member_use
      if (await canLaunch(url)) {
        // ignore: deprecated_member_use
        await launch(url);
      } else {
        AppToasts.errorToast("Error Launch URL");
      }
    } catch (e) {
      log('$e');
    }

    @override
    void onInit() {
      super.onInit();
    }
  }
}
