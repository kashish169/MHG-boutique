import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class SuccessOrderPaymentCard extends StatelessWidget {
  const SuccessOrderPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7, left: 10, right: 10),
      child: Material(
        borderRadius: BorderRadius.circular(4),
        elevation: 3,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Cash on Delivery Instractions',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 14),
                ),
              ),
              Divider(
                color: AppColors.lightGray,
                thickness: 1.1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, right: 10, left: 10, bottom: 10),
                child: Text(
                  'Cash on Delivery Instractions Cash on Delivery Instractions Cash on Delivery InstractionsCash on Delivery InstractionsCash on Delivery Instractions',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
