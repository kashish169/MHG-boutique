import 'package:flutter/material.dart';
import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/features/categories/models/menu.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import '../../../mainwrapper/view/widgets/bottom_nav_bar.dart';
import '../widgets/category_list_tile.dart';

class SubCategoriesPage extends StatelessWidget {
  static String routeName = '/sub_categories';
  const SubCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List data = ModalRoute.of(context)!.settings.arguments as List;
    List<MenuModel> categoriesModel = data[0];
    String title = data[1];
    return Scaffold(
      appBar: customAppBar(context, title: title),
      bottomNavigationBar: const BottomNavBarWidget(),
      body: SafeArea(
        child: ListView.builder(
            padding: const EdgeInsetsDirectional.only(bottom: 10),
            itemCount: categoriesModel.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CategoryListTile(
                model: categoriesModel[index],
              );
            }),
      ),
    );
  }
}
