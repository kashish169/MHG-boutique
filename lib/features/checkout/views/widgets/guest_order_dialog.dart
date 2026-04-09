import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/checkout/views/widgets/emirates_drop_down.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../app/app.dart';
import '../../../../core/helper/app_helper.dart';
import '../../../../widgets/custom_form_field.dart';
import '../../controllers/checkout_controller.dart';
import 'guest_country_picker.dart';

class GuestOrderDialog extends StatelessWidget {
  GuestOrderDialog({super.key});
  final CheckoutController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    log(App.flagLink);
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(
          15,
        ),
        child: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Name :',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 15),
                  ),
                ),
                CustomFormField(
                  hint: 'Enter your name',
                  inputType: TextInputType.text,
                  controller: controller.guestName,
                  obscure: false,
                  validator: (val) {
                    return AppHelper.validation(val!, 1, 500, '');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Email :',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 15),
                  ),
                ),
                CustomFormField(
                  hint: 'Enter your email address',
                  inputType: TextInputType.text,
                  controller: controller.guestEmail,
                  obscure: false,
                  validator: (val) {
                    return AppHelper.validation(val!, 1, 500, 'email');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Address :',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 15),
                  ),
                ),
                CustomFormField(
                  hint: 'Enter your address',
                  inputType: TextInputType.text,
                  controller: controller.guestAddress,
                  obscure: false,
                  validator: (val) {
                    return AppHelper.validation(val!, 1, 500, '');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    App.countryId == 1 ? 'Emirate :' : 'City :',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 15),
                  ),
                ),
                // CustomFormField(
                //   hint: 'Enter your emirate',
                //   inputType: TextInputType.text,
                //   controller: controller.guestEmirate,
                //   obscure: false,
                //   validator: (val) {
                //     return AppHelper.validation(val!, 1, 500, '');
                //   },
                // ),
                CountriesDropDown(
                  cities: controller.selectCity(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Text(
                    'Phone number :',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 15),
                  ),
                ),
                CustomFormField(
                  hint: 'Enter your phone number',
                  prefixWidget: GuestCountryButtonPick(),
                  inputType: TextInputType.number,
                  obscure: false,
                  controller: controller.guestNumber,
                  validator: (val) {
                    return AppHelper.validatePhone(
                        val!, controller.guestCountryCode.value);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: PrimaryButton(
                  title: 'Place Order',
                  height: 50,
                  width: AppDimensions.screenWidth(context),
                  onTap: () {
                    controller.guestCreateOrder();
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
