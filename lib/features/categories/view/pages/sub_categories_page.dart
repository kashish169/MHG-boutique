import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/features/categories/controller/categories_controller.dart';
import 'package:mhg/features/categories/models/categories_model.dart';
import 'package:mhg/widgets/custom_app_bar.dart';
import 'package:mhg/widgets/loading_widget.dart';
import 'package:mhg/widgets/retry_button.dart';
import '../widgets/categoies_explore_our_brands_card.dart';
import '../widgets/category_list_tile.dart';

class SubCategoriesPage extends StatelessWidget {
  static String routeName = '/sub_categories';

  const SubCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List  data=ModalRoute.of(context)!.settings.arguments as List;
    List<Menu> categoriesModel=data![0] ;
    String title=data![1] ;
    log(Get.arguments.toString());
    return   Scaffold(
      appBar: customAppBar(context,title: title),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              for(int i=0 ;i<categoriesModel.length;i++)
                CategoryListTile(model: categoriesModel[i]),


              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );




  }
}
