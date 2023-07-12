import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/custom_form_field.dart';

class SendPointsPage extends StatelessWidget {
  static String routeName = '/send_points';
  const SendPointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.find();

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Send Points",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: CustomFormField(
                hint: 'Your phone number',
                inputType: TextInputType.number,
                validator: (val) => AppHelper.validation(val!, 9, 9, 'Number'),
                controller: controller.phoneNumberController,
                obscure: false,
                prefixWidget: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: CountryCodePicker(
                    onChanged: (value) {
                      controller.countryCode(value.dialCode);
                    },
                    searchStyle:
                        Theme.of(context).textTheme.displaySmall!.copyWith(
                              color: AppColors.label,
                            ),
                    textStyle:
                        Theme.of(context).textTheme.displaySmall!.copyWith(
                              color: AppColors.label,
                            ),
                    initialSelection: controller.countryCode.value,
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                    dialogTextStyle:
                        Theme.of(context).textTheme.displaySmall!.copyWith(
                              color: AppColors.label,
                            ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: CustomFormField(
                hint: 'Your Points',
                inputType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                ],
                validator: (val) {
                  return AppHelper.validation(val!, 1, 500, '');
                },
                controller: controller.pointsController,
                obscure: false,
              ),
            ),
            const SizedBox(height: 10),
            PlaceOrderButton(
              color: AppColors.secondary,
              title: 'Send',
              width: 250,
              hasIcon: false,
              onPress: () {
                if (controller.formKey.currentState!.validate()) {
                  AppHelper.closeKeyboard();
                  controller.sendHearts();
                }
              },
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
