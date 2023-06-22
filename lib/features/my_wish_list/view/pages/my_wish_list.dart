import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/my_wish_list/controller/wish_list_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
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
        backgroundColor: AppColors.white2,
        body: GetX<WishListController>(builder: (controller) {
          return controller.isLoading.value
              ? const LoadingWidget()
              : controller.isError.value
                  ? RetryButton(onTap: () => controller.getWishList())
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        controller.wishListItems.isNotEmpty
                            ? Expanded(
                                child: ListView.builder(
                                    itemCount: controller.wishListItems.length,
                                    itemBuilder: (context, index) => MyWishBody(
                                          addToBag: () async {
                                            controller.chechBeforAdd(index);
                                          },
                                          model:
                                              controller.wishListItems[index],
                                          onTap: () {
                                            controller.wishListItems[index]
                                                .isLoadingDelete = true;
                                            controller.removeFromWishList(
                                                controller
                                                    .wishListItems[index].id);
                                          },
                                        )),
                              )
                            : Center(
                                child: Text(
                                  'Wish list is empty!',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              )
                      ],
                    );
        }));
  }
}
