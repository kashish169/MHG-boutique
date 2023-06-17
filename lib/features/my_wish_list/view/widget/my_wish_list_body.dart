import 'package:flutter/material.dart';
import 'package:mhg/features/my_wish_list/view/widget/my_wish_list_body_buttons.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../widgets/delete_icon_button.dart';
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
              Container(
                height: 158,
                width: 120,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(12)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/start3.jpg"),
                        fit: BoxFit.fill)),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 15),
                        TopBodyHeader(),
                        SizedBox(height: 10),
                        BodyMiddleText(),
                        BodyButtons(),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: DeleteIconButton(
                      onTap: () {},
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
