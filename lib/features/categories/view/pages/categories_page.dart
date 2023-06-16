import 'package:flutter/material.dart';
import '../widgets/categoies_explore_our_brands_card.dart';
import '../widgets/category_list_tile.dart';

class CategoriesPage extends StatelessWidget {
  static String routeName = '/categories';
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CategoryListTile(title: 'Top Sellers'),
          CategoryListTile(title: 'Iconic Brands'),
          CategoryListTile(title: 'Frangances'),
          CategoryListTile(title: 'Oud and Dokhoon'),
          CategoryListTile(title: 'Dehn Oud'),
          CategoryListTile(title: 'Make-Up'),
          CategoryListTile(title: 'Giveaway & Services'),
          CategoryExploreOurBrandsWidget(),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
