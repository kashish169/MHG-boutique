import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';

showStoresBottomSheet(List<String>? places, name, tel , {second_tel}) => Get.bottomSheet(
      Container(
        height: Get.height * 0.35,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                left: Get.width * 0.42,
                top: 15,
                child: SizedBox(
                  height: Get.height * 0.02,
                  child: Text(
                    'STORES',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.dGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                      places?.length ?? 0,
                      (index) => Padding(
                        padding: index == 0
                            ? EdgeInsets.only(
                                top: Get.height * 0.065,
                                bottom: 8,
                              )
                            : EdgeInsets.all(8),
                        child: Center(
                          child: SizedBox(
                            height: Get.height * 0.02,
                            child: Text(
                              places?[index] ?? 'NO STORES AVAILABLE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.dGreen,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Text(
                    'CALL US',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.dGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      AppHelper.launchURL(tel, 'tel');
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 8,
                        right: Get.width * 0.02,
                      ),
                      child: Table(
                        border: null,
                        children: [
                          TableRow(
                            children: [
                              Text(
                                name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.dGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                tel,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.dGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 25),
                                  child: Icon(
                                    Icons.call,
                                    color: AppColors.dGreen,
                                  ),
                                ),
                              ),
                            
                            ],
                          ) , 
                           second_tel != null ? TableRow(
                            children: [
                              Text(
                                name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.dGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                second_tel,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.dGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: AppColors.dGreen,
                              ),
                            
                            ],
                          ) :const TableRow(children: [SizedBox() , SizedBox() , SizedBox()])
                        ],
                      ) 
                      ,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      //barrierColor: Colors.transparent,
      isDismissible: true,
    );
