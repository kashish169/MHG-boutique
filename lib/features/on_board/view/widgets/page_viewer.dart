import 'package:flutter/material.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/on_board/controller/on_board_controller.dart';

class PageViewer extends StatelessWidget {
  const PageViewer({
    super.key,
    required this.controller,
  });

  final OnboardController controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (v) {
        controller.activeIndex.value = v;
      },
      itemCount: controller.imageUrl.length,
      controller: controller.pageController,
      itemBuilder: (context, index) => Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(controller.imageUrl[index]),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: AppDimensions.screenHeight(context) * .11,
            ),
          ],
        ),
      ),
    );
  }
}
