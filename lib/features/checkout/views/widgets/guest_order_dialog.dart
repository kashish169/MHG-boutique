import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/widgets/primary_button.dart';
import '../../../../constants/app_assets.dart';
import '../../../../core/helper/app_helper.dart';
import '../../../../widgets/custom_form_field.dart';
import '../../controllers/checkout_controller.dart';

class GuestOrderDialog extends StatelessWidget {
  GuestOrderDialog({super.key});
  final CheckoutController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
      child: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  'Name :',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 15),
                ),
              ),
              CustomFormField(
                hint: 'Enter your name',
                inputType: TextInputType.text,
                controller: controller.guestName,
                obscure: false,
                validator: (val) {
                  return AppHelper.validation(val!, 1, 500, '');
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  'Email :',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 15),
                ),
              ),
              CustomFormField(
                hint: 'Enter your email address',
                inputType: TextInputType.text,
                controller: controller.guestEmail,
                obscure: false,
                validator: (val) {
                  return AppHelper.validation(val!, 1, 500, 'email');
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  'Address :',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 15),
                ),
              ),
              CustomFormField(
                hint: 'Enter your address',
                inputType: TextInputType.text,
                controller: controller.guestAddress,
                obscure: false,
                validator: (val) {
                  return AppHelper.validation(val!, 1, 500, '');
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  'Emirate :',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 15),
                ),
              ),
              CustomFormField(
                hint: 'Enter your emirate',
                inputType: TextInputType.text,
                controller: controller.guestEmirate,
                obscure: false,
                validator: (val) {
                  return AppHelper.validation(val!, 1, 500, '');
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  'Phone number :',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 15),
                ),
              ),
              CustomFormField(
                hint: 'Enter your phone number',
                prefixWidget: MaterialButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  onPressed: () {},
                  child: SizedBox(
                    width: 110,
                    child: Row(
                      children: [
                        const SizedBox(width: 8),
                        Image.asset(
                          AppAssets.flag,
                          height: 20,
                        ),
                        Text(
                          '+973',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const SizedBox(
                          height: 30,
                          child: VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: Color(0XFFBCBCBC),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                inputType: TextInputType.number,
                obscure: false,
                controller: controller.guestNumber,
                validator: (val) {
                  return AppHelper.validatePhone(val!);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: PrimaryButton(
                title: 'Place Order',
                height: 50,
                width: AppDimensions.screenWidth(context),
                onTap: () {
                  controller.guestCreateOrder();
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
