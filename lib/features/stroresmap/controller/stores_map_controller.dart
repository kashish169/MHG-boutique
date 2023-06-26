// import 'dart:convert';
// import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StoresMapController extends GetxController {
  RxList<Marker> myMarker = <Marker>[].obs;
  late GoogleMapController googleMapController;
  LatLng currentPosition = const LatLng(0, 0);
  final markers = <MarkerId, Marker>{}.obs;
  var kMarkerId = const MarkerId('MarkerId1');
  double zoom = 0;

  // @override
  // void onInit() {
  //
  //   super.onInit();
  // }

  void onGeoChanged(CameraPosition position) {
    if (zoom != position.zoom) {
      zoom = position.zoom;
    }
  }
}
