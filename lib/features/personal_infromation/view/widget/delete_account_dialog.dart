import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/primary_button.dart';

deleteAccountDialog({
  required BuildContext context,
  required void Function() onConfirm,
  required String message,
}) {
  Get.defaultDialog(
      title: "Warning",
      titleStyle: Theme.of(context)
          .textTheme
          .displayLarge!
          .copyWith(color: AppColors.red, fontSize: 17),
      titlePadding: const EdgeInsets.only(top: 20),
      content: GetBuilder<PersonalInformationController>(
        builder: (controller) => controller.deleteLoading == false
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      message,
                      style: Theme.of(context).textTheme.displaySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: PrimaryButton(
                                title: "Cancel",
                                color: AppColors.white,
                                width: 60,
                                height: 35,
                                reverseColor: true,
                                isSelected: true,
                                onTap: () {
                                  Get.back();
                                }),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: PrimaryButton(
                              title: "Yes",
                              onTap: onConfirm,
                              height: 35,
                              width: 60,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : const LoadingWidget(),
      ));
}
