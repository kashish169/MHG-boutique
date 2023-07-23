import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/personal_infromation/view/pages/personal_information.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import '../../../../widgets/retry_button.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});
  @override
  Widget build(BuildContext context) {
    return GetX<ProfileController>(builder: (controller) {
      if (controller.isError.isTrue) {
        return RetryButton(
          onTap: () {
            controller.getProfileInfo();
          },
        );
      }
      return InkWell(
        onTap: () async {
          await Get.toNamed(PersonalInformation.routeName, arguments: {
            "profile": controller.model.value,
          });
        },
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            end: 30,
            start: 20,
            top: 20,
            bottom: 20,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text(
                        'Shipping Address',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 15,
                                  color: AppColors.label,
                                ),
                      ),
                    ),
                    Text(
                      controller.model.value!.name,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 14,
                            color: AppColors.mediumLabel,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        controller.model.value!.street!.isEmpty
                            ? 'Add your address'
                            : controller.model.value!.street!,
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 14,
                                  color: AppColors.mediumLabel,
                                ),
                      ),
                    ),
                    Text(
                      controller.model.value!.state!.isEmpty
                          ? 'Add your Emirate'
                          : controller.model.value!.state!,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 14,
                            color: AppColors.mediumLabel,
                          ),
                    ),
                    // Text(
                    //   controller.model.value!.zipCode!.isEmpty
                    //       ? 'Add your zipcode'
                    //       : controller.model.value!.zipCode!,
                    //   style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    //         fontSize: 14,
                    //         color: AppColors.mediumLabel,
                    //       ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        controller.model.value!.country?.name ?? '',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontSize: 14,
                                  color: AppColors.mediumLabel,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                AppAssets.arrowForward,
                height: 20,
              ),
            ],
          ),
        ),
      );
    });
  }
}
