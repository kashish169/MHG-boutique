import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';

showStoresBottomSheet(List<String>? places) => Get.bottomSheet(
      Container(
        height: Get.height * 0.35,
        color: AppColors.dGreen.withOpacity(0.8),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                left: Get.width * 0.42,
                top: 15,
                child: SizedBox(
                  height: Get.height * 0.02,
                  child: const Text(
                    'STORES',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  places?.length ?? 0,
                  (index) => Padding(
                    padding: index == 0
                        ? EdgeInsets.only(top: Get.height * 0.1 , bottom: 8, )
                        : EdgeInsets.all(8),
                    child: Center(
                      child: SizedBox(
                        height: Get.height * 0.02,
                        child: Text(
                          places?[index] ?? 'NO STORES AVAILABLE',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //barrierColor: Colors.transparent,
      isDismissible: true,
    );
