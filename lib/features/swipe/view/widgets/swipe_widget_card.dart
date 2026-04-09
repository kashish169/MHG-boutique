import 'package:flutter/material.dart';
import 'package:mhg/constants/app_colors.dart';
import 'package:mhg/features/home/models/product_model.dart';

import '../../../../constants/app_assets.dart';

class SwipeWidgetCard extends StatelessWidget {
  const SwipeWidgetCard(
      {super.key,
      required this.productModel,
      required this.onLikeFun,
      required this.onNopeFun});
  final ProductModel productModel;
  final Function() onLikeFun;
  final Function() onNopeFun;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(productModel.primaryImage!),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20)),
          margin:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.transparent, AppColors.primary],
                    stops: const [0.6, 0.8],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.circular(20)),
            margin:
                const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: Text(
                    productModel.enProductName,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 19),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
                  child: Text(
                    '${productModel.price} AED',
                    textAlign: TextAlign.start,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
                //   child: Html(
                //     data: productModel.enDescription,
                //     style: {
                //       "body": Style(color: Colors.black, fontSize: FontSize(18))
                //     },
                //   ),
                // ),
                const Padding(padding: EdgeInsets.only(top: 18)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleButton(
                      backgroundColor: const Color(0XFF380e1a),
                      colorIcon: const Color(0XFFdd3a65),
                      iconPath: AppAssets.deniedIcon,
                      onPressed: onNopeFun,
                    ),
                    const Padding(padding: EdgeInsets.only(right: 26)),
                    CircleButton(
                      backgroundColor: const Color(0XFF0a2725),
                      colorIcon: const Color(0XFF11b297),
                      iconPath: AppAssets.loveIcon,
                      onPressed: onLikeFun,
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 12))
              ],
            ))
      ],
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton(
      {super.key,
      required this.backgroundColor,
      required this.colorIcon,
      required this.iconPath,
      required this.onPressed});
  final Color backgroundColor;
  final Color colorIcon;
  final String iconPath;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(shadowColor: MaterialStateProperty.all(Colors.white)),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: colorIcon,
        child: CircleAvatar(
            radius: 28,
            backgroundColor: backgroundColor,
            child: Image(
              image: AssetImage(iconPath),
              height: 25,
            )),
      ),
    );
  }
}
