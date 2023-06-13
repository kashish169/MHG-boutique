import 'package:flutter/material.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/widgets/divider_widget.dart';
class DetailsCard extends StatelessWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all( 5),
            child: Text('Product Details',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(fontSize: 16,
              color: AppColors.lGrey),),
          ),
          const SizedBox(height: 5,),
          const DividerWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Scent: ',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.lightLabel2, fontSize: 14, height: 1.7)),
                TextSpan(
                    text: 'Floriental\n',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 14,
                      color: AppColors.lGrey,
                    )),
                TextSpan(
                    text: 'Fragrance Note: ',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.lightLabel2, fontSize: 14, height: 1.7)),
                TextSpan(
                    text: 'Solar Note,Elder Flower\n',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppColors.lGrey,
                      fontSize: 14,
                    )),
                TextSpan(
                    text: 'Key Details: ',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.lightLabel2, fontSize: 14, height: 1.7)),
                TextSpan(
                    text: 'Perfume, 60ml,by Edge\n',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 14,
                      color: AppColors.lGrey,
                    )),

              ]),
            ),
          ),
          // const SizedBox(height: 5,),
          const DividerWidget(),
        ],
      ),
    );
  }
}
