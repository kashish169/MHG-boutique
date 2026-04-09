import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/about_us/controller/about_us_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../../../../constants/app_dimensions.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';
import '../widget/about_us_body.dart';

class AboutUsPage extends StatelessWidget {
  AboutUsPage({super.key});
  static String routeName = '/about_us';
  final AboutUsController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarWidget(),
      appBar: customAppBar(context, title: 'About us'.tr),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GetX<AboutUsController>(
                builder: (controller) => controller.isLoading.value
                    ? Column(
                        children: [
                          SizedBox(
                            height: AppDimensions.screenHeight(context) * 0.4,
                          ),
                          const LoadingWidget(),
                        ],
                      )
                    : controller.isError.value
                        ? Column(
                            children: [
                              SizedBox(
                                height:
                                    AppDimensions.screenHeight(context) * 0.4,
                              ),
                              RetryButton(
                                  onTap: () => controller.getAboutData()),
                            ],
                          )
                        : Expanded(
                            child: ListView.separated(
                                itemCount: controller.aboutUsList.length,
                                itemBuilder: (context, index) => AboutUsBody(
                                    aboutUsModel:
                                        controller.aboutUsList[index]),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      height: 30,
                                    )),
                          ))
          ],
        ),
      ),
    );
  }
}
