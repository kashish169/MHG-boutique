import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';

class TopBodyHeader extends StatelessWidget {
  const TopBodyHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 16, color: AppColors.darkGrey),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
