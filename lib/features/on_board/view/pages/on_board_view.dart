import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/on_board/controller/on_board_controller.dart';
import 'package:mhg/features/on_board/view/widgets/buttons.dart';
import 'package:mhg/widgets/net_image.dart';
import 'package:mhg/widgets/three_bounce_loading.dart';
import '../../../../constants/app_assets.dart';

class OnBoardView extends StatefulWidget {
  static String routeName = '/onBoard';

  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  final controller = Get.put(OnboardController());

  @override
  void didChangeDependencies() {
    precacheImage(AssetImage(controller.imageUrl[0]), context);
    precacheImage(AssetImage(controller.imageUrl[1]), context);
    precacheImage(AssetImage(controller.imageUrl[2]), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.dGreen,
        body: GetBuilder<OnboardController>(
          builder: (controller) =>
              //  Stack(
              //   children: [
              //     SizedBox(
              //       height: double.infinity,
              //       child: PageViewer(controller: controller),
              //     ),
              SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: AppDimensions.screenHeight(context) * 0.12),
                      Image.asset(
                        AppAssets.logo,
                        width: 250,
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "EXPERIENCE LUXURY WITH OUR".tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: AppColors.white.withOpacity(0.7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "EXQUISITE PERFUMES FOR ALL".tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: AppColors.white.withOpacity(0.7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "OCCASIONS".tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: AppColors.white.withOpacity(0.7),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
                const OnBoardButtons(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Divider(
                    thickness: 2,
                    color: AppColors.white.withOpacity(.5),
                  ),
                ),
                controller.isLoading
                    ? const Padding(
                        padding: EdgeInsets.all(13.0),
                        child: LoadingThreeBounce(),
                      )
                    : controller.isError
                        ? TextButton(
                            onPressed: () {
                              controller.getCountries();
                            },
                            child: Text(
                              'Retry',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: AppColors.white,
                                  ),
                            ))
                        : GestureDetector(
                            onTap: () {
                              controller.openselcetCountry();
                            },
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 7,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 13),
                                              height: 37,
                                              width: 37,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: NetImage(
                                                  image: controller
                                                      .selectedCountryFlage,
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                        ),
                                        Expanded(
                                          flex: 13,
                                          child: Text(
                                            controller.selectedCountry,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall!
                                                .copyWith(
                                                    color: AppColors.white
                                                        .withOpacity(0.7)),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const Expanded(
                                          flex: 2,
                                          child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: SizedBox()),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_up_outlined,
                                          color: AppColors.white,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ));
  }
}
