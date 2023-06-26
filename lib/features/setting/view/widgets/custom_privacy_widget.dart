import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../constants/app_colors.dart';

class CustomPrivacyWidget extends StatelessWidget {
  const CustomPrivacyWidget(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Html(
              data: title,
              style: {
                "body": Style(
                    color: Colors.black,
                    margin: Margins.symmetric(
                      horizontal: 20,
                    ))
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Html(
              data: subTitle,
              style: {
                "body": Style(
                    color: Colors.black,
                    margin: Margins.symmetric(
                      horizontal: 20,
                    ))
              },
            ),
          ],
        ),
      ),
    );
  }
}
