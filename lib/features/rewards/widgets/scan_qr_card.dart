import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import '../../profile/view/pages/qr_view.dart';

class ScanQrCard extends StatelessWidget {
  const ScanQrCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          () => const QRPage(),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 82,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(8),
                  ),
                  color: AppColors.primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Scan Your QR'.tr,
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: AppColors.white,
                                ),
                      ),
                      Text(
                        'To Get Points & Rewards'.tr,
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: AppColors.white,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 82,
              width: 130,
              padding: const EdgeInsetsDirectional.only(end: 8),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(8),
                ),
                color: AppColors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AppAssets.qrGif,
                    fit: BoxFit.cover,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
