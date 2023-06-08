import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/on_board/controller/on_board_controller.dart';
import 'package:mhg/features/on_board/view/widgets/buttons.dart';
import 'package:mhg/features/on_board/view/widgets/page_viewer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        body: GetBuilder<OnboardController>(
      builder: (controller) => Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: PageViewer(controller: controller),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: SizedBox(
                    
                  ),
                ),
                Text(
                  controller.textOne[controller.activeIndex.value],
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(color: AppColors.white, fontSize: 15),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  controller.textTwo[controller.activeIndex.value],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: AppColors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 25,
                ),
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: controller.imageUrl.length,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (v) {},
                  effect: JumpingDotEffect(
                    paintStyle: PaintingStyle.stroke,
                    activeDotColor: AppColors.white,
                    dotColor: AppColors.white,
                    dotWidth: 17,
                    dotHeight: 4,
                    jumpScale: 0.8,
                    spacing: 10,
                    verticalOffset: 0,
                  ),
                ),
                const Buttons(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27),
                    child: Text(
                      'Change location & language',
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                          color: AppColors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Divider(
                    thickness: 2,
                    color: AppColors.white.withOpacity(.5),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 7,
                        child: InkWell(
                            onTap: () {
                              controller.openselcetCountry();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Expanded(child: SizedBox()),
                                Text(
                                  controller.selectedCountry,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(color: AppColors.white),
                                ),
                                const SizedBox(width: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20),
                                  child: Icon(
                                    Icons.keyboard_arrow_up_sharp,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ))),
                    SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 1,
                          color: AppColors.white,
                          width: 5,
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        flex: 4,
                        child: InkWell(
                          onTap: () {
                            controller.openselcetLangage();
                          },
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Image.asset(
                                  AppAssets.global,
                                  height: 20,
                                ),
                              ),
                              FittedBox(child: Text(
                                controller.selectedLang,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(color: AppColors.white),
                              ),),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 15),
                                  child: Icon(
                                    Icons.keyboard_arrow_up_sharp,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 15,)
              ],
            ),
          )
        ],
      ),
    ));
  }
}
