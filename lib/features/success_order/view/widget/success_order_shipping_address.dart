import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/personal_infromation/view/pages/personal_information.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import '../../../../widgets/retry_button.dart';

class SuccessOrderShippingAddress extends StatelessWidget {
  const SuccessOrderShippingAddress({super.key});
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
      return Padding(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping Address',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.label,
                        fontWeight: FontWeight.bold),
                  ),
                 const SizedBox(height: 10,),
                  Text(
                    controller.model.value!.name,
                    style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                                color: AppColors.mediumLabel,
                              ),
                  ),
                  Text(
                    controller.model.value!.street!,
                   style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                              fontSize: 16,
                              color: AppColors.mediumLabel,
                            ),
                  ),
                  Text(
                    controller.model.value!.state!,
                    style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                                color: AppColors.mediumLabel,
                              ),
                  ),
                  Text(
                    controller.model.value!.zipCode!,
                     style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                                color: AppColors.mediumLabel,
                              ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      controller.model.value!.country?.name ?? '',
                       style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 16,
                                color: AppColors.mediumLabel,
                              ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
