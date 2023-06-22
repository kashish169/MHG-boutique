// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';

class ShippingAddress extends StatelessWidget {
  ShippingAddress({super.key});
  final ProfileController controller = Get.find<ProfileController>();
  





  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        title: Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Shipping Address',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                  color: AppColors.label,
                ),
          ),
        ),
        subtitle: Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.model.value!.name,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 14,
                    color: AppColors.mediumLabel,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
            controller.model.value != null ?'': controller.model.value!.street!,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
          /*   Text(
              'Main Street ,',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
            Text(
              'City Name , Province ,',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ),
            Text(
              'Country ,',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 16,
                    color: AppColors.mediumLabel,
                  ),
            ), */
          ],
        )),
        trailing: Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ),
        onTap: () async {
          await Get.toNamed("/personal_information", arguments: {
            "profile": controller.model.value,
          });
        },
      ),
    );
  }
}
