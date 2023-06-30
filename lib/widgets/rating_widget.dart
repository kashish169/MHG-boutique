import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    this.isEnableToRate = true,
    this.boxSize,
    this.starSize,
    this.onRatingUpdate,
    this.initialRating,
  });
  final double? initialRating;
  final bool? isEnableToRate;
  final double? boxSize;
  final double? starSize;
  final Function(double)? onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxSize == null ? 30 : boxSize!,
      child: Center(
        child: RatingBar.builder(
          initialRating: initialRating ?? 3,
          minRating: 1,
          ignoreGestures: isEnableToRate! ? false : true,
          direction: Axis.horizontal,
          allowHalfRating: false,
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
            onRatingUpdate!(rating);
          },
        ),
      ),
    );
  }
}
