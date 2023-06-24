import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'place_order_button.dart';

class PromoCode extends StatelessWidget {
  PromoCode({super.key});

  final CheckoutController checkoutController = Get.put(CheckoutController());
  final ProfileController controller = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.tag,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Promo Code',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 16,
                                  color: AppColors.label,
                                ),
                      ),
                      Text(
                        'If apply no points will added',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(
                                color: AppColors.lightLabel2,
                                fontSize: 12,
                                height: 1.7),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 20),
              Expanded(
                child: SizedBox(
                  height: 44,
                  child: CustomFormField(
                    obscure: false,
                    hint: 'Enter Code Here',
                    controller: checkoutController.codeController,
                    oneSideBorder: true,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Obx(() => PlaceOrderButton(
                  title: 'Apply',
                  width: MediaQuery.of(context).size.width * 0.3,
                  hasIcon: false,
                  isLoading: checkoutController.isLoadingPromo.value,
                  onPress: () {
                    checkoutController.isFromApply(!checkoutController.isFromApply.value);
                    if (checkoutController.codeController.text
                        .trim()
                        .isNotEmpty) {
                      if (controller.model.value!.countryId == null) {
                        AppToasts.errorToast(
                            'Please add your country in profile information');
                      } else {
                        checkoutController.orderPrice(
                          controller.model.value!.countryId,
                          checkoutController.codeController.text.trim(),
                        );
                      }
                    }
                  })),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
