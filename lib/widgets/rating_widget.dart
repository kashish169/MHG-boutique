import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget(
      {super.key, this.isEnableToRate = true, this.boxSize, this.starSize});
  final bool? isEnableToRate;
  final double? boxSize;
  final double? starSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxSize == null ? 30 : boxSize!,
      child: Center(
        child: RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          ignoreGestures: isEnableToRate! ? false : true,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: starSize == null ? 10 : starSize!,
          itemPadding: EdgeInsets.zero,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
            size: 10,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ),
    );
  }
}
