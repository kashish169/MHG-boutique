import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';
import 'package:mhg/features/auth/verification/controller/verification_controller.dart';

class VerificationCountryPickerWidget extends StatelessWidget {
  const VerificationCountryPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerificationController>(
      builder: (controller) => MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        minWidth: 0,
        onPressed: () {
          showCountries(
            context,
            (p0) {
              controller.selectCountry(p0);
            },
          );
        },
        child: SizedBox(
          width: 110,
          child: Row(
            children: [
              const SizedBox(width: 8),
              // Image.asset(
              //   controller.countryFlag.value,
              //   height: 20,
              // ),
              controller.firstCountryFlag.isNotEmpty
                  ? Image.network(
                      controller.firstCountryFlag.value,
                      height: 20,
                    )
                  : controller.countryFlag.contains('uae')
                      ? Image.asset(
                          controller.countryFlag.value,
                          height: 20,
                        )
                      : Text(
                          controller.countryFlag.value,
                          style: Theme.of(context).textTheme.headline2,
                        ),
              const SizedBox(width: 8),
              Text(
                controller.countryCode.value,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const Icon(
                Icons.arrow_drop_down_outlined,
              ),
              const SizedBox(
                width: 2,
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
