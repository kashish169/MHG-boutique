import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import 'package:mhg/widgets/primary_button.dart';

import '../../../widgets/loading_widget.dart';
import '../../../widgets/retry_button.dart';
import '../controller/success_order_controller.dart';

class SuccessOrderView extends StatelessWidget {
  SuccessOrderView({super.key});
  static String route = '/success_orders';
  final SucessOrderController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetX<SucessOrderController>(
          builder: (controller) => SingleChildScrollView(
            child: controller.isLoading.value
                ? const LoadingWidget()
                : controller.isError.value
                    ? RetryButton(
                        onTap: () {
                          controller.getData();
                        },
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: AppColors.grey,
                            // thickness: 1.4,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(fontSize: 14),
                                ),
                                Text(
                                  "AED 500.39",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: AppColors.grey,
                            // thickness: 1.4,
                          ),
                          Container(
                            color: AppColors.white2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        padding: const EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: AppColors.secondary)),
                                        child: Center(
                                          child: Icon(
                                            Icons.done_rounded,
                                            color: AppColors.secondary,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'order order name',
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall!
                                                .copyWith(
                                                    color: AppColors.grey),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Thank You, Ahmad!',
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium!
                                                .copyWith(fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: AppColors.grey)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Cash on Delivery',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium!
                                              .copyWith(fontSize: 14),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Divider(
                                        color: AppColors.grey,
                                        // thickness: 1.4,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Cash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on DeliveryCash on Delivery',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(color: AppColors.grey),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Divider(
                                        color: AppColors.grey,
                                        // thickness: 1.4,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'OrderDetails',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: PrimaryButton(
                                height: 50,
                                width: AppDimensions.screenWidth(context),
                                title: 'Continue shipning',
                                onTap: () {
                                  Get.offAllNamed(MainWrapper.routeName);
                                }),
                          )
                        ],
                      ),
          ),
        ),
      ),
    );
  }
}
