import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/swipe/controller/swipe_controller.dart';
import 'package:mhg/features/swipe/view/widgets/swipe_widget_card.dart';
import 'package:swipe_cards/swipe_cards.dart';

import '../../../../widgets/custom_app_bar.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({super.key});
  static const String routeName = '/swipe_page';

  @override
  State<SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  SwipController controller = Get.find();
  late MatchEngine matchEngine;
  bool isFinished = false;

  @override
  void initState() {
    matchEngine = MatchEngine(swipeItems: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, title: 'Gamifications'.tr),
        body: Obx(() {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          matchEngine = MatchEngine(swipeItems: controller.products);
          return isFinished
              ? const Center(
                  child: Text(
                    'You finished your swipe',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                )
              : controller.products.isEmpty
                  ? const Center(
                      child: Text(
                        'No products yet to swipe!',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                    )
                  : SwipeCards(
                      matchEngine: matchEngine,
                      itemBuilder: (BuildContext context, int index) {
                        return SwipeWidgetCard(
                          onLikeFun: () {
                            matchEngine.currentItem?.like();
                            controller.prefProduct(
                                true, matchEngine.currentItem!.content.id);
                          },
                          onNopeFun: () {
                            matchEngine.currentItem?.nope();
                            controller.prefProduct(
                                false, matchEngine.currentItem!.content.id);
                          },
                          productModel: controller.products[index].content,
                        );
                      },
                      onStackFinished: () {
                        setState(() {
                          isFinished = true;
                        });
                      },
                      itemChanged: (SwipeItem item, int index) {},
                      upSwipeAllowed: true,
                      fillSpace: true,
                    );
        }));
  }
}
