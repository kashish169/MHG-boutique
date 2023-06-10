import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.grey,
      thickness: .5,
    );
  }
}
