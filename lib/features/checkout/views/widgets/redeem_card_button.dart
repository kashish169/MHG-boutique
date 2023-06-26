import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/retry_button.dart';
import '../../../profile/controller/profile_controller.dart';

class RedeemCardButton extends StatelessWidget {
  const RedeemCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.find<ProfileController>();
    final CheckoutController checkoutController =
        Get.find<CheckoutController>();
    return GetX<ProfileController>(builder: (controller) {
      if (controller.isError.isTrue) {
        return RetryButton(
          onTap: () {
            controller.getProfileInfo();
          },
        );
      }
      return Visibility(
        visible: double.parse(profileController.model.value!.hearts ?? '0') == 0
            ? false
            : true,
        child: Obx(() => InkWell(
              onTap: checkoutController.isLoadingRedeem.isTrue
                  ? null
                  : () {
                      checkoutController.hasRedeem.value =
                          !checkoutController.hasRedeem.value;
                      checkoutController.orderPrice(
                        isRedeem: checkoutController.hasRedeem.value,
                      );
                    },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                      toggleable: true,
                      value: true,
                      groupValue: checkoutController.hasRedeem.value,
                      onChanged: (val) {
                        checkoutController.hasRedeem.value =
                            !checkoutController.hasRedeem.value;
                        checkoutController.orderPrice(
                          isRedeem: checkoutController.hasRedeem.value,
                        );
                      }),
                  Text(
                    'Redeem ${profileController.model.value!.hearts!} Pts',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                          color: AppColors.label,
                        ),
                  ),
                ],
              ),
            )),
      );
    });
  }
}
