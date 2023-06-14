import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import '../widget/my_wish_list_body.dart';

class MyWishList extends StatelessWidget {
  const MyWishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white2,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2, itemBuilder: (context, index) => MyWishBody()),
          )
        ],
      ),
    );
  }
}
