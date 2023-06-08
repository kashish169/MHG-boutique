import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';

import '../../../../../constants/app_assets.dart';
import '../../controller/sign_in_controller.dart';

class CountryButtonPick extends StatelessWidget {
  const CountryButtonPick({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.find();
    return MaterialButton(
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
            const SizedBox(
              width: 5,
            ),
            Obx(() => controller.countryFlag.contains('uae')
                ? Image.asset(
                    controller.countryFlag.value,
                    height: 20,
                  )
                : Text(
                    controller.countryFlag.value,
                    style: Theme.of(context).textTheme.headline2,
                  )),
            Obx(
              () => Text(
                controller.countryCode.value,
                style: Theme.of(context).textTheme.displaySmall,
              ),
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
    );
  }
}
