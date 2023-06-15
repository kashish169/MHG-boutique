import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/categories/view/widgets/Categories_explore_our_brands_card.dart';
import 'package:mhg/features/categories/view/widgets/category_list_tile.dart';
import 'package:mhg/features/home/view/widgets/home_explore_our_brands_widget.dart';

class CategoryPage extends StatelessWidget {
  static String routeName = '/category';

  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.white2,
        child:  const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CategoryListTile(title: 'Top Sellers'),
            CategoryListTile(title: 'Iconic Brands'),
            CategoryListTile(title: 'Frangances'),
            CategoryListTile(title: 'Oud and Dokhoon'),
            CategoryListTile(title: 'Dehn Oud'),
            CategoryListTile(title: 'Make-Up'),
            CategoryListTile(title: 'Giveaway & Services'),
            CategoryExploreOurBrandsWidget(),
            SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
}
