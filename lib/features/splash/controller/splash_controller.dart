import 'dart:developer';
import 'package:get/get.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import 'package:mhg/features/on_board/view/pages/on_board_view.dart';
import '../../../app/app.dart';
import '../../../core/storage/storage_pref.dart';

class SplashController extends GetxController {
  Future<void> initialRoute() async {
    var isfirst = await StoragePref.getbool("isfirst");
    log("USER FIRST TIME IS : $isfirst");
    await Future.delayed(const Duration(seconds: 3));
    if (App.token.isNotEmpty) {
      Get.offNamed(MainWrapper.routeName);
    } else {
      Get.offNamed(OnBoardView.routeName);
    }
  }

  @override
  void onInit() {
    initialRoute();
    super.onInit();
  }
}
