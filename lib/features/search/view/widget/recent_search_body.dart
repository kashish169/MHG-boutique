import 'package:flutter/material.dart';
import 'package:mhg/features/search/view/widget/search_recent_button.dart';

import '../../../../constants/app_colors.dart';

class RecentSearchBody extends StatelessWidget {
  const RecentSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Searaches",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Clear History",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 12, color: AppColors.darkRed),
                  ))
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        const SizedBox(
          height: 10,
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
          height: 80,
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
