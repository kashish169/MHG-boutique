import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';

class TopBodyHeader extends StatelessWidget {
  const TopBodyHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 6,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 13, color: AppColors.darkGrey),
              ),
            ),
            const Expanded(flex: 1, child: SizedBox())
          ],
        ),
        const SizedBox(
          height: 9,
        ),
      ],
    );
  }
}
