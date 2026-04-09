import 'package:flutter/material.dart';

class SuccessOrderCutomRow extends StatelessWidget {
  const SuccessOrderCutomRow({
    super.key,
    required this.title,
    required this.subTitle,
    this.isAED = false,
    this.isTotal = false,
  });
  final String title;
  final dynamic subTitle;
  final bool isAED;
  final bool isTotal;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 14),
        ),
        Text(isAED ? 'AED $subTitle' : '$subTitle',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: isTotal ? 16 : 14)),
      ],
    );
  }
}
