import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/sign_up/controller/sign_up_controller.dart';
import 'package:mhg/features/auth/signin/controller/sign_in_controller.dart';
import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';

import '../../../constants/app_assets.dart';

class CountryPickerWidget extends StatelessWidget {
  const CountryPickerWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
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
              //   controller.countryFlag,
              //   height: 20,
              // ),
              controller.firstCountryFlag.isNotEmpty
                  ? Image.network(
                      controller.firstCountryFlag.value,
                      height: 20,
                    )
                  : controller.countryFlag.contains('uae')
                      ? Image.asset(
                          controller.countryFlag,
                          height: 20,
                        )
                      : Text(
                          controller.countryFlag,
                        ),
              const SizedBox(width: 8),
              Text(
                controller.countryCode,
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
