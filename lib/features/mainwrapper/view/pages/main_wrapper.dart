import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/my_wish_list/view/pages/my_wish_list.dart';
import 'package:mhg/features/profile/view/pages/profile_view.dart';
import '../../../categories/view/pages/categories_page.dart';
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

class _MainWrapperState extends State<MainWrapper> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final mainController = Get.find<MainWrapperController>();

  @override
  void initState() {
    final args = Get.arguments;
    if (Get.arguments != null) {
      mainController.globalGuestCountryCode = args['country_code'];
      mainController.globalGuestCountryFlag = args['flag'];
      mainController.globalGuestCountryId = args['id'];
    }
    super.initState();
  }

  final List<Widget> _children = [
    const HomePage(),
    const CategoriesPage(),
    MyWishList(),
    const MyCartPage(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: mainAppBar(
        context: context,
        scaffoldKey: scaffoldKey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavBarWidget(),
      body: Obx(() => IndexedStack(
            index: mainController.navBarIndex.value,
            children: _children,
          )),
    );
  }
}
