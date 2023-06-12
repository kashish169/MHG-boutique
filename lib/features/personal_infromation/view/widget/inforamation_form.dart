import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/personal_infromation/view/widget/CountryButtonPick.dart';
import 'package:mhg/widgets/custom_form_field.dart';

import '../../controller/peronal_informatiom_controller.dart';

class InformationForm extends StatelessWidget {
  InformationForm(
      {super.key,
      required this.header,
      required this.hint,
      this.onTap,
      required this.isEnableToEdit,
      this.inInputNumber,
      required this.textController,
      this.validator});
  final String header;
  final String hint;
  final Function()? onTap;
  final bool? isEnableToEdit;
  final bool? inInputNumber;
  final String? Function(String?)? validator;
  final TextEditingController textController;
  final PersonalInformationController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalInformationController>(
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            header,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 16, color: AppColors.lightGray2),
          ),
          const SizedBox(
            height: 10,
          ),
          header=='Phone number'?
              Row(
                children: [
                  const CountryButtonPicker(),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: CustomFormField(
                      controller: textController,
                      validator: validator,
                      inputType: inInputNumber == null
                          ? TextInputType.name
                          : TextInputType.number,
                      readOnly: isEnableToEdit,
                      suffixIcon: IconButton(
                        onPressed: onTap,
                        icon: SizedBox(
                          height: 25,
                          width: 25,
                          child: isEnableToEdit == true
                              ? Image.asset(AppAssets.edit)
                              : SizedBox(
                            height: 25,
                            width: 25,
                            child: Icon(
                              Icons.check,
                              color: AppColors.label,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                      obscure: false,
                    ),
                  )
                ],
              ):
          CustomFormField(
            controller: textController,
            validator: validator,
            inputType: inInputNumber == null
                ? TextInputType.name
                : TextInputType.number,
            readOnly: isEnableToEdit,
            suffixIcon: IconButton(
              onPressed: onTap,
              icon: SizedBox(
                height: 25,
                width: 25,
                child: isEnableToEdit == true
                    ? Image.asset(AppAssets.edit)
                    : SizedBox(
                        height: 25,
                        width: 25,
                        child: Icon(
                          Icons.check,
                          color: AppColors.label,
                          size: 25,
                        ),
                      ),
              ),
            ),
            obscure: false,
          ),
        ],
      ),
    );
  }
}
