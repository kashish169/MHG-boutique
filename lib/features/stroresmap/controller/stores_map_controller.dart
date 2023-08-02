import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../constants/app_colors.dart';
import '../model/stores_map_markers.dart';

class StoresMapController extends GetxController {
  double zoom = 0;
  List<Marker> markerList = markerListData;
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  Position? position;
  CameraPosition? kGooglePlex;

  CameraPosition kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  getCurrentLocation() async {
    position = await Geolocator.getCurrentPosition();
    position ??= await Geolocator.getLastKnownPosition();
    markerList.add(Marker(
        markerId: const MarkerId("User Marker"),
        position: LatLng(position!.latitude, position!.longitude),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue)));
    kGooglePlex = CameraPosition(
        target: LatLng(position!.latitude, position!.longitude), zoom: 14.32);

    update();
  }

  requestLocationPermission() async {
    bool serviceEnable;
    LocationPermission permission;
    serviceEnable = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {
      return Get.snackbar(
        "Warning",
        "Please enable location Service",
      );
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Get.snackbar(
          "Warning",
          "Please give permission for location",
          backgroundColor: AppColors.white,
        );
      }
      if (permission == LocationPermission.deniedForever) {
        return Get.snackbar(
          "Warning",
          "You can't  use map with out location service",
          backgroundColor: AppColors.white,
        );
      }
      if (permission == LocationPermission.whileInUse) {
        getCurrentLocation();
      }
    }
    if (permission == LocationPermission.whileInUse) {
      getCurrentLocation();
    }
  }

  @override
  void onInit() {
    requestLocationPermission();
    super.onInit();
  }
}
