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
                          Center(
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Center(
                                  child: Image.asset(
                                    AppAssets.orderSuccess,
                                    height: Get.height * 0.25,
                                    width: Get.width * 0.3,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.of(context).size.height * 0.2,
                                  // left: MediaQuery.of(context).size.width * 0.1,
                                  child: Center(
                                    child: Text(
                                      "Your order is confirmed!".tr,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium
                                          ?.copyWith(
                                              color: AppColors.secondary,
                                              fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SuccessOrderItems(
                            profileController: profileController,
                            controller: controller,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 15,
                          ),
                          const SuccessOrderContactInformation(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 15,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const SuccessOrderShippingAddress(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 15,
                          ),
                          SuccessOrderPaymentMethod(
                            controller: checkoutController,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 15,
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
