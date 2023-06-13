import 'package:flutter/material.dart';
import 'package:mhg/features/my_wish_list/view/widget/my_wish_list_body_buttons.dart';
import '../../../../constants/app_colors.dart';
import 'my_wish_list_body_header.dart';
import 'my_wish_list_body_middle_text.dart';

class MyWishBody extends StatelessWidget {
  const MyWishBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
      child: Material(
        shadowColor: AppColors.white2,
        elevation: 3,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // image: DecorationImage(
                    //     image: AssetImage(AppAssets.img1),
                    //     fit: BoxFit.cover)
                  ),
                ),
              ),
              const Expanded(
                flex: 13,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TopBodyHeader(),
                      SizedBox(
                        height: 10,
                      ),
                      BodyMiddleText(),
                      BodyButtons(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
