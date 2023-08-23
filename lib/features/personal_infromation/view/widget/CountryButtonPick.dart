// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/auth/signin/view/widget/show_country_picker.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';

import '../../../../constants/app_assets.dart';

class CountryButtonPicker extends StatelessWidget {
  final bool isFromShippingAddress;
  const CountryButtonPicker({
    super.key,
    required this.isFromShippingAddress,
  });

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
          isFromShippingAddress == false
              ? SizedBox(
                  height: 30,
                  child: VerticalDivider(
                    width: 1,
                    thickness: 1,
                    color: Color(0XFFBCBCBC),
                  ),
                )
              : SizedBox.shrink(),
          // Image.asset(
          //   AppAssets.arrowDown,
          //   height: 10,
          // ),
        ],
      ),
    );
  }
}
