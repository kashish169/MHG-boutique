import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/core/languages/languages.dart';

import '../../../../app/app.dart';
import '../../../../constants/app_colors.dart';
import '../../controller/on_board_controller.dart';

class BoardSelectLanguages extends StatefulWidget {
  const BoardSelectLanguages({super.key});

  @override
  State<BoardSelectLanguages> createState() => _BoardSelectLanguagesState();
}

class _BoardSelectLanguagesState extends State<BoardSelectLanguages> {
  final OnboardController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          ///todo
          controller.openselcetLangage();
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
                          margin: const EdgeInsets.symmetric(horizontal: 13),
                          height: 30,
                          width: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image(
                                image: AssetImage(
                                    controller.selectedLangFlag.value)),
                          )),
                    ),
                    Expanded(
                      flex: 13,
                      child: Text(
                        'Select language'.tr,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: AppColors.black3,
                                ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox()),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: AppColors.black3,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                )),
          ],
        )
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(
        //       'Select language'.tr,
        //       style: Theme.of(context)
        //           .textTheme
        //           .displaySmall
        //           ?.copyWith(color: AppColors.black3),
        //       textAlign: TextAlign.center,
        //     )
        // Expanded(
        //     flex: 7,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         CircleAvatar(
        //           radius: 12,
        //           backgroundImage:
        //               AssetImage(controller.selectedLangFlag.value),
        //         ),
        //         // Expanded(
        //         //   flex: 3,
        //         //   child: Container(
        //         //       margin: const EdgeInsets.symmetric(horizontal: 13),
        //         //       height: 30,
        //         //       width: 30,
        //         //       child: ClipRRect(
        //         //         borderRadius: BorderRadius.circular(25),
        //         //         child: Image(
        //         //           image:
        //         //               AssetImage(controller.selectedLangFlag.value),
        //         //           fit: BoxFit.cover,
        //         //         ),
        //         //       )),
        //         // ),
        //         Expanded(
        //             flex: 13,
        //             child: Text(
        //               'Select language'.tr,
        //               style: Theme.of(context)
        //                   .textTheme
        //                   .displaySmall
        //                   ?.copyWith(color: AppColors.black3),
        //               textAlign: TextAlign.center,
        //             )),

        //         InkWell(
        //           onTap: () {
        //             controller.openselcetLangage();
        //           },
        //           child: Icon(
        //             Icons.keyboard_arrow_up_outlined,
        //             color: AppColors.black3,
        //           ),
        //         ),
        //       ],
        //     )),
        //   ],
        // ),
        );
  }
}
