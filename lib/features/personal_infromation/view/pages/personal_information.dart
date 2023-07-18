import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';
import 'package:mhg/features/personal_infromation/view/widget/inforamation_form.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';
import '../widget/countries_drop_down_widget.dart';
import '../widget/delete_account_dialog.dart';
import '../widget/personal_info_button.dart';

class PersonalInformation extends StatelessWidget {
  static String routeName = "/personal_information";
  PersonalInformation({super.key});
  final PersonalInformationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Personal Information"),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: GetBuilder<PersonalInformationController>(
          builder: (controller) => controller.isLoading
              ? const LoadingWidget()
              : controller.iserror
                  ? RetryButton(onTap: () {
                      controller.getAllCountries();
                    })
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
                                      // onTap: () {
                                      //   controller.enableName();
                                      // },
                                      textController: controller.name,
                                      // isEnableToEdit:
                                      //     controller.enableEditOnName,
                                    ),
                                    InformationForm(
                                      header: 'Email',
                                      hint: controller.profileInfo.email,
                                      validator: (val) {
                                        return AppHelper.validation(
                                            val!, 1, 500, 'email');
                                      },
                                      // onTap: () {
                                      //   controller.enableEmail();
                                      // },
                                      textController: controller.email,
                                      // isEnableToEdit: true,
                                    ),
                                    InformationForm(
                                      header: 'Phone number',
                                      hint: "Add your Number",
                                      // onTap: () {
                                      //   controller.enableNumber();
                                      // },
                                      validator: (val) {
                                        return AppHelper.validatePhone(
                                          val!,
                                        );
                                      },
                                      textController: controller.phone,
                                      inInputNumber: true,
                                      // isEnableToEdit: true,
                                    ),
                                    InformationForm(
                                      textController: controller.address,
                                      header: 'Address',
                                      hint: 'Add your address',
                                      // onTap: () {
                                      //   controller.enableAddress();
                                      // },
                                      // isEnableToEdit:
                                      //     controller.enableEditOnAddress,
                                    ),
                                    // InformationForm(
                                    //   header: 'City',
                                    //   hint: 'Add your city',
                                    //   validator: (val) {
                                    //     if (val!.isEmpty) {
                                    //       return null;
                                    //     }
                                    //     return AppHelper.validation(
                                    //         val, 1, 500, '');
                                    //   },
                                    //   // onTap: () {
                                    //   //   controller.enableState();
                                    //   // },
                                    //   textController: controller.state,
                                    //   // isEnableToEdit:
                                    //   //     controller.enableEditOnState,
                                    // ),
                                    CountriesDropDownWidget(
                                      isCountry: false,
                                      countries: controller.countriesList,
                                      cities: controller.citiesList,
                                    ),
                                    InformationForm(
                                      header: 'Zip Code',
                                      hint: 'Add your zip code',
                                      // onTap: () {
                                      //   controller.enableZipCode();
                                      // },
                                      textController: controller.zipCode,
                                      // isEnableToEdit: true,
                                    ),
                                    CountriesDropDownWidget(
                                      isCountry: true,
                                      countries: controller.countriesList,
                                      cities: controller.citiesList,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          PersonalInfoButton(
                              text: "Save",
                              onTap: () {
                                controller.updateInformation();
                              },
                              isDelete: false),
                          PersonalInfoButton(
                              text: "Delete Account",
                              onTap: () {
                                deleteAccountDialog(
                                  context: context,
                                  message:
                                      'Are you sure you want to delete this account ?',
                                  onConfirm: () {
                                    controller.deleteAccount();
                                  },
                                );
                              },
                              isDelete: true),
                        ],
                      ),
                    )),
    );
  }
}
