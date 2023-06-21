// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/checkout/views/widgets/delete_card_dialog.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/delete_icon_button.dart';
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
      body: Obx(
        () => (checkoutController.isLoading.value == false &&
                checkoutController.isError.value == false)
            ? SizedBox(
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
                        childCount:
                            checkoutController.paymentMethodsModel.data!.length,
                        (context, index) => Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.8,
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: AppColors.shadow(0.1),
                          ),
                          child: ListTile(
                            leading: checkoutController.cardType.value
                                        .toLowerCase() ==
                                    'mastercard'
                                ? Image.asset(
                                    AppAssets.master,
                                    height: 50,
                                    width: 50,
                                  )
                                : checkoutController.cardType.value
                                            .toLowerCase() ==
                                        'visa2'
                                    ? Image.asset(AppAssets.visa2)
                                    : checkoutController.cardType.value
                                                .toLowerCase() ==
                                            'googlepay'
                                        ? Image.asset(AppAssets.googlepay)
                                        : Image.asset(AppAssets.applepay),
                            title: Text(
                              ' ${checkoutController.paymentMethodsModel.data![index].cardType} ',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 14,
                                    color: AppColors.mediumLabel,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            subtitle: Container(
                              margin: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.01),
                              child: Text(
                                'ending ${checkoutController.getCodedNumber(checkoutController.paymentMethodsModel.data![index].cardNumber)}',
                                maxLines: null,
                                overflow: TextOverflow.fade,
                                softWrap: true,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      fontSize: 14,
                                      color: AppColors.mediumLabel,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            trailing: Container(
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Radio(
                                      value: checkoutController
                                          .paymentMethod.value,
                                      groupValue: 1,
                                      onChanged: (val) {
                                        checkoutController
                                            .setPaymentMethodValue(val);
                                      }),
                                  DeleteIconButton(
                                    onTap: () {
                                      deleteCardDialog(
                                        context: context,
                                        message:
                                            "Are you sure you want to delete this Card?",
                                        onConfirm: () {
                                          Navigator.pop(context);
                                          checkoutController
                                              .deletePaymentMethod(
                                                  checkoutController
                                                      .paymentMethodsModel
                                                      .data![index]
                                                      .id);
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Obx(
                        () => (checkoutController.isLoading.value == false &&
                                checkoutController.isError.value == false)
                            ? Center(
                                child: PlaceOrderButton(
                                    title: 'Add Card',
                                    width: 300,
                                    hasIcon: false,
                                    onPress:
                                        checkoutController.addPaymentMethod),
                              )
                            : (checkoutController.isLoading.value == false &&
                                    checkoutController.isError.value == true)
                                ? RetryButton(
                                    onTap: () => checkoutController
                                        .getAllPaymentMethods(),
                                  )
                                : const LoadingWidget(),
                      ),
                    )
                  ],
                ),
              )
            : (checkoutController.isLoading.value == false &&
                    checkoutController.isError.value == true)
                ? RetryButton(
                    onTap: () => checkoutController.getAllPaymentMethods(),
                  )
                : LoadingWidget(),
      ),
    );
  }
}
