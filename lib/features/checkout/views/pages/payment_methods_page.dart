import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/features/checkout/views/widgets/user_payment_card.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

import '../../../../app/app.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';
import '../widgets/guest_add_payment_card_info_dialog.dart';

class PaymentMethodsPage extends StatefulWidget {
  static String routeName = '/payment_methods';
  final bool isProfile;
  const PaymentMethodsPage({super.key, this.isProfile = false});

  @override
  State<PaymentMethodsPage> createState() => _PaymentMethodsPageState();
}

class _PaymentMethodsPageState extends State<PaymentMethodsPage> {
  final CheckoutController checkoutController = Get.find<CheckoutController>();
  @override
  void initState() {
    if (widget.isProfile == true) {
      checkoutController.getUserPaymentMethods();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarWidget(),
      appBar: customAppBar(
        context,
        title: 'Payment Methods'.tr,
      ),
      body: Obx(
        () => (checkoutController.isLoading.value == false)
            ? CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                        childCount: checkoutController
                            .userPaymentMethodsCardsList.length,
                        (context, index) => Obx(
                              () => UserPaymentCard(
                                model: checkoutController
                                    .userPaymentMethodsCardsList[index],
                                onTap: () {
                                  checkoutController
                                      .userPaymentMethodCardIndex.value = index;
                                  checkoutController
                                          .userSelectedCardModel.value =
                                      checkoutController
                                          .userPaymentMethodsCardsList[index];
                                },
                                color: checkoutController
                                            .userPaymentMethodCardIndex.value ==
                                        index
                                    ? AppColors.primary
                                    : AppColors.white,
                              ),
                            )),
                  ),
                  SliverToBoxAdapter(
                    child: Obx(
                      () => (checkoutController.isLoading.value == false)
                          ? Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: PlaceOrderButton(
                                    color: AppColors.secondary,
                                    title: 'Add Card'.tr,
                                    width: 300,
                                    hasIcon: false,
                                    onPress: () {
                                      if (App.token.isEmpty) {
                                        Get.dialog(
                                          GuestPaymentCardInfoDialog(),
                                        );
                                      } else {
                                        checkoutController.addPaymentMethod(
                                          isProfile: widget.isProfile,
                                        );
                                      }
                                    }),
                              ),
                            )
                          : const LoadingWidget(),
                    ),
                  )
                ],
              )
            : (checkoutController.isError.value == true)
                ? RetryButton(
                    onTap: () => checkoutController.getUserPaymentMethods(),
                  )
                : LoadingWidget(),
      ),
    );
  }
}
