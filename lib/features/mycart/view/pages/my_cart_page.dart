import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../widgets/bottom_cart_widget.dart';
import '../widgets/my_cart_card.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<MyCartController>(builder: (controller) {
      if (controller.isLoading.isTrue) {
        return const LoadingWidget();
      } else if (controller.isError.isTrue) {
        return RetryButton(onTap: () => controller.getCart());
      }
      return controller.cartItemsList.isEmpty
          ? Center(
              child: Text(
                'Bag is empty!'.tr,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            )
          : Column(
              children: [
                Expanded(
                    child: Obx(
                  () => ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(18),
                    itemCount: controller.cartItemsList.length,
                    itemBuilder: (context, index) {
                      return MyCartCard(
                        model: controller.cartItemsList[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 9);
                    },
                  ),
                )),
                const BottomCartWidget(),
              ],
            );
    });
  }
}
