import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';

class ENotificationsTopPart extends StatelessWidget {
  const ENotificationsTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 110),
                Text(
                  "MHGboutique",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                ),
                const SizedBox(height: 10),
                Text("THE ULTIMATE HOUSE OF EMIRATI LUXURY".tr,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white.withOpacity(0.5),
                        )),
              ],
            ),
          ),
          const Expanded(flex: 1, child: SizedBox(height: 150)),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "NOTIFICATIONS".tr,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  "WOULD YOU LIKE TO GET NOTIFICATIONS".tr,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                ),
                const SizedBox(height: 10),
                Text("to Stay up to date on latest offers and more".tr,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                        )),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
