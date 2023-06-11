import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';
import 'package:mhg/features/personal_infromation/view/widget/inforamation_form.dart';
import 'package:mhg/widgets/loading_widget.dart';

import '../../../../widgets/custom_app_bar.dart';
import '../widget/personal_info_button.dart';

class PersonalInformation extends StatelessWidget {
  PersonalInformation({super.key});
  final PersonalInformationController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Personal Information"),
      body: GetBuilder<PersonalInformationController>(
          builder: (controller) => controller.isLoading
              ? const LoadingWidget()
              : Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InformationForm(
                                  header: 'Full Name',
                                  hint: controller.profileInfo.name,
                                  validator: (val) {
                                    return AppHelper.validation(
                                        val!, 1, 500, '');
                                  },
                                  onTap: () {
                                    controller.enableName();
                                  },
                                  textController: controller.name,
                                  isEnableToEdit: controller.enableEditOnName,
                                ),
                                InformationForm(
                                    header: 'Email',
                                    hint: controller.profileInfo.email,
                                    validator: (val) {
                                      return AppHelper.validation(
                                          val!, 1, 500, 'email');
                                    },
                                    onTap: () {
                                      controller.enableEmail();
                                    },
                                    textController: controller.email,
                                    isEnableToEdit:
                                        controller.enableEditOnEmail),
                                InformationForm(
                                    header: 'Phone number',
                                    hint: controller.profileInfo.number ??
                                        "Add your Number",
                                    onTap: () {
                                      controller.enableNumber();
                                    },
                                    // validator: (val) {
                                    //   return AppHelper.validation(
                                    //       val!, 9, 9, 'Number');
                                    // },
                                    textController: controller.phone,
                                    inInputNumber: true,
                                    isEnableToEdit:
                                        controller.enableEditOnNumber),
                                InformationForm(
                                    textController: controller.address,
                                    header: 'Address',
                                    hint: controller.profileInfo.street ??
                                        'Add your address',
                                    onTap: () {
                                      controller.enableAddress();
                                    },
                                    isEnableToEdit:
                                        controller.enableEditOnAddress),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (controller.enableEditOnName == false ||
                          controller.enableEditOnEmail == false ||
                          controller.enableEditOnPassword == false ||
                          controller.enableEditOnNumber == false ||
                          controller.enableEditOnAddress == false)
                        PersonalInfoButton(
                            text: "Save",
                            onTap: () {
                              controller.updateInformation();
                            },
                            isDelete: false),
                      PersonalInfoButton(
                          text: "Delete Account", onTap: () {}, isDelete: true),
                    ],
                  ),
                )),
    );
  }
}
