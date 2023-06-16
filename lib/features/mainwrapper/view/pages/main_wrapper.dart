import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/categories/view/pages/category_page.dart';
import 'package:mhg/features/my_wish_list/view/pages/my_wish_list.dart';
import 'package:mhg/features/profile/view/pages/profile_view.dart';
import '../../../home/view/pages/home_page.dart';
import '../../../mycart/view/pages/my_cart_page.dart';
import '../../controller/main_wrapper_controller.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/main_app_bar.dart';

class MainWrapper extends StatefulWidget {
  static String routeName = '/main_wrapper';
  const MainWrapper({Key? key}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController tabController;
  int currentIndex = 0;
  final mainController = Get.find<MainWrapperController>();

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: currentIndex,
      length: _children.length,
      vsync: this,
    );
    tabController.addListener(() {
      currentIndex = tabController.index;
      if (mounted) setState(() {});
    });
  }

  final List<Widget> _children = const [
    HomePage(),
    CategoryPage(),
    MyWishList(),
    MyCartPage(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      onDrawerChanged: (isOpened) {
        if (mounted) setState(() {});
      },
      appBar: mainAppBar(
        context: context,
        scaffoldKey: scaffoldKey,
        currentIndex: currentIndex,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBarWidget(
        scaffoldKey: scaffoldKey,
        tabController: tabController,
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: _children,
      ),
    );
  }
}
