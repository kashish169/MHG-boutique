import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

class PaymentMethodsPage extends StatelessWidget {
  static String routeName = '/payment_methods';
  PaymentMethodsPage({super.key});
  final CheckoutController checkoutController = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      appBar: customAppBar(
        context,
        title: 'Payment Methods',
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: checkoutController.paymentMethodsModel.data!.length,
                (context, index) => Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.8,
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: AppColors.shadow(0.1),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.015),
                    child: ListTile(
                      leading: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Row(
                          children: [
                            Text(
                              '(card image here)',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    color: AppColors.mediumLabel,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              ' ${checkoutController.cardType} ending ${checkoutController.cardNumber}',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    color: AppColors.mediumLabel,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      trailing: Radio(
                          value: checkoutController.paymentMethod.value,
                          groupValue: 1,
                          onChanged: (val) {
                            checkoutController.setPaymentMethodValue(val);
                          }),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Obx(
                () =>  (checkoutController.isLoading.value == false &&
              checkoutController.isError.value == false)
          ? PlaceOrderButton(
                    title: 'Add Card',
                    width: 300,
                    hasIcon: false,
                    onPress: checkoutController.addPaymentMethod) : (checkoutController.isLoading.value == false &&
                  checkoutController.isError.value == true)
              ? RetryButton(
                  onTap: () => checkoutController.getAllPaymentMethods(),
                )
              : const LoadingWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
