import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/widgets/custom_app_bar.dart';

class QRPage extends StatefulWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Scaffold(
      appBar: customAppBar(context, title: "Scan Your Qr"),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
                height: 63,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppAssets.cardBackground1),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: FittedBox(
                          child: Text(
                            'Hello,${controller.model.value!.name}',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.white,
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: FittedBox(
                          child: Text(
                            'Your Total Points \n ${controller.model.value!.hearts} Pts ',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.white,
                                  fontSize: 14,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        AppAssets.scanbackground,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Scan To Earn',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                fontSize: 16,
                                color: AppColors.white,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  AppAssets.starGif,
                  height: 150,
                  width: double.infinity,
                ),
              ],
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(8),
                    ),
                    border: Border.all(
                      color: AppColors.primary,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Scan to collect Points',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 18,
                          ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.primary),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'Collect 50 Pts per 10 ${controller.currnecy.value}',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        )),
                    const SizedBox(height: 5),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: Image.network(
                          controller.model.value!.qrLink,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              )),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
