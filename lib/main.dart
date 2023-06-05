import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mhg/theme/theme.dart';
import 'core/routes/app_routes.dart';

void main() {
  runApp(const MHG());
}

class MHG extends StatelessWidget {
  const MHG({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      getPages: AppRoutes.getRoutes,
    );
  }
}
