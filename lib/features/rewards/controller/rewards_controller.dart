import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/features/profile/controller/profile_controller.dart';
import '../../../constants/app_colors.dart';
import '../model/rewards_tiers_model.dart';

class RewardsController extends GetxController {
  ProfileController controller = Get.find();
  String? currentTier;
  List<TiersModel> tiersList = [];
  @override
  void onInit() {
    print(controller.model.value?.currentTier);
    currentTier = controller.model.value?.currentTier ?? 'empty';
    tiersList = [
      TiersModel(
        id: 1,
        name: 'Mojab',
        description:
            'Unlock To Start Earning More Credits For Each Time You Buy From Our Brands',
        image: AppAssets.mojab,
        isLocked: (currentTier == 'Mojab' ||
                currentTier == 'Moghram' ||
                currentTier == 'Molah')
            ? false
            : true,
        color: currentTier == 'Mojab' ? AppColors.molah : AppColors.moghram,
        textColor: currentTier == 'Mojab' ? AppColors.white : AppColors.label,
      ),
      TiersModel(
        id: 2,
        name: 'Moghram',
        description: 'Unlock To Have Special Offers And Extra Gifts',
        image: AppAssets.moghram,
        isLocked:
            (currentTier == 'Moghram' || currentTier == 'Molah') ? false : true,
        color: currentTier == 'Moghram' ? AppColors.molah : AppColors.moghram,
        textColor: currentTier == 'Moghram' ? AppColors.white : AppColors.label,
      ),
      TiersModel(
        id: 3,
        name: 'Molah',
        description:
            'Unlock To Be The Vip User, With Tons Of Gifts And Offers More Than 40% Sales',
        image: AppAssets.molah,
        isLocked: currentTier == 'Molah' ? false : true,
        color: currentTier == 'Molah' ? AppColors.molah : AppColors.moghram,
        textColor: currentTier == 'Molah' ? AppColors.white : AppColors.label,
      ),
    ];
    super.onInit();
  }
}
