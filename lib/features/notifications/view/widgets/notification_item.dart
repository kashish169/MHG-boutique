import 'package:flutter/material.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/core/helper/app_helper.dart';

import '../../models/notification_model.dart';

class NotificationItem extends StatelessWidget {
 final NotificationModel model;
  const NotificationItem({
    super.key, required this.model,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFDDDDDD),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: InkWell(
        
          onTap: (){},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(model.createdAt!=null)
            Align(
              alignment: Alignment.topRight,
              child: Text(AppHelper.difference(model.createdAt!),style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 10,
              color: AppColors.grey),),
            ),
              Row(
                children: [
                  FittedBox(
                    child: Text(model.title,style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: const Color(0xFF515C6F),
                    ),),
                  ),
                  const SizedBox(width: 5,),
                  Image.asset(AppAssets.alert,
                  height: 25,),


                ],
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(model.body,style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 14,
                  color: const Color(0xFF515C6F),
                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
