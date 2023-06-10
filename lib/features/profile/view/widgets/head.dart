import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';

class Head extends StatelessWidget {
  final String name;
  final String email;
  final String image;
  final String level;

  const Head(
      {Key? key,
      required this.name,
      required this.email,
      required this.image,
      required this.level})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 15
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    email,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 11
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 20,
              child: Image.asset(image),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Level',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 15
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  level,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 11
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
