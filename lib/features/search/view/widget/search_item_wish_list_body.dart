import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:mhg/features/home/models/product_model.dart';
import 'package:mhg/features/my_wish_list/model/wish_list_model.dart';
import 'package:mhg/widgets/net_image.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/heart_widget.dart';
import '../../../profile/controller/profile_controller.dart';

class SearchItemWishListBody extends StatelessWidget {
  const SearchItemWishListBody(
      {super.key, required this.model, required this.onTap});
  final WishListModel model;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final profileController = Get.find<ProfileController>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
      child: Material(
          elevation: 5,
          shadowColor: AppColors.white2,
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12)),
                        child: NetImage(
                          image: model.options.imageLink,
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          model.name,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: AppColors.darkGrey),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Obx(() => Text(
                              "${profileController.currnecy.value} ${model.price}",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontSize: 12, color: AppColors.darkGrey),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              FavouriteWidget(
                from: 'search',
                inWishlist: 1,
                onTap: onTap,
                height: 22,
              )
            ],
          )),
    );
  }
}
