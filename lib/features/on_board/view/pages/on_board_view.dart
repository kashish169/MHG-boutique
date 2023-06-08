import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_assets.dart';
import 'dart:math' as math;
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/on_board/controller/on_board_controller.dart';
import 'package:mhg/features/on_board/view/widgets/buttons.dart';
import 'package:mhg/features/on_board/view/widgets/page_viewer.dart';
import 'package:mhg/widgets/primary_button.dart';
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
    return Obx(()=>Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: PageViewer(controller: controller),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: AppDimensions.screenHeight(context) / 1.9,
                  ),
                  Text(
                    controller.textOne[controller.activeIndex.value],
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: AppColors.white, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    controller.textTwo[controller.activeIndex.value],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 27,
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
                      dotWidth: 15,
                      dotHeight: 4,
                      jumpScale: 0.9,
                      spacing: 10,

                    ),
                  ),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Buttons(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'Change location & language',
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                  color: AppColors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Divider(
                              thickness: 2,
                              color: AppColors.white.withOpacity(.5),
                            ),
                          ),
                          Row(children: [
                            Expanded(
                            flex: 2,
                            child: CountryCodePicker(
                              textStyle: TextStyle(
                                  color: AppColors.white
                              ),
                              onChanged: print,

                              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                              initialSelection: '+971',

                              showDropDownButton: true,
                              barrierColor: Colors.black,
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: true,
                              searchStyle: TextStyle(color: AppColors.primary),
                              dialogTextStyle:TextStyle(color: AppColors.primary) ,

                            ),),
                            SizedBox(height: 30,
                                child: VerticalDivider(thickness: 1,color: AppColors.white,width: 5,)),
                            const SizedBox(width: 15,),
                            Image.asset(AppAssets.global,height: 20,),
                            Expanded(child:DropdownButtonHideUnderline(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: DropdownButton(
                                  dropdownColor: AppColors.primary,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(color: AppColors.white),
                                  isExpanded: true,
                                  value: controller.selectedLang.value,
                                  icon: Transform.rotate(angle:math.pi/2 ,
                                    child: const Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.white,
                                      size:17,
                                    ),),
                                  items: controller.langList.map((var itemss) {
                                    return DropdownMenuItem(
                                        value: itemss, child: Text(itemss));
                                  }).toList(),
                                  onChanged: (newValue) {
                                    controller.selectedLang.value = newValue.toString()!;
                                    // print(controller.categoryValue.value);
                                  },
                                ),
                              ),
                            ),)],)
                        ],
                      ))
                ],
              ),
            )
          ],
        )));
  }
}




