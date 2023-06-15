import 'package:flutter/material.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';

class RecentSearchButton extends StatelessWidget {
  const RecentSearchButton({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.grey, width: 0.8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onTap,
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    AppAssets.recent,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Wrap(
                    children: [
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 12),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
