import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';
import 'package:mhg/widgets/custom_form_field.dart';

import '../../../../constants/app_colors.dart';

class PersonalInfoDateAndGenderForm extends StatelessWidget {
  const PersonalInfoDateAndGenderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalInformationController>(
        builder: (controller) =>
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Date of Birth'.tr,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 16, color: AppColors.lightGray2),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  controller.chooseDate(showDatePicker(
                      context: context,
                      initialDate: controller.date,
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now()));
                },
                child: CustomFormField(
                    suffixIcon: Icon(
                      Icons.date_range,
                      color: AppColors.darkGrey,
                    ),
                    obscure: false,
                    disableForm: true,
                    isFileWhite: true,
                    hint: 'Enter your date of birth'.tr,
                    controller: controller.dateTextEditingController),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Gender'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 16, color: AppColors.lightGray2)),
              DropdownButton(
                underline: Divider(
                  color: AppColors.white,
                  thickness: 0,
                  height: 0,
                ),
                dropdownColor: AppColors.white,
                elevation: 2,
                isExpanded: true,
                hint: Text('Select your gender'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: AppColors.grey)),
                value: controller.selectedGender == ''
                    ? null
                    : controller.selectedGender,
                items: ['Male', 'Female'].map((String e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e,
                        style: Theme.of(context).textTheme.displaySmall),
                  );
                }).toList(),
                onChanged: (val) {
                  controller.chooseGender(val!);
                },
              ),
            ]));
  }
}
