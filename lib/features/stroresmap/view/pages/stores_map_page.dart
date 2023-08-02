import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/widgets/custom_app_bar.dart';

import '../../controller/stores_map_controller.dart';

class StoresMapPage extends StatelessWidget {
  StoresMapPage({super.key});
  final StoresMapController storesMapController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'Find our stores'),
      body: GetBuilder<StoresMapController>(
        builder: (storesMapController) => Stack(
          children: [
            if (storesMapController.kGooglePlex != null)
              SizedBox(
                height: AppDimensions.screenHeight(context),
                child: GoogleMap(
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  mapType: MapType.normal,
                  markers: storesMapController.markerList.toSet(),
                  initialCameraPosition: storesMapController.kGooglePlex!,
                  onMapCreated: (GoogleMapController controllerMap) {
                    storesMapController.controller.complete(controllerMap);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/*
 body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: FittedBox(
                  child: Text(
                    "ANFASIC\nDOKHOON",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 12),
                  ),
                ),
              ),
              Tab(
                child: FittedBox(
                  child: Text(
                    "HIND\nAL OUD",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 12),
                  ),
                ),
              ),
              Tab(
                child: FittedBox(
                  child: Text(
                    "KHALTAT",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 12),
                  ),
                ),
              ),
              Tab(
                child: FittedBox(
                  child: Text(
                    "HOB",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 12),
                  ),
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
      */