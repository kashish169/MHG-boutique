import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/home/controller/home_controller.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../home/view/widgets/home_reward_box.dart';
import '../../../home/view/widgets/home_top_sellers_widget.dart';
import '../widget/my_wish_list_body.dart';

class MyWishList extends StatefulWidget {
  MyWishList({super.key});

  @override
  State<MyWishList> createState() => _MyWishListState();
}

class _MyWishListState extends State<MyWishList> {
  final WishListController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: AppBar(
              backgroundColor: Colors.black,
            )),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: GetX<WishListController>(builder: (controller) {
                return controller.isLoading.value
                    ? const LoadingWidget()
                    : controller.isError.value
                        ? RetryButton(onTap: () => controller.getWishList())
                        : Column(
                            children: [
                              Expanded(
                                // flex: 3,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      controller.wishListItems.isNotEmpty
                                          ? ListView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: controller
                                                  .wishListItems.length,
                                              itemBuilder: (context, index) =>
                                                  MyWishBody(
                                                    addToBag: () async {
                                                      controller
                                                          .chechBeforAdd(index);
                                                    },
                                                    model: controller
                                                        .wishListItems[index],
                                                    onTap: () {
                                                      controller
                                                          .wishListItems[index]
                                                          .isLoadingDelete = true;
                                                      controller
                                                          .removeFromWishList(
                                                              controller
                                                                  .wishListItems[
                                                                      index]
                                                                  .id);
                                                    },
                                                  ))
                                          : Center(
                                              child: Text(
                                                'Wish list is empty!'.tr,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall,
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              GetX<HomeController>(builder: (controller) {
                                if (controller.isLoading.isTrue) {
                                  return Column(
                                    children: [
                                      const LoadingWidget(),
                                      SizedBox(
                                        height: AppDimensions.screenHeight(
                                                context) *
                                            0.1,
                                      )
                                    ],
                                  );
                                } else if (controller.isError.isTrue) {
                                  return Column(
                                    children: [
                                      RetryButton(
                                          onTap: () => controller.getHome()),
                                      SizedBox(
                                        height: AppDimensions.screenHeight(
                                                context) *
                                            0.1,
                                      )
                                    ],
                                  );
                                }
                                return const HomeTopSellersWidget();
                              }),
                            ],
                          );
              }),
            ),
            const HomeRewardBox(
              topStatusColor: Colors.black,
              greeding: Colors.black,
              backGroundColor: null,
            ),
          ],
        ));
  }
}
