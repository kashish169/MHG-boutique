import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/personal_infromation/controller/peronal_informatiom_controller.dart';
import 'package:mhg/features/personal_infromation/view/widget/inforamation_form.dart';
import 'package:mhg/widgets/loading_widget.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../widget/delete_account_dialog.dart';
import '../widget/personal_info_button.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class PersonalInformation extends StatelessWidget {
  PersonalInformation({super.key});
  final PersonalInformationController controller = Get.find();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Personal Information"),
      body: GetBuilder<PersonalInformationController>(
          builder: (controller) => controller.isLoading
              ? const LoadingWidget()
              : Obx(() => Form(
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
                                        controller.enableEditOnEmail,
                                  ),
                                  InformationForm(
                                    header: 'Phone number',
                                    hint: controller.profileInfo.number ??
                                        "Add your Number",
                                    onTap: () {
                                      controller.enableNumber();
                                    },
                                    textController: controller.phone,
                                    inInputNumber: true,
                                    isEnableToEdit:
                                        controller.enableEditOnNumber.value,
                                  ),
                                  InformationForm(
                                    textController: controller.address,
                                    header: 'Address',
                                    hint: controller.profileInfo.street ??
                                        'Add your address',
                                    onTap: () {
                                      controller.enableAddress();
                                    },
                                    isEnableToEdit:
                                        controller.enableEditOnAddress,
                                  ),
                                  InformationForm(
                                    header: 'State',
                                    hint: controller.profileInfo.state ??
                                        'Add your state',
                                    validator: (val) {
                                      return AppHelper.validation(
                                          val!, 1, 500, '');
                                    },
                                    onTap: () {
                                      controller.enableState();
                                    },
                                    textController: controller.state,
                                    isEnableToEdit:
                                        controller.enableEditOnState,
                                  ),
                                  InformationForm(
                                    header: 'Zip Code',
                                    hint: controller.profileInfo.zipCode ??
                                        'Add your zip code',
                                    onTap: () {
                                      controller.enableZipCode();
                                    },
                                    textController: controller.zipCode,
                                    isEnableToEdit:
                                        controller.enableEditOnZipCode,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Country",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
                                                fontSize: 16,
                                                color: AppColors.lightGray2),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      DropdownButtonHideUnderline(
                                        child: DropdownButton2<String>(
                                          isExpanded: true,
                                          value: controller.selectedCountry,
                                          onChanged: (value) {
                                            controller.setCountry(value);
                                          },
                                          hint: Text(
                                            'Select Country',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Theme.of(context).hintColor,
                                            ),
                                          ),
                                          items: controller.countriesModel.data!
                                              .map(
                                                (item) =>
                                                    DropdownMenuItem<String>(
                                                  value: item.name,
                                                  child: RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        WidgetSpan(
                                                          child: Image.network(
                                                            item.flagLink!,
                                                            height: 15,
                                                            width: 15,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              ' ' + item.name!,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .displaySmall!
                                                                  .copyWith(
                                                                    fontSize:
                                                                        14,
                                                                    color: AppColors
                                                                        .black3,
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                          dropdownSearchData:
                                              DropdownSearchData(
                                            searchController: _searchController,
                                            searchInnerWidgetHeight: 50,
                                            searchInnerWidget: Container(
                                              height: 50,
                                              padding: const EdgeInsets.only(
                                                top: 8,
                                                bottom: 4,
                                                right: 8,
                                                left: 8,
                                              ),
                                              child: TextFormField(
                                                expands: true,
                                                maxLines: null,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displaySmall!
                                                    .copyWith(
                                                      fontSize: 14,
                                                      color: AppColors.black3,
                                                    ),
                                                controller: _searchController,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                    horizontal: 10,
                                                    vertical: 8,
                                                  ),
                                                  hintText:
                                                      'Search for a country...',
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .displaySmall!
                                                      .copyWith(
                                                        fontSize: 14,
                                                        color: AppColors
                                                            .lightGray2,
                                                      ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            searchMatchFn: (item, searchValue) {
                                              return (item.value
                                                  .toString()
                                                  .contains(
                                                    searchValue,
                                                  ));
                                            },
                                          ),
                                          onMenuStateChange: (isOpen) {
                                            if (!isOpen) {
                                              _searchController.clear();
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (controller.enableEditOnName == false ||
                            controller.enableEditOnState == false ||
                            controller.enableEditOnZipCode == false ||
                            controller.enableEditOnEmail == false ||
                            controller.enableEditOnPassword == false ||
                            controller.enableEditOnNumber.isFalse ||
                            controller.enableEditOnAddress == false)
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
                  ))),
    );
  }
}
