import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import '../model/rewards_tiers_model.dart';

class LevelCard extends StatelessWidget {
  final TiersModel model;
  const LevelCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      color: model.color,
      child: Row(
        children: [
          Image.asset(
            model.image,
            height: 60,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: model.textColor,
                      ),
                ),
                Text(
                  model.description,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: model.textColor,
                      ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: model.isLocked,
            child: Image.asset(
              AppAssets.locked,
              height: 32,
            ),
          ),
        ],
      ),
    );
  }
}
