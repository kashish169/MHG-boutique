import 'package:flutter/material.dart';

import '../../model/shipning_model.dart';

class SuccessOrderCustomShipning extends StatelessWidget {
  const SuccessOrderCustomShipning(
      {super.key,
      required this.title,
      required this.shipningModel,
      this.isFinalText = false});
  final String title;
  final ShippingModel shipningModel;
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
          shipningModel.name,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 11),
        ),
        Text(
          shipningModel.email,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 11),
        ),
        Text(
          shipningModel.street,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 11),
        ),
        Text(
          shipningModel.state,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 11),
        ),
        Text(
          shipningModel.zipcode,
          style:
              Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 11),
        ),
        Text(
          shipningModel.country,
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
