import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class CustomValueSelector extends StatelessWidget {
  const CustomValueSelector(
      {super.key,
      required this.textValue,
      required this.isSelectCountry,
      this.onChange,
      required this.selected,
      required this.groupValue,
      required this.image,
      this.imageAsset = false});
  final String textValue;
  final bool isSelectCountry;
  final String selected;
  final String groupValue;
  final String image;
  final bool imageAsset;
  final void Function(String?)? onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isSelectCountry == false
            ? Divider(
                color: AppColors.grey,
              )
            : const SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 60,
                width: 40,
                decoration: BoxDecoration(
                    image: imageAsset
                        ? DecorationImage(
                            image: AssetImage(
                            image,
                          ))
                        : DecorationImage(
                            image: CachedNetworkImageProvider(
                            image,
                          )),
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.grey))),
            SizedBox(
              width: 180,
              child: Center(
                child: Text(
                  textValue,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Transform.scale(
              scale: 1.5,
              child: Radio(
                  value: selected, groupValue: groupValue, onChanged: onChange),
            )
          ],
        )
      ],
    );
  }
}
