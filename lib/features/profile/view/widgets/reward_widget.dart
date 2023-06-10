import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';

class RewardBox extends StatelessWidget {
  const RewardBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage(

              AppAssets.cardBackground,

            ),

          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(padding: const EdgeInsets.only(top: 12,bottom: 10,left: 12,right: 12),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Rewards Progress',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                 fontSize: 15,
                 color: AppColors.white
               ),),
               const SizedBox(height: 5,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Expanded(child: LinearPercentIndicator(
                     //leaner progress bar
                     // animation: true,
                     padding: EdgeInsets.all(0.0),
                     lineHeight: 12.0,
                     percent: .7,
                     barRadius: const Radius.circular(10),
                     progressColor: const Color(0XFF6E8674),
                     backgroundColor: Colors.grey[300],
                   ),),
                   const SizedBox(width: 5,),
                   Text('450/650 Pts',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                     fontSize: 11,
                     color: AppColors.white
                   ),)
                 ],
               ),
              Padding(padding: const EdgeInsets.symmetric(vertical: 5),
              child:  Text('250 Pts Until Gold Level',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 10,
                  color: AppColors.white
              ),),)
             ],
           ),),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child:   Text('Your Orders And Points',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 13,
                    color: AppColors.white
                ),)),
                const SizedBox(width: 20,),
                Text('20 Orders = 400 Pts',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontSize: 11,
                    color: AppColors.white
                ),),

              ],
            ),)
          ],
        ),
      ),
    );
  }
}
