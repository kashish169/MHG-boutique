import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:mhg/features/about_us/model/about_us_model.dart';
import 'package:mhg/widgets/net_image.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key, required this.aboutUsModel});
  final AboutUsModel aboutUsModel;
  @override
  Widget build(BuildContext context) {
    return Html(
      data: aboutUsModel.englishdescriotion1 ?? '',
      style: {
        "body": Style(
            color: Colors.black,
            margin: Margins.symmetric(
              horizontal: 20,
            ))
      },
    );
  }
}
