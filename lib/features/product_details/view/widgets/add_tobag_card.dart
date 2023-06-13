import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/divider_widget.dart';
import 'package:mhg/widgets/primary_button.dart';

class BagCard extends StatelessWidget {
  const BagCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0XFFF8F8F8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Neor (60ml)',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontSize: 22,
                color: AppColors.lGrey
              ),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Brand: ',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.lightLabel2, fontSize: 16, height: 1.7)),
                TextSpan(
                    text: 'Edge\n',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontSize: 16,
                      color: AppColors.lGrey,
                        )),
                TextSpan(
                    text: 'Dhs. 495.00',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.lightLabel2,

                        fontSize: 18,
                        decoration: TextDecoration.lineThrough)),
                const TextSpan(
                  text: '   ',
                ),
                TextSpan(
                    text: 'Dhs. 396.00',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 15
                    )),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            PrimaryButton(
              fontSize: 16,
              height: 42,
              title: 'Add to bag', onTap: () {  },
            width: double.infinity,),


          ],
        ),
      ),
    );
  }
}
