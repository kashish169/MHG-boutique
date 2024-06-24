import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/retry_button.dart';
import '../../../categories/view/pages/categories_page.dart';
import '../../../home/view/widgets/home_reward_box.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';
import '../../controller/profile_controller.dart';
import '../widgets/profile_header.dart';
import '../widgets/reward_widget.dart';

class ProfileCategoriesView extends StatelessWidget {
  const ProfileCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarWidget(),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.black,
          )),
      body: GetX<ProfileController>(
        builder: (controller) {
          if (controller.isLoading.isTrue) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.isError.isTrue) {
            return RetryButton(
              onTap: () {
                controller.getProfileInfo();
              },
            );
          }
          return RefreshIndicator(
              onRefresh: () async => controller.getProfileInfo(),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ProfileHeader(
                            name: controller.model.value?.name ?? '',
                            email: controller.model.value?.email ?? '',
                            image: controller.model.value?.image,
                            level: controller.model.value?.currentTier ?? '-',
                          ),
                          const ProfileRewardBox(),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 25),
                            child: CategoriesPage(
                              indexChosen: 1,
                              isProfileView: true,
                              topPadding: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const HomeRewardBox()
                ],
              ));
        },
      ),
    );
  }
}
