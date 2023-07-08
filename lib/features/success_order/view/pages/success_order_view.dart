import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../controller/success_order_controller.dart';
import '../widget/success_order_items.dart';
import '../widget/success_order_payment_card.dart';
import '../widget/success_order_shipning_card.dart';
import '../widget/success_order_thanks.dart';
import '../widget/success_order_top_part.dart';

class SuccessOrderView extends StatelessWidget {
  SuccessOrderView({super.key});
  static String route = '/success_orders';
  final SucessOrderController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetX<SucessOrderController>(
          builder: (controller) => controller.isLoading.value
              ? const LoadingWidget()
              : controller.isError.value
                  ? RetryButton(
                      onTap: () {
                        controller.getData();
                      },
                    )
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          SuccessOrderItems(),
                          SuccessOrderTopPart(),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            color: AppColors.white2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SuccessOrderThanks(),
                                const SizedBox(
                                  height: 30,
                                ),
                                const SuccessOrderPaymentCard(),
                                SuccessOrderShipningCard(),
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
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
        ),
      ),
    );
  }
}
