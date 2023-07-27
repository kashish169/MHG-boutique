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
