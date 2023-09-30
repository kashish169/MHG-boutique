import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';

import '../../controllers/checkout_controller.dart';
// import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';

class GuestCountryButtonPick extends StatelessWidget {
  const GuestCountryButtonPick({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckoutController>(
      builder: (controller) => MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        minWidth: 0,
        onPressed: () {
          ///todo
          showCountries(
            context,
            (p0) {
              controller.selectCountry(p0);
            },
          );
        },
        child: SizedBox(
          width: 120,
          child: Row(
            children: [
              const SizedBox(width: 8),
              // Image.asset(
              //   controller.countryFlag.value,
              //   height: 20,
              // ),
              controller.guestFirstCountryFlag.isNotEmpty
                  ? Image.network(
                      controller.guestFirstCountryFlag.value,
                      height: 20,
                    )
                  : App.flagLink != ''
                      ? Image.network(
                          App.flagLink,
                          height: 20,
                        )
                      : controller.guestCountryFlag.value.contains('uae')
                          ? Image.asset(
                              controller.guestCountryFlag.value,
                              height: 20,
                            )
                          : Text(
                              controller.guestCountryFlag.value,
                            ),
              const SizedBox(width: 8),
              Text(
                controller.guestCountryCode.value,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                width: 2,
              ),
              ///todo
              const Icon(
                Icons.arrow_drop_down_outlined,
              ),
              const SizedBox(
                height: 30,
                child: VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: Color(0XFFBCBCBC),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
