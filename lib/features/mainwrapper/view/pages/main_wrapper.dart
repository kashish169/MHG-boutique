import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import 'package:mhg/features/profile/view/pages/profile_view.dart';
import '../../../../widgets/retry_button.dart';
import '../../../categories/view/pages/categories_page.dart';
import '../../../home/view/pages/home_page.dart';
import '../../../mycart/view/pages/my_cart_page.dart';
import '../../controller/main_wrapper_controller.dart';
import '../widgets/bottom_nav_bar.dart';

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
    const CategoriesPage(
      indexChosen: 0,
    ),
    const CategoriesPage(
      indexChosen: 1,
    ),
    const MyCartPage(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return GetX<ProfileController>(builder: (controller) {
      if (mainController.navBarIndex.value != 0) {
        controller.changeRewardBannerIsScrlling(false);
      }
      if (controller.isLoading.isTrue) {
        return Container(
          color: AppColors.white,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else if (controller.isError.isTrue) {
        return Container(
          color: AppColors.white,
          child: RetryButton(
            onTap: () {
              controller.getProfileInfo();
            },
          ),
        );
      }
      return Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: AppBar(
                backgroundColor: Colors.transparent,
                systemOverlayStyle: SystemUiOverlayStyle.light,
              )),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const BottomNavBarWidget(),
          body: GetX<ProfileController>(
            builder: (controller) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: IndexedStack(
                    index: mainController.navBarIndex.value,
                    children: _children,
                  ),
                ),
              ],
            ),
          ));
    });
  }
}
