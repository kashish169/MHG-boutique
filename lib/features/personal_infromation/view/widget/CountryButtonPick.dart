import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';

class CountryButtonPicker extends StatelessWidget {
  const CountryButtonPicker({super.key});

  @override
  Widget build(BuildContext context) {
    PersonalInformationController controller = Get.find();
    return MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.zero,
      minWidth: 0,
      onPressed: () {
        showCountries(
          context,
          (p0) {
            controller.countryCode.value = "+${p0.phoneCode}";
            controller.countryFlag.value = p0.flagEmoji;
            controller.enableEditOnNumber.value = false;
          },
        );
      },
      child: SizedBox(
        width: 110,
        child: Row(
          children: [
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
