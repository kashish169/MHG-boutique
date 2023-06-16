import 'package:flutter/material.dart';
import 'package:mhg/features/search/view/widget/search_recent_button.dart';

import '../../../../constants/app_colors.dart';
import 'custom_search_section.dart';

class RecentSearchBody extends StatelessWidget {
  const RecentSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const CustomSearchSection(title: " Recent Searaches"),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: RecentSearchButton(
                    title: "Shay Much Perfume",
                    onTap: () {},
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: RecentSearchButton(
                    title: "Eid Is Shay Gift Set",
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
      ],
    );
  }
}
