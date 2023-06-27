import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';
import 'package:mhg/features/checkout/views/widgets/place_order_button.dart';

import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/custom_form_field.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';

class SendPointsPage extends StatelessWidget {
  static String routeName = '/send_points';
  ProfileController controller = Get.find();
  SendPointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: "Send Points"),
      body: Obx(() => Column(
        
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.75,
                child: CustomFormField(
                  hint: 'Your phone number',
                  
                  validator: (val) {
                    return AppHelper.validation(val!, 1, 500, '');
                  },
                  onTap: () {},
                  controller: controller.phoneNumberController,
                  obscure: false,
                ),
              ),
             const  SizedBox(height: 10,),
              SizedBox(
                 width: MediaQuery.of(context).size.width*0.75,
                child: CustomFormField(
                  hint: 'Your hearts number',
                  validator: (val) {
                    return AppHelper.validation(val!, 1, 500, '');
                  },
                  onTap: () {},
                  controller: controller.heartsController,
                  obscure: false,
                ),
              ),
               SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              controller.isLoading.value
                  ? const LoadingWidget()
                  : controller.isError.value
                      ? RetryButton(
                          onTap: () => controller.sendHearts(
                            controller.heartsController.text,
                            controller.phoneNumberController.text,
                          ),
                        )
                      : PlaceOrderButton(
                          color: AppColors.secondary,
                          title: 'Send',
                          width: 300,
                          hasIcon: false,
                          onPress: () {
                            controller.sendHearts(
                              controller.heartsController.text,
                              controller.phoneNumberController.text,
                            );
                          },
                        ),
            ],
          )),
    );
  }
}
