import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/setting/controller/setting_controller.dart';
class AllowAds extends StatelessWidget {
  const AllowAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller=Get.find<SettingController>();
    return Obx(() => InkWell(
      onTap: (){
        controller.adsAllowed.value=!controller.adsAllowed.value;
      },
      child: ColoredBox(
        color: AppColors.white,
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Image.asset(AppAssets.ads,
                height: 20,
                color: AppColors.primary,),
              const SizedBox(
                width: 20,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Personal Ads',style: Theme.of(context).textTheme.displaySmall,),
                  const SizedBox(height: 5,),
                  Text('See the Ads you want and personalized \nto you',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 10,
                      color: AppColors.grey
                  ),),
                ],
              ),
              const Expanded(
                child: SizedBox(


                ),
              ),
              Switch(
                // This bool value toggles the switch.
                value: controller.adsAllowed.value,
                activeColor: Colors.white,activeTrackColor: Colors.black,
                onChanged: (bool value) {
                  controller.adsAllowed.value=!controller.adsAllowed.value;
                },
              )

            ],
          ),),
      ),
    ));
  }
}
