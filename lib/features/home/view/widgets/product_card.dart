import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset(
            AppAssets.img1,
            fit: BoxFit.cover,
            height: 180,
          ),
          Text(
            'Shay Much Perfume',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Dhs. 332.00',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
              ),
              Expanded(
                child: Text(
                  'Dhs. 330.00',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
