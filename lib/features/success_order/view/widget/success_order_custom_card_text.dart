import 'package:flutter/material.dart';

class SuccessOrderCustomCardText extends StatelessWidget {
  const SuccessOrderCustomCardText(
      {super.key,
      required this.title,
      required this.subTitle,
      this.isFinalText = false});
  final String title;
  final String subTitle;
  final bool isFinalText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 12),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subTitle,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 11),
        ),
        SizedBox(
          height: isFinalText ? 0 : 20,
        ),
      ],
    );
  }
}
