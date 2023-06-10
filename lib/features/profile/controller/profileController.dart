import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';
import 'package:mhg/features/profile/models/profle_info_model.dart';
import 'package:mhg/features/profile/repository/profile_repo_impl.dart';
import 'package:mhg/features/profile/repository/profile_repository.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../widgets/show_snack_bar.dart';


class ProfileController extends GetxController {
  late ProfileRepo profileRepo;
  late ProfileInfoModal model;

  ProfileController() {
   profileRepo = Get.find<ProfileRepoImpl>();
  }
 RxBool isLoading=false.obs;
  RxBool isError=false.obs;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrViewController;
  @override
  Future<void> onInit() async {
    getProfileInfo();
    super.onInit();
  }
  Future<void> getProfileInfo() async {
    isLoading(true);
    isError(false);
    Either<Failure, ApiResponse> results = await profileRepo.getInfo();
    isLoading(false);
    results.fold(
          (l) {
        isError(true);
        showSnackBar(l.message);
      },
          (r) async {
        log("${r.object}");
        log("//////////");
        int statusCode = r.object['code'];
        var message = r.object['message'];
        if (statusCode == 200) {
          model = ProfileInfoModal.fromJson(r.object["data"]);

        } else if (statusCode == 400) {
          showSnackBar(message);
        } else if (statusCode == 401) {
          showSnackBar(message);
        } else {
          showSnackBar(message);
        }
      },
    );
  }


      }



