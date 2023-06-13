import 'package:flutter/material.dart';
import 'package:mhg/features/home/view/widgets/home_slider.dart';
import '../widgets/home_explore_our_brands_widget.dart';
import '../widgets/home_trends_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Column(
        children: const [
          HomeSlider(),
          HomeTrendsWidget(),
          HomeExploreOurBrandsWidget(),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
