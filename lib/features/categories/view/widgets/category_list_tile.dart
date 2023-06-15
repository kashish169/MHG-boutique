import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/divider_widget.dart';

class CategoryListTile extends StatelessWidget {

  final String title;
  final Function()? onTap;
  const CategoryListTile({
    super.key,

    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color:AppColors.white,
            height: 60,
            child: ListTile(

              title: Text(
                title,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 16),
              ),
              trailing:  Icon(
                Icons.arrow_forward_ios_sharp,
                color: AppColors.lightLabel2 ,
                size: 20,
              ),
            ),
          ),
          const DividerWidget()
        ],
      ),
    );
  }
}
