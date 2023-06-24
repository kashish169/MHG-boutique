import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/mycart/view/widgets/my_cart_card.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

class CheckoutItems extends StatelessWidget {
  const CheckoutItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20,
            top: 16,
            bottom: 10,
          ),
          child: Text(
            'Items',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                  color: AppColors.label,
                ),
          ),
        ),
        GetX<MyCartController>(
          builder: (controller) {
            if (controller.isLoading.isTrue) {
              return const LoadingWidget();
            } else if (controller.isError.isTrue) {
              return RetryButton(onTap: () => controller.getCart());
            }
            return controller.cartItemsList.isEmpty
                ? Center(
                    child: Text(
                      'Bag is empty!',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(18),
                          itemCount: controller.cartItemsList.length,
                          itemBuilder: (context, index) {
                            return MyCartCard(
                              model: controller.cartItemsList[index],
                              isCheckOut: true,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 9);
                          },
                        ),
                      ),
                    ],
                  );
          },
        ),
      ],
    );
  }
}
