import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/mainwrapper/view/pages/main_wrapper.dart';
import 'package:mhg/features/mycart/controller/my_cart_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/success_order/view/widget/confirmation_footer.dart';
import 'package:mhg/features/success_order/view/widget/success_order_contact_info.dart';
import 'package:mhg/features/success_order/view/widget/success_order_items.dart';
import 'package:mhg/features/success_order/view/widget/success_order_payment_method.dart';
import 'package:mhg/features/success_order/view/widget/success_order_shipping_address.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../widgets/loading_widget.dart';
import '../../../../widgets/retry_button.dart';
import '../../controller/success_order_controller.dart';

class SuccessOrderView extends StatelessWidget {
  SuccessOrderView({
    super.key,
  });
  static String route = '/success_orders';
  final SucessOrderController controller = Get.find();
  final CheckoutController checkoutController = Get.put(CheckoutController());
  final ProfileController profileController = Get.find<ProfileController>();
  final MyCartController myCartController = Get.find<MyCartController>();
  final SucessOrderController sucessOrderController =
      Get.put(SucessOrderController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      appBar: customAppBar(context, title: 'Confirmation'),
      body: SafeArea(
        child: GetX<SucessOrderController>(
          builder: (controller) => controller.isLoading.value
              ? const LoadingWidget()
              : controller.isError.value
                  ? RetryButton(
                      onTap: () {
                        controller.getMyOrders();
                      },
                    )
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Center(
                            child: Image.asset(
                              AppAssets.orderSuccess,
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Center(
                            child: Text(
                              '${"Your order is confirmed!".tr}\n ${controller.orderModel.orderNumber}',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                fontSize: 15,
                                  color: AppColors.secondary,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          SuccessOrderItems(
                            profileController: profileController,
                            controller: controller,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 5,
                          ),
                          SuccessOrderContactInformation(
                            controller: sucessOrderController,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 5,
                          ),

                          const SuccessOrderShippingAddress(),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 5,
                          ),
                          SuccessOrderPaymentMethod(
                            controller: controller,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 5,
                          ),
                          ConfirmationFooter(
                            checkoutController: checkoutController,
                            profileController: profileController,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.110),
                            child: PrimaryButton(
                                height: 50,
                                width: AppDimensions.screenWidth(context),
                                title: 'Continue shopping',
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
