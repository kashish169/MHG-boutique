import 'package:flutter/material.dart';
import 'package:mhg/features/home/view/widgets/home_brand_card.dart';

class HomeExploreOurBrandsWidget extends StatelessWidget {
  const HomeExploreOurBrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 8,
          ),
          child: Text(
            'Explore Our Brands',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.separated(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 10,
            ),
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return HomeBrandCard();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
          ),
        )
      ],
    );
  }
}
