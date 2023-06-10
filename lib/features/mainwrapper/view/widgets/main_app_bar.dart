import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:mhg/features/profile/controller/profileController.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../controller/main_wrapper_controller.dart';

mainAppBar({
  required BuildContext context,
  required GlobalKey<ScaffoldState> scaffoldKey,
  required int currentIndex,
}) {
  final controller = Get.find<MainWrapperController>();
  return AppBar(
    centerTitle: false,
    backgroundColor: AppColors.primary,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    automaticallyImplyLeading: false,
    title: GetX<ProfileController>(builder: (controller) {
      if(controller.isLoading.isTrue&&controller.firstCall.isTrue) {
        return const Center(child: Text(''),);
      }

      return Text(
        'Good Morning,${Get.find<ProfileController>().model.name}',
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
          color: AppColors.white,
          fontSize: 16,
        ),
      );
    }),


    actions: [
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          AppAssets.search,
          height: 20,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          AppAssets.notification,
          height: 20,
        ),
      ),
    ],
  );
}
