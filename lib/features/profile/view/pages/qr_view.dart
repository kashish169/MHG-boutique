import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhg/constants/app_assets.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/constants/app_dimensions.dart';
import 'package:mhg/features/profile/controller/profileController.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRPage extends StatefulWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  @override
  Widget build(BuildContext context) {
    final controller =Get.find<ProfileController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.primary,
        title: Text('Scan Your Qr',
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: AppColors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AppAssets.cardBackground1),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Text(
                        'Hello,${controller.model.name}',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: AppColors.white, fontSize: 15),
                      ),
                      const Expanded(child: SizedBox()),
                      Text(
                        'Your Total Points \n  400 Pts ',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(color: AppColors.white, fontSize: 12),
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(height: AppDimensions.screenHeight(context)/15,),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Image.asset(AppAssets.star,
          height: 150,),),
          Expanded(flex: 5,
              child: Container(
                width: double.infinity,
                margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 10) ,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(

                  border: Border.all(color: AppColors.primary,
                  )
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    const SizedBox(height: 15,),
                    Text('Scan to collect Points',style: Theme.of(context).textTheme.displaySmall,),
                    const SizedBox(height: 5,),
                    InkWell(onTap: (){},

                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: AppColors.primary),

                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                          child:  Text('Collect 50 Pts per 10 Dhs',style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontSize: 12
                          ),),
                        )),
                    Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: SizedBox(
                      height: 130,
                      child: Image.network(controller.model.qrLink)
                    ),)
                  ],
                ) ,
              )),
          const Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
