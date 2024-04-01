import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';
import 'package:mhg/features/forgot_password/controller/forget_controller.dart';

class CountryButtonPick2 extends StatelessWidget {
  const CountryButtonPick2({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgetController>(
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
              controller.firstCountryFlag.isNotEmpty
                  ? Image.network(
                      controller.firstCountryFlag.value,
                      height: 20,
                    )
                  : controller.countryFlag.value.contains('uae')
                      ? Image.asset(
                          controller.countryFlag.value,
                          height: 20,
                        )
                      : Text(
                          controller.countryFlag.value,
                        ),
              Text(
                controller.countryCode.value,
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
