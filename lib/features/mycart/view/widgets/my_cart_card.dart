import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/counter_widget.dart';
import 'package:mhg/widgets/delete_icon_button.dart';

class MyCartCard extends StatelessWidget {
  const MyCartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: AppColors.shadow(0.1),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadiusDirectional.horizontal(
                  start: Radius.circular(8),
                ),
                child: Image.asset(
                  AppAssets.img1,
                  width: 120,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Syond (60ml)',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 16,
                            color: AppColors.mediumLabel,
                          ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Brand:',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 12,
                                color: AppColors.lightLabel,
                              ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Edge',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontSize: 12,
                                color: AppColors.mediumLabel,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Dhs. 396.00',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 14,
                                  color: AppColors.mediumLabel,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            'Dhs. 396.00',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  fontSize: 12,
                                  color: AppColors.lightLabel,
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(end: 10),
                          child: CounterWidget(
                            circleColor: AppColors.lightGray,
                            countColor: AppColors.mediumLabel,
                            buttonColor: AppColors.mediumLabel,
                            count: 1,
                            onChange: (value) {},
                            loading: false,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
        DeleteIconButton(
          onTap: () {},
        ),
      ],
    );
  }
}
