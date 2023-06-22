import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: 10,
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
    );
  }
}
