import 'package:flutter/material.dart';
import 'package:mhg/features/stroresmap/view/widgets/table_four.dart';
import 'package:mhg/features/stroresmap/view/widgets/table_one.dart';
import 'package:mhg/features/stroresmap/view/widgets/table_three.dart';
import 'package:mhg/features/stroresmap/view/widgets/table_two.dart';

import 'package:mhg/widgets/custom_app_bar.dart';

class StoresMapPage extends StatefulWidget {
  static String routeName = '/map';
  const StoresMapPage({super.key});

  @override
  State<StoresMapPage> createState() => _StoresMapPageState();
}

class _StoresMapPageState extends State<StoresMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Find our stores'),
      body: const DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                height: 70,
                child: Text(
                  "ANFASIC\nDOKHOON",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Tab(
                height: 70,
                child: Text(
                  "HIND\nAL OUD",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Tab(
                height: 70,
                child: Text(
                  "KHALTAT",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Tab(
                height: 70,
                child: Text(
                  "HOB",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              TableOne(),
              TableTwo(),
              TableThree(),
              TableFour(),
            ],
          ),
        ),
      ),
    );
  }
}

/**
 * Animarker(
            curve: Curves.linear,
            rippleRadius: 0.2,
            shouldAnimateCamera: false,
            useRotation: false,
            zoom: mapController.zoom,
            duration: const Duration(milliseconds: 50),
            mapId: _controller.future.then<int>((value) => value.mapId),
            //Grab Google Map Id
            markers: mapController.markers.values.toSet(),
            child: GoogleMap(
              onCameraMove: mapController.onGeoChanged,
              compassEnabled: false,
              zoomGesturesEnabled: true,
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              mapToolbarEnabled: false,
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              initialCameraPosition: const CameraPosition(
                target: LatLng(0, 0),
                zoom: 0,
              ),
              onMapCreated: (GoogleMapController controller) async {
                if (!_controller.isCompleted) {
                  _controller.complete(controller);
                }
                mapController.googleMapController = controller;
              },
              markers: Set.from(mapController.myMarker),
            ),
          ),
 */
