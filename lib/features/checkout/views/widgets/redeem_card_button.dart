import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
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
                  Checkbox(
                      //  toggleable: true,
                      value: checkoutController.hasRedeem.value,
                      //  groupValue: checkoutController.hasRedeem.value,
                      onChanged: (val) {
                        checkoutController.hasRedeem.value =
                            !checkoutController.hasRedeem.value;
                        checkoutController.orderPrice(
                          isRedeem: checkoutController.hasRedeem.value,
                        );
                      }),
                  Image.asset(
                    AppAssets.starIcon,
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Redeem ${profileController.model.value!.hearts!} Pts',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 14,
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
