import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/checkout/controllers/checkout_controller.dart';

import '../../../../app/app.dart';
import '../../../../constants/app_dimensions.dart';
import '../../../../widgets/primary_button.dart';
import '../../../checkout/views/widgets/emirates_drop_down.dart';

guestSelectCityDialog({context, void Function()? onTap}) {
  CheckoutController controller = Get.find();
  Get.defaultDialog(
      title: App.countryId == 1 ? 'Select your emirate' : 'Select your city',
      titlePadding: const EdgeInsets.only(top: 20),
      titleStyle:
          Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 15),
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              App.countryId == 1 ? 'Emirate :' : 'City :',
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(fontSize: 15),
            ),
            CountriesDropDown(
              cities: controller.selectCity(),
            ),
            Center(
                child: PrimaryButton(
              title: 'Continue',
              height: 50,
              width: AppDimensions.screenWidth(context),
              onTap: onTap,
            )),
          ],
        ),
      ));
}
