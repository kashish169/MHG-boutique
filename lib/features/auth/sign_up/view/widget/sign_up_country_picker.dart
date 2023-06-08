import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/sign_up/controller/sign_up_controller.dart';
import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';

class RegisetrCountryButtonPick extends StatelessWidget {
  const RegisetrCountryButtonPick({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller = Get.find();
    return GetBuilder<SignUpController>(
      builder: (controller) => MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        minWidth: 0,
        onPressed: () {
          showCountries(
            context,
            (p0) {
              controller.selcteCountry(p0);
            },
          );
        },
        child: SizedBox(
          width: 110,
          child: Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              controller.countryFlag.contains('uae')
                  ? Image.asset(
                      controller.countryFlag,
                      height: 20,
                    )
                  : Text(
                      controller.countryFlag,
                      style: Theme.of(context).textTheme.headline2,
                    ),
              Text(
                controller.countryCode,
                style: Theme.of(context).textTheme.displaySmall,
              ),

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
              // Image.asset(
              //   AppAssets.arrowDown,
              //   height: 10,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
