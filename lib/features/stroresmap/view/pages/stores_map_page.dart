// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_animarker/flutter_map_marker_animation.dart';

// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:mhg/features/stroresmap/controller/stores_map_controller.dart';
// import 'package:mhg/widgets/custom_app_bar.dart';

// class StoresMapPage extends StatefulWidget {
//   static String routeName = '/map';
//   const StoresMapPage({super.key});

//   @override
//   State<StoresMapPage> createState() => _StoresMapPageState();
// }

// class _StoresMapPageState extends State<StoresMapPage> {
//   Completer<GoogleMapController> _controller = Completer();

//   @override
//   Widget build(BuildContext context) {
//     final mapController = Get.find<StoresMapController>();
//     return Scaffold(
//         appBar: customAppBar(context, title: 'Find our stores'),
//         body: Obx(
//           () => Animarker(
//             curve: Curves.linear,
//             rippleRadius: 0.2,
//             shouldAnimateCamera: false,
//             useRotation: false,
//             zoom: mapController.zoom,
//             duration: const Duration(milliseconds: 50),
//             mapId: _controller.future.then<int>((value) => value.mapId),
//             //Grab Google Map Id
//             markers: mapController.markers.values.toSet(),
//             child: GoogleMap(
//               onCameraMove: mapController.onGeoChanged,
//               compassEnabled: false,
//               zoomGesturesEnabled: true,
//               myLocationButtonEnabled: true,
//               myLocationEnabled: true,
//               mapToolbarEnabled: false,
//               zoomControlsEnabled: false,
//               mapType: MapType.normal,
//               initialCameraPosition: const CameraPosition(
//                 target: LatLng(0, 0),
//                 zoom: 0,
//               ),
//               onMapCreated: (GoogleMapController controller) async {
//                 if (!_controller.isCompleted) {
//                   _controller.complete(controller);
//                 }
//                 mapController.googleMapController = controller;
//               },
//               markers: Set.from(mapController.myMarker),
//             ),
//           ),
//         ));
//   }
// }
