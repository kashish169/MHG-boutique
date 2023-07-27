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
    );
  }
}
