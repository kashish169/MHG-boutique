import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_toasts.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/retry_button.dart';
import '../../../profile/controller/profile_controller.dart';

class RedeemCardButton extends StatefulWidget {
  const RedeemCardButton({super.key});

  @override
  State<RedeemCardButton> createState() => _RedeemCardButtonState();
}

class _RedeemCardButtonState extends State<RedeemCardButton> {
  final TextEditingController amountController = TextEditingController();
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
        child: Obx(() => Column(
              children: [
                InkWell(
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
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 14,
                                  color: AppColors.label,
                                ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(right: 90, left: 15, bottom: 15),
                  height: 40,
                  child: CustomFormField(
                    hint: 'Apply amount of redeem',
                    obscure: false,
                    inputFormatters: [],
                    controller: amountController,
                    inputType: TextInputType.number,
                    suffixIcon: TextButton(
                      onPressed: () {
                        if (amountController.text.isNotEmpty) {
                          if (double.parse(amountController.text) <=
                              double.parse(
                                  profileController.model.value!.hearts!)) {
                            // checkoutController.hasRedeem.value = true;
                            checkoutController.orderPrice(
                                isRedeem: true,
                                redeemAmount:
                                    double.parse(amountController.text));
                          } else {
                            AppToasts.errorToast(
                                'You can\'t enter more than your redeem pts');
                          }
                        } else {
                          AppToasts.errorToast(
                              'You Need to input redeem amount first');
                        }
                      },
                      child: Text(
                        'Apply',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 12,
                                  color: AppColors.blue,
                                ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      );
    });
  }
}
