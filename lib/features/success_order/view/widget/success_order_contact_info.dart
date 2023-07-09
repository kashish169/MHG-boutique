import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/retry_button.dart';

class SuccessOrderContactInformation extends StatelessWidget {
  const SuccessOrderContactInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<ProfileController>(builder: (_) {
      if (_.isError.isTrue) {
        return RetryButton(
          onTap: () {
            _.getProfileInfo();
          },
        );
      }
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Information',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                  color: AppColors.label,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10,),
            Text(
              _.model.value!.name,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
            Text(
              _.model.value!.email
                  ,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
             Text(
              _.model.value!.number.toString()
                  ,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
          ],
        ),
      );
    });
  }
}
