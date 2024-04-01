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
    // print(controller.model.value?.currentTier);
    currentTier = controller.model.value?.currentTier ?? 'empty';
    tiersList = [
      TiersModel(
        id: 1,
        name: 'Mojab',
        description: 'Earn 2.5% loyalty points on your purchase amount',
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
        description: 'Earn 5% loyalty points on your purchase amount',
        image: AppAssets.moghram,
        isLocked:
            (currentTier == 'Moghram' || currentTier == 'Molah') ? false : true,
        color: currentTier == 'Moghram' ? AppColors.molah : AppColors.moghram,
        textColor: currentTier == 'Moghram' ? AppColors.white : AppColors.label,
      ),
      TiersModel(
        id: 3,
        name: 'Molah',
        description: 'Earn 10% loyalty points on your purchase amount',
        image: AppAssets.molah,
        isLocked: currentTier == 'Molah' ? false : true,
        color: currentTier == 'Molah' ? AppColors.molah : AppColors.moghram,
        textColor: currentTier == 'Molah' ? AppColors.white : AppColors.label,
      ),
    ];
    super.onInit();
  }
}
